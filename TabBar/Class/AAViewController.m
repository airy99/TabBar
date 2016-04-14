//
//  AAViewController.m
//  TabBar
//
//  Created by Airy on 16/4/12.
//  Copyright © 2016年 Airy. All rights reserved.
//

#import "AAViewController.h"
#import "BBViewController.h"

@interface AAViewController ()

@end

@implementation AAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"aa";
    
    self.view.backgroundColor = [UIColor grayColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"ttt" style:0 target:self action:@selector(rightBarButtonItemClicked)];
}

- (void)rightBarButtonItemClicked
{
    UINavigationController *nav = self.navigationController.tabBarController.viewControllers[1];
    nav.tabBarItem.badgeValue = @"100";
    self.tabBarController.selectedIndex = 0;
    [self.navigationController popToRootViewControllerAnimated:YES];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    BBViewController *vc = [[BBViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
