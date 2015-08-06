//
//  ViewController.m
//  1_1_Alert
//
//  Created by X on 06/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear: animated];

    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Password"
                              message:@"Please enter your credentials"
                              delegate:self
                              cancelButtonTitle:@"Cancel"
                              otherButtonTitles:@"Ok", nil];
    
    [alertView setAlertViewStyle: UIAlertViewStyleLoginAndPasswordInput];
    
    [alertView show];
}

//- (void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear: animated];
//    
//    UIAlertView *alertView = [[UIAlertView alloc]
//                              initWithTitle: @"Password"
//                              message: @"Enter your password"
//                              delegate:self
//                              cancelButtonTitle:@"Cancel"
//                              otherButtonTitles:@"Ok", nil];
//    
//    [alertView setAlertViewStyle: UIAlertViewStyleSecureTextInput];
//    
//    [alertView show];
//}

//-(void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear: animated];
//    
//    UIAlertView *alertView = [[UIAlertView alloc]
//                              initWithTitle: @"Credit card number"
//                              message: @"Please enter your credit card number"
//                              delegate: self
//                              cancelButtonTitle: @"Cancel"
//                              otherButtonTitles: @"Yes", nil];
//    [alertView setAlertViewStyle: UIAlertViewStylePlainTextInput];
//    
//    UITextField *textField = [alertView textFieldAtIndex: 0];
//    textField.keyboardType = UIKeyboardTypeNumberPad;
//    
//    [alertView show];
//}

//- (void)viewDidAppear:(BOOL)paramAnimated
//{
//    [super viewDidAppear:paramAnimated];
//    
//    self.view.backgroundColor = [UIColor redColor];
//    NSString *message = @"Are you sure you want to open this link in Safari?";
//    
//    UIAlertView *alertView = [[UIAlertView alloc]
//                              initWithTitle:@"Open link"
//                                    message:message
//                                   delegate:self
//                          cancelButtonTitle:[self noButtonTitle]
//                          otherButtonTitles:[self yesButtonTitle], nil];
//    [alertView show];
//}
//
//-    (void)alertView:(UIAlertView *)alertView
//clickedButtonAtIndex:(NSInteger)buttonIndex
//{
//    NSString *buttonTitle = [alertView buttonTitleAtIndex: buttonIndex];
//    
//    if ([buttonTitle isEqualToString: [self yesButtonTitle]]) {
//        NSLog(@"Yes button clicked");
//    }
//    else if ([buttonTitle isEqualToString: [self noButtonTitle]])
//    {
//        NSLog(@"No button clicked");
//    }
//}
//
//- (NSString *) yesButtonTitle
//{
//    return @"Yes";
//}
//
//- (NSString *) noButtonTitle
//{
//    return @"No";
//}

@end
