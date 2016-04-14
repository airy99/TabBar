//
//  DDViewController.m
//  TabBar
//
//  Created by Airy on 16/4/13.
//  Copyright © 2016年 Airy. All rights reserved.
//

#import "DDViewController.h"
#import "AAViewController.h"

@interface DDViewController ()

@end

@implementation DDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"dd";
    self.view.backgroundColor = [UIColor magentaColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    AAViewController *vc = [[AAViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
