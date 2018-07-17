//
//  PositionWindowController.m
//  WindowsAndViewsExample
//
//  Created by Michael Vilabrera on 7/15/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

#import "PositionWindowController.h"

@interface PositionWindowController ()

@end

@implementation PositionWindowController

- (id)init {
    self = [super initWithWindowNibName:@"PositionWindow" owner:self];
    
    if (self) {
        
    }
    return self;
}

- (void)windowWillClose:(NSNotification *)notification
{
    NSLog(@"About to close!");
}

@end
