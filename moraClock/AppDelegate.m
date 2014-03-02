//
//  AppDelegate.m
//  moraClock
//
//  Created by 桂 宏行 on 2013/08/25.
//  Copyright (c) 2013年 桂 宏行. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    // 常に最前面に持ってくる
    [_window setLevel:NSFloatingWindowLevel];
    [_window setCollectionBehavior:NSWindowCollectionBehaviorCanJoinAllSpaces];
    [self setTime];
    [NSTimer scheduledTimerWithTimeInterval:1.0f
                                     target:self
                                   selector:@selector(update:)
                                   userInfo:nil
                                    repeats:YES
     ];
    
}

// ウィンドウを閉じるときに、アプリケーションも終了
-(void)windowWillClose:(NSNotification *)aNotification {
    [NSApp terminate:self];
}

- (void)update:(NSTimer *) timer
{
    [self setTime];
}

- (void)setTime
{
    NSDate *now = [NSDate date];
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    int flags = NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit|NSWeekdayCalendarUnit
    |NSHourCalendarUnit|NSMinuteCalendarUnit|NSSecondCalendarUnit;
    NSDateComponents *comp = [gregorian components:flags fromDate:now];
    
    NSString *str = [NSString stringWithFormat:@"%02ld:%02ld:%02ld", (long)[comp hour], (long)[comp minute], (long)[comp second], nil];
    [timeField setStringValue:str];
}


@end
