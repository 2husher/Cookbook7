//
//  AppDelegate.m
//  Core Data
//
//  Created by X on 28/11/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "Person.h"

@implementation AppDelegate

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

- (BOOL)          application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc]
                   initWithFrame:[[UIScreen mainScreen] bounds]];

//    [self createNewPersonWithFirstName:@"Tony"
//                              lastName:@"Stark"
//                                   age:40];
//
//    [self createNewPersonWithFirstName:@"Clark"
//                              lastName:@"Kent"
//                                   age:20];

    [self readingPersons];

    [self deletingLastPerson];

    self.viewController = [[ViewController alloc]
                           initWithNibName:nil
                           bundle:nil];
    self.window.rootViewController = self.viewController;

    [self.window makeKeyAndVisible];
    return YES;
}

- (BOOL)createNewPersonWithFirstName:(NSString *)firstName
                            lastName:(NSString *)lastName
                                 age:(NSUInteger)age
{
    BOOL result = NO;

    if (firstName.length == 0 ||
        lastName.length  == 0)
    {
        NSLog(@"First and last names are mandatory");
        return NO;
    }

    Person *newPerson = [NSEntityDescription
                         insertNewObjectForEntityForName:@"Person"
                         inManagedObjectContext:self.managedObjectContext];

    if (newPerson)
    {
        newPerson.firstName = firstName;
        newPerson.lastName  = lastName;
        newPerson.age       = @(age);

        NSError *error = nil;

        if ([self.managedObjectContext save:&error])
        {
            NSLog(@"Successfully saved the context");
            return YES;
        }
        else
        {
            NSLog(@"Failed to save the context. Error: %@", error);
        }
    }
    else
    {
        NSLog(@"Failed to create a new person");
    }

    return result;
}

- (void)readingPersons
{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]
                                    initWithEntityName:@"Person"];
    NSError *requestError = nil;

    NSArray *persons =
    [self.managedObjectContext executeFetchRequest:fetchRequest
                                             error:&requestError];

    if ([persons count] > 0)
    {
        NSUInteger counter = 1;
        for (Person *person in persons)
        {
            NSLog(@"Person %lu First name: %@",
                  (unsigned long)counter,
                  person.firstName);

            NSLog(@"Person %lu Last name: %@",
                  (unsigned long)counter,
                  person.lastName);

            NSLog(@"Person %lu Age: %ld",
                  (unsigned long)counter,
                  [person.age unsignedIntegerValue]);

            counter++;
        }
    }
    else
    {
        NSLog(@"Could not find Person entities in the context");
    }
}

- (void)deletingLastPerson
{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]
                                    initWithEntityName:@"Person"];
    NSError *requestError = nil;

    NSArray *persons =
    [self.managedObjectContext executeFetchRequest:fetchRequest
                                             error:&requestError];

    if ([persons count] > 0)
    {
        Person *lastPerson = [persons lastObject];

        [self.managedObjectContext deleteObject:lastPerson];

        if ([lastPerson isDeleted])
        {
            NSLog(@"Successfully deleted the last person");

            NSError *savingError = nil;
            if ([self.managedObjectContext save:&savingError])
            {
                NSLog(@"Successfully saved the context");
            }
            else
            {
                NSLog(@"Failed to save the context. Error: %@", savingError);
            }
        }
        else
        {
            NSLog(@"Failed to delete the last person");
        }
    }
    else
    {
        NSLog(@"Could not find Person entities in the context");
    }
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}

#pragma mark - Core Data stack

- (NSURL *)applicationDocumentsDirectory {
    // The directory the application uses to store the Core Data store file. This code uses a directory named "alex.izotov.Core_Data" in the application's documents directory.
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSManagedObjectModel *)managedObjectModel {
    // The managed object model for the application. It is a fatal error for the application not to be able to find and load its model.
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Core_Data" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    // The persistent store coordinator for the application. This implementation creates and return a coordinator, having added the store for the application to it.
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    // Create the coordinator and store
    
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"Core_Data.sqlite"];
    NSError *error = nil;
    NSString *failureReason = @"There was an error creating or loading the application's saved data.";
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        // Report any error we got.
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSLocalizedDescriptionKey] = @"Failed to initialize the application's saved data";
        dict[NSLocalizedFailureReasonErrorKey] = failureReason;
        dict[NSUnderlyingErrorKey] = error;
        error = [NSError errorWithDomain:@"YOUR_ERROR_DOMAIN" code:9999 userInfo:dict];
        // Replace this with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    return _persistentStoreCoordinator;
}


- (NSManagedObjectContext *)managedObjectContext {
    // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.)
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (!coordinator) {
        return nil;
    }
    _managedObjectContext = [[NSManagedObjectContext alloc] init];
    [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    return _managedObjectContext;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        NSError *error = nil;
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}

@end
