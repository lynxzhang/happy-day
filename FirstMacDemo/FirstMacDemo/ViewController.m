//
//  ViewController.m
//  FirstMacDemo
//
//  Created by zhangxiang on 16/3/25.
//  Copyright © 2016年 zhangxiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *_dataSource;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];

    NSRect rect = NSRectFromCGRect(CGRectMake(0, 0, 400, 20));
    NSTableHeaderView *view = [[NSTableHeaderView alloc] initWithFrame:rect];
    NSTextField *textFeild = [[NSTextField alloc] initWithFrame:rect];
    textFeild.placeholderString = @"这是一个测试";
    [view addSubview:textFeild];
    self.tableView.headerView = view;
    
     _dataSource = @[@"mgen", @"mike", @"123四五六",@"嘻嘻",@"mgen", @"mike", @"123四五六",@"嘻嘻"];

    // Do view setup here.
}
- (IBAction)click:(NSButton *)sender {
    NSLog(@"xixi");
}

#pragma NSTableView delegate 
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return _dataSource.count;
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row;
{
    return [_dataSource objectAtIndex:row];
}

- (BOOL)tableView:(NSTableView *)tableView shouldEditTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    return NO;
}

- (BOOL)selectionShouldChangeInTableView:(NSTableView *)tableView{
    return YES;
}
@end
