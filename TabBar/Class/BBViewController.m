//
//  BBViewController.m
//  TabBar
//
//  Created by Airy on 16/4/12.
//  Copyright © 2016年 Airy. All rights reserved.
//

#import "BBViewController.h"
#import "CCViewController.h"

@interface BBViewController ()

@end

@implementation BBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.title = @"bb";
    self.view.backgroundColor = [UIColor cyanColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CCViewController *vc = [[CCViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
