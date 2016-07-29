//
//  AppDelegate.h
//  FirstMacDemo
//
//  Created by zhangxiang on 16/3/24.
//  Copyright © 2016年 zhangxiang. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ViewController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property(nonatomic,strong) ViewController *vc;
@property(nonatomic,strong) NSWindow *window;
@end

