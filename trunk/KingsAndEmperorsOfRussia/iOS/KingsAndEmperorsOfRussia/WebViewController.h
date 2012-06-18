//
//  ViewController.h
//  KingsAndEmperorsOfRussia
//
//  Created by Andrey Pilipenko on 21.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainWebView;

@interface WebViewController : UIViewController {
    UIWebView *_webView;
    MainWebView *_mainWebView;
    NSTimer *_splashTimer;
    NSTimer *_internetTimer;
    
    bool _splashViewVisible;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic,retain) NSTimer *splashTimer;
//@property (nonatomic,retain) NSTimer *internetTimer;

@property (readonly) bool splashViewVisible;

-(void)ToastShow :(NSString*)text :(NSInteger)duration;
-(void)SplashShow;

-(void)SplashTimeStart:(float)interval;
-(void)SplashTimeOver;
-(void)SplashTimeStop;

/*
-(void)InternetTimeStart:(float)interval;
-(void)InternetTimeOver;
-(void)InternetTimeStop;
*/

-(void)appDidBecomeActive:(NSNotification *) notification;

@end
