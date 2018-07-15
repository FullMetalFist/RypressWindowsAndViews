//
//  AppDelegate.h
//  WindowsAndViewsExample
//
//  Created by Michael Vilabrera on 7/15/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSBox *box;

- (IBAction)changePosition:(id)sender;

@end

