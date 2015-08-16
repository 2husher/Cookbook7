//
//  AppDelegate.m
//  4_1_tableViewWithData
//
//  Created by X on 16/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)          application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc]
                   initWithFrame:[[UIScreen mainScreen] bounds]];
    self.viewController = [[ViewController alloc]
                           initWithNibName: nil
                           bundle:nil];
    self.window.rootViewController = self.viewController;

    self.window.backgroundColor = [UIColor redColor];

    [self.window makeKeyAndVisible];
    return YES;
}

@end