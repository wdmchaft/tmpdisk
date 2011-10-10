//
//  TmpDiskStatusBarListener.m
//  TmpDisk
//
//  Created by Timothy Marks on 10/10/11.
//  Copyright (c) 2011 Ink Scribbles Pty Ltd.
//
//  This file is part of TmpDisk.
// 
//  TmpDisk is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
// 
//  TmpDisk is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
// 
//  You should have received a copy of the GNU General Public License
//  along with TmpDisk.  If not, see <http://www.gnu.org/licenses/>.

#import "TmpDiskStatusBarListener.h"

@implementation TmpDiskStatusBarListener


- (IBAction)newTmpDisk:(id)sender {
    
    if ([ntdwc window] == nil) {
        [ntdwc release];
        
        ntdwc = [[NSWindowController alloc] initWithWindowNibName:@"NewTmpDisk"];
        
        
    }
    
    [[ntdwc window] makeKeyAndOrderFront:nil];
    [NSApp activateIgnoringOtherApps:YES];
    
}

- (IBAction)quit:(id)sender {
    
    [NSApp terminate:nil];
    
}

- (IBAction)about:(id)sender {
    
    NSAlert *a = [NSAlert alertWithMessageText:@"About TmpDisk" defaultButton:@"OK" alternateButton:nil otherButton:nil informativeTextWithFormat:@"TmpDisk was created by @imothee of Ink Scribbles Pty Ltd to help easily create and manage Ram Disks."];
    [a runModal];
    
}

- (IBAction)helpCenter:(id)sender {
    
    NSAlert *a = [NSAlert alertWithMessageText:@"TmpDisk Help" defaultButton:@"OK" alternateButton:nil otherButton:nil informativeTextWithFormat:@"Ram Disks are temporary disks that use your RAM (Memory) for storage. They are incredibly fast and can be very useful when used for performance or temporary files."];
    [a runModal];
    
}

@end