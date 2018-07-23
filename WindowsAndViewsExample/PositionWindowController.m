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

- (void)windowDidLoad {
    [super windowDidLoad];
}

- (IBAction)reposition:(id)sender {
    self.status = NewPositionAccepted;
    self.xPosition = [self.xPositionTextField integerValue];
    self.yPosition = [self.yPositionTextField integerValue];
    
    [NSApp endSheet:[self window]];
}

- (IBAction)cancel:(id)sender {
    self.status = NewPositionCanceled;
    
    [NSApp endSheet:[self window]];
}

@end
