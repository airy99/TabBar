//
//  LSTabBarController.m
//  TabBar
//
//  Created by Airy on 16/4/12.
//  Copyright © 2016年 Airy. All rights reserved.
//

#import "LSTabBarController.h"
#import "AAViewController.h"
#import "BBViewController.h"
#import "CCViewController.h"
#import "DDViewController.h"
#import "LSNavigationController.h"
#import "LSTabBar.h"

@interface LSTabBarController ()

@property (nonatomic, strong) LSTabBar *tabbar;

@end

@implementation LSTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    [self setTabBar];
    [self addChildVC];
    
    [self addObserver:self
           forKeyPath:@"selectedIndex"
              options:NSKeyValueObservingOptionNew
              context:nil];
}

- (void)dealloc
{
    [self removeObserver:self forKeyPath:@"selectedIndex"];
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    _tabbar.selectedIndex = self.selectedIndex;
}

- (void)setTabBar
{
    _tabbar = [[LSTabBar alloc] init];
    [self setValue:_tabbar forKey:@"tabBar"];
    
    __weak __typeof(self) weakSelf = self;
    [_tabbar setTabBarClicked:^(NSUInteger from, NSUInteger to) {
        __strong __typeof(weakSelf) strongSelf = weakSelf;
        strongSelf.selectedIndex = to;
    }];
}

- (void)addChildVC
{
    [self addVCWithvc:[[AAViewController alloc] init]
                title:@"首页"
                image:@"tab_home_normal"
        selectedImage:@"tab_home_selected"
           badgeValue:@"0"];
    
    [self addVCWithvc:[[BBViewController alloc] init]
                title:@"分类"
                image:@"tab_category_normal"
        selectedImage:@"tab_category_selected"
           badgeValue:@"0"];
    
    [self addVCWithvc:[[CCViewController alloc] init]
                title:@"购物车"
                image:@"tab_shoppingcart_normal"
        selectedImage:@"tab_shoppingcart_selected"
           badgeValue:@""];
    
    
    [self addVCWithvc:[[DDViewController alloc] init]
                title:@"我的"
                image:@"tab_my_normal"
        selectedImage:@"tab_my_selected"
           badgeValue:@"10"];
}

- (void)addVCWithvc:(UIViewController *)vc
              title:(NSString *)title
              image:(NSString *)image
      selectedImage:(NSString *)selectedImage
         badgeValue:(NSString *)badgeValue
{
    LSNavigationController *navigationController = [[LSNavigationController alloc] initWithRootViewController:vc];
    
    navigationController.tabBarItem.title = title;
    navigationController.tabBarItem.image = [UIImage imageNamed:image];
    UIImage *selected = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    navigationController.tabBarItem.selectedImage = selected;
    
    [self addChildViewController:navigationController];
    
    [_tabbar addTabBarButtonWithItem:navigationController.tabBarItem];
    navigationController.tabBarItem.badgeValue = badgeValue;
}

@end
