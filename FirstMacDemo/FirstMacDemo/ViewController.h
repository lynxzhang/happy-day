//
//  ViewController.h
//  FirstMacDemo
//
//  Created by zhangxiang on 16/3/25.
//  Copyright © 2016年 zhangxiang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSTableViewDelegate,NSTableViewDataSource>

@property (strong) IBOutlet NSTableView *tableView;


@end
