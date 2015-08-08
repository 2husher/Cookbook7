//
//  ViewController.m
//  1_5_DatePicker
//
//  Created by X on 08/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.myDatePicker = [[UIDatePicker alloc] init];
    self.myDatePicker.center = self.view.center;
    //self.myDatePicker.datePickerMode = UIDatePickerModeDate;
    self.myDatePicker.datePickerMode = UIDatePickerModeCountDownTimer;
    [self.view addSubview:self.myDatePicker];
    
//    NSDate *currentDate = self.myDatePicker.date;
//    NSLog(@"Current date is %@", currentDate);

//    [self.myDatePicker addTarget:self
//                          action:@selector(datePickerDateChanged:)
//                forControlEvents:UIControlEventValueChanged];
    
//    NSTimeInterval oneYearTime = 365 * 24 * 60 * 60;
//    NSDate *todayDate = [NSDate date];
//    NSDate *oneYearFromToday = [todayDate dateByAddingTimeInterval:oneYearTime];
//    NSDate *twoYearsFromToday = [todayDate dateByAddingTimeInterval:2 * oneYearTime];
//    
//    self.myDatePicker.minimumDate = oneYearFromToday;
//    self.myDatePicker.maximumDate = twoYearsFromToday;
    NSTimeInterval twoMinutes = 2 * 60;
    [self.myDatePicker setCountDownDuration: twoMinutes];
}

- (void) datePickerDateChanged:(UIDatePicker *)paramDatePicker
{
    if ([paramDatePicker isEqual: self.myDatePicker]) {
        NSLog(@"Selected date is %@", self.myDatePicker.date);
    }
}

@end
