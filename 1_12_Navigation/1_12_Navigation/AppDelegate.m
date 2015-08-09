//
//  AppDelegate.m
//  1_12_Navigation
//
//  Created by X on 10/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"

@interface AppDelegate ()
@property (nonatomic, strong) UINavigationController *navigationController;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    FirstViewController *viewController = [[FirstViewController alloc]
                                           initWithNibName:nil
                                           bundle:nil];
    
    self.navigationController = [[UINavigationController alloc]
                                 initWithRootViewController:viewController];
    
    self.window = [[UIWindow alloc]
                   initWithFrame:[[UIScreen mainScreen] bounds]];

    self.window.rootViewController = self.navigationController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
