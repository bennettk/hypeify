//
//  hypeifyAppDelegate.h
//  hypeify
//
//  Created by Bennett Kolasinski on 11/21/09.
//  Copyright bennettk 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class hypeifyViewController;

@interface hypeifyAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    hypeifyViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet hypeifyViewController *viewController;

@end

