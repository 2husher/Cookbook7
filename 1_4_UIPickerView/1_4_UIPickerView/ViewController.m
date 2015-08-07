//
//  ViewController.m
//  1_4_UIPickerView
//
//  Created by X on 07/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.myPicker = [[UIPickerView alloc] init];
    self.myPicker.dataSource = self;
    self.myPicker.delegate = self;
    self.myPicker.center = self.view.center;
    [self.view addSubview:self.myPicker];
}


// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    if ([pickerView isEqual:self.myPicker]) {
        return 1;
    }
    
    return 0;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    if ([pickerView isEqual:self.myPicker]) {
        return 10;
    }
    
    return 0;
}

-(NSString *)pickerView:(UIPickerView *)pickerView
            titleForRow:(NSInteger)row
           forComponent:(NSInteger)component
{
    if ([pickerView isEqual:self.myPicker]) {
        return [NSString stringWithFormat:@"Row %li", row + 1];
    }
    
    return nil;
}

@end
