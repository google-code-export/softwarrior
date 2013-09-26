//
//  ViewController.h
//  KingsAndEmperorsOfRussia
//
//  Created by Andrey Pilipenko on 21.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADBannerView.h"

@class MainWebView;

@interface WebViewController : UIViewController {
    UIWebView *_webView;
    MainWebView *_mainWebView;
    NSTimer *_splashTimer;
    NSTimer *_internetTimer;
    
    GADBannerView *_bannerView;
    
    bool _splashViewVisible;
    
    UITextView *_addsTextView;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) IBOutlet UITextView *addsTextView;

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

- (BOOL)prefersStatusBarHidden;

@end
