//
//  AppDelegate.m
//  1_9_ViewController
//
//  Created by X on 08/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()
@property (nonatomic, strong) UIViewController *viewController;
@end

@implementation AppDelegate


- (BOOL)          application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.viewController = [[UIViewController alloc] initWithNibName:nil
                                                             bundle:nil];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    
    self.window.rootViewController = self.viewController;
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self.window makeKeyAndVisible];
    return YES;


}

@end
