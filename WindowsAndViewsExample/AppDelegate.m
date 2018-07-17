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
    
    NSWindow *window = _positionWindowController.window;
    
    if ([window isVisible])
    {
        [window close];
    } else {
        [window makeKeyAndOrderFront:self];
    }
}

- (void)alertDidEnd:(NSAlert *)alert returnCode:(NSInteger)returnCode contextInfo:(void *)contextInfo {
    if (returnCode == NSAlertFirstButtonReturn) {
        // "Save Anyway" button
        NSLog(@"Accepted");
    } else if (returnCode == NSAlertSecondButtonReturn) {
        // "Cancel"
        NSLog(@"Cancelled");
    }
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
