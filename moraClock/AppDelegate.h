//
//  AppDelegate.h
//  moraClock
//
//  Created by じんの on 2013/08/25.
//  Copyright (c) 2013年 じんの. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    IBOutlet NSTextField *timeField;
}

@property (assign) IBOutlet NSWindow *window;

@end
