//
//  AppDelegate.m
//  FirstApp
//
//  Created by X on 05/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)            application:(UIApplication *)application
  didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    Person *person = [[Person alloc] init];
    
    person.firstName = @"Steve";
    person.lastName  = @"Jobs";
    
    NSLog(@"%@", person.firstName);
    
    
    self.window = [[UIWindow alloc]
                   initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor redColor];
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
