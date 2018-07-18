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
    NSString *message = @"We don't know how to do this yet";
    NSString *details = @"Sorry, we can't change this position of the box until we've learned about frames.";
    
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle: @"Accept"];
    [alert addButtonWithTitle: @"Cancel"];
    [alert setMessageText: message];
    [alert setInformativeText: details];
    [alert setAlertStyle: NSAlertStyleCritical];
    [alert beginSheetModalForWindow:self.window modalDelegate:self didEndSelector:@selector(alertDidEnd:returnCode:contextInfo:) contextInfo:nil];
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
