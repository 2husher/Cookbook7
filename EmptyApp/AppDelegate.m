//
//  AppDelegate.m
//  EmptyApp
//
//  Created by X on 05/08/15.
//
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
    
    
    
    return YES;
}

@end
