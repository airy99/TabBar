//
//  CCViewController.m
//  TabBar
//
//  Created by Airy on 16/4/12.
//  Copyright © 2016年 Airy. All rights reserved.
//

#import "CCViewController.h"
#import "DDViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"cc";
    self.view.backgroundColor = [UIColor purpleColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"ttt" style:0 target:self action:@selector(rightBarButtonItemClicked)];
}

- (void)rightBarButtonItemClicked
{
    UINavigationController *nav = self.navigationController.tabBarController.viewControllers[2];
    nav.tabBarItem.badgeValue = @"12";
    self.tabBarController.selectedIndex = 1;
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    DDViewController *vc = [[DDViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
