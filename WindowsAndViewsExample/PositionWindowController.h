//
//  PositionWindowController.h
//  WindowsAndViewsExample
//
//  Created by Michael Vilabrera on 7/15/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

#import <Cocoa/Cocoa.h>

typedef enum {
    NewPositionAccepted,
    NewPositionCanceled,
} NewPositionStatus;

@interface PositionWindowController : NSWindowController <NSWindowDelegate>

@property (weak) IBOutlet NSTextField *xPositionTextField;
@property (weak) IBOutlet NSTextField *yPositionTextField;

@property (nonatomic) NSInteger xPosition;
@property (nonatomic) NSInteger yPosition;
@property (nonatomic) NewPositionStatus status;

- (IBAction)reposition:(id)sender;
- (IBAction)cancel:(id)sender;

@end
