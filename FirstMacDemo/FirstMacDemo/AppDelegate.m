//
//  AppDelegate.m
//  FirstMacDemo
//
//  Created by zhangxiang on 16/3/24.
//  Copyright © 2016年 zhangxiang. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize vc = _vc;
@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSRect frame = NSMakeRect(100, 100, 400, 400);
    NSRect rect = [NSWindow contentRectForFrameRect:frame styleMask:NSBorderlessWindowMask];
    _window = [[NSWindow alloc] initWithContentRect:rect styleMask:NSBorderlessWindowMask backing:NSBackingStoreRetained defer:false];
    _window.title = @"哈哈";
    
    _vc =[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    _vc.view.frame = [(NSView *)_window.contentView bounds];
    [_window.contentView addSubview:_vc.view];
    
    [_window makeKeyAndOrderFront:self];

}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
