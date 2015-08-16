//
//  ViewController.m
//  4_0_TableView
//
//  Created by X on 16/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView = [[UITableView alloc]
                      initWithFrame:self.view.bounds
                      style:UITableViewStylePlain];

    self.tableView.delegate = self;

    [self.view addSubview:self.tableView];
}

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([tableView isEqual:self.tableView]) {
        return 200.0f;
    }
    return 100.0f;
}

@end
