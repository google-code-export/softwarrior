//
//  AppDelegate.h
//  KingsAndEmperorsOfRussia
//
//  Created by Andrey Pilipenko on 21.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GAI.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(nonatomic, retain) id<GAITracker> tracker;

@end
