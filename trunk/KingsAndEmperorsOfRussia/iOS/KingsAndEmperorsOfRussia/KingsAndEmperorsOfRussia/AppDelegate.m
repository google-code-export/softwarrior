//
//  AppDelegate.m
//  KingsAndEmperorsOfRussia
//
//  Created by Andrey Pilipenko on 21.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

#import "WebViewController.h"

#import "FilteredWebCache.h"
#import "SDURLCache.h"

#import "Debug.h"

@implementation AppDelegate

@synthesize window = _window;

/******* Set your tracking ID here *******/
static NSString *const kTrackingId = @"UA-21583368-6";

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    Class cls = NSClassFromString (@"NSLayoutConstraint");
    if (cls == nil) {
        NSString *mainStoryboardName = nil;
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
            mainStoryboardName = @"MainStoryboard_iPad_iOS5";
        } else {
            mainStoryboardName = @"MainStoryboard_iPhone_iOS5";
        }
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:mainStoryboardName bundle:nil];
        
        UIViewController *initialViewController = [mainStoryboard instantiateInitialViewController];
        self.window.rootViewController = initialViewController;
        [self.window makeKeyAndVisible];
    }
    // Override point for customization after application launch.
    ALog("********** didFinishLaunchingWithOptions %@",@"***********");
    
    NSUInteger memoryCapacity = 4*1024*1024; //4Mb
    NSUInteger discCapacity = 32*1024*1024; //32Mb
    
    NSString *path = @"nsurlcache";// the path to the cache file
    FilteredWebCache *cache = [[FilteredWebCache alloc] initWithMemoryCapacity: memoryCapacity diskCapacity: discCapacity diskPath:path];
    
    //SDURLCache *cache = [[SDURLCache alloc] initWithMemoryCapacity:memoryCapacity diskCapacity: discCapacity diskPath:[SDURLCache defaultCachePath]];
    [NSURLCache setSharedURLCache:cache];
    
    
    // Initialize Google Analytics with a 120-second dispatch interval. There is a
    // tradeoff between battery usage and timely dispatch.
    //[GAI sharedInstance].debug = YES;
    [GAI sharedInstance].dispatchInterval = 30;
    [GAI sharedInstance].trackUncaughtExceptions = YES;
    self.tracker = [[GAI sharedInstance] trackerWithTrackingId:kTrackingId];
    
  
    return YES;

    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
    ALog("********** applicationWillResignActive %@",@"***********");
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
    ALog("********** applicationDidEnterBackground %@",@"***********");
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
    ALog("********** applicationWillEnterForeground %@",@"***********");
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
     ALog("********** applicationDidBecomeActive %@",@"***********");
    [[NSNotificationCenter defaultCenter] postNotificationName:@"appDidBecomeActive" object:nil];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
    ALog("********** applicationWillTerminate %@",@"***********");
    //[[GANTracker sharedTracker] stopTracker];
}

@end
