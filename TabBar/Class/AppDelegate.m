//
//  AppDelegate.m
//  TabBar
//
//  Created by Airy on 16/4/12.
//  Copyright © 2016年 Airy. All rights reserved.
//

#import "AppDelegate.h"
#import "LSTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    application.statusBarStyle = UIStatusBarStyleLightContent;
    [application setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    [self setRootVc];
    
    return YES;
}

- (void)setRootVc
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    LSTabBarController *vc = [sb instantiateViewControllerWithIdentifier:NSStringFromClass([LSTabBarController class])];
    self.window.rootViewController = vc;
}

@end
