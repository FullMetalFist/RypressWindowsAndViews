//
//  AppDelegate.m
//  WindowsAndViewsExample
//
//  Created by Michael Vilabrera on 7/15/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

#import "AppDelegate.h"
#import "PositionWindowController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@end

@implementation AppDelegate {
    PositionWindowController *_positionWindowController;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
}

- (IBAction)changePosition:(id)sender
{
    if (_positionWindowController == nil) {
        _positionWindowController = [[PositionWindowController alloc] init];
    }
    
    [NSApp beginSheet:_positionWindowController
       modalForWindow:self.window
        modalDelegate:self
       didEndSelector:@selector(sheetDidEnd:returnCode:contextInfo:)
          contextInfo:nil];
}

- (void)sheetDidEnd:(NSWindow *)sheet returnCode:(NSInteger)returnCode contextInfo:(void *)contextInfo {
    PositionWindowController *controller = (PositionWindowController *)sheet.windowController;
    
    if (controller.status == NewPositionAccepted)
    {
        NSLog(@"Moving box to: (%li, %li)", controller.xPosition, controller.yPosition);
    } else if (controller.status == NewPositionCanceled) {
        NSLog(@"Not moving box");
    }
    
    [sheet orderOut:self];
}

@end
