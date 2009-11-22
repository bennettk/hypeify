//
//  hypeifyAppDelegate.m
//  hypeify
//
//  Created by Bennett Kolasinski on 11/21/09.
//  Copyright bennettk 2009. All rights reserved.
//

#import "hypeifyAppDelegate.h"
#import "hypeifyViewController.h"

@implementation hypeifyAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
