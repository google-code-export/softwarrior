//
//  MainWebView.h
//  KingsAndEmperorsOfRussia
//
//  Created by Andrey on 3/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iToast.h"

#import "GADBannerView.h"
#import "GADBannerViewDelegate.h"

//Constant strings
//extern NSString * const _contentFileMask;
extern NSString * const _contentUrlPrefix;
//extern NSString * const _serverTimeUrl;

@class WebViewController;

@interface MainWebView : UIWebView <UIWebViewDelegate, GADBannerViewDelegate> {
    UIWebView *_webView;    
    WebViewController *_webController;
    
    NSMutableString * _contentUrl;
	NSMutableString * _contentUrlCheck;
	NSMutableString * _contentFile;
	NSMutableString * _contentFileCheck;
    
    NSDateComponents * _lastDateComponents; 
}

@property (nonatomic, retain) UIWebView *webView;
@property (nonatomic, retain) WebViewController *webController;

-(void)ToastShow :(NSString*)text :(NSInteger)duration;

-(void)RunJavaScriptAlert:(NSNotification *) notification;

-(void)LoadContentUrl;
-(void)CheckAndLoadUrl;
-(void)PrepareContentFile:(NSDateComponents *) components;
-(void)ClearCache;

-(void)SetJSBridgeLog;

-(BOOL)HasConnectivity;
-(BOOL)IsNeedLoadContent;

- (void)adViewDidReceiveAd:(GADBannerView *)bannerView;
- (void)adView:(GADBannerView *)bannerView didFailToReceiveAdWithError:(GADRequestError *)error;

@end

//-----------------------------------------------------
@interface NSString (JRStringAdditions) 

- (BOOL) containsString:(NSString *) string;
- (BOOL) containsString:(NSString *) string
                options:(NSStringCompareOptions) options;

@end

@implementation NSString (JRStringAdditions) 

- (BOOL) containsString:(NSString *) string
                options:(NSStringCompareOptions) options {
    NSRange rng = [self rangeOfString:string options:options];
    return rng.location != NSNotFound;
}

- (BOOL) containsString:(NSString *) string {
    return [self containsString:string options:0];
}

@end

//-----------------------------------------------------
@interface UIWebView (JavaScriptAlert) 

- (void)webView:(UIWebView *)sender shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;

@end

@implementation UIWebView (JavaScriptAlert)

- (void)webView:(UIWebView *)sender shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
   
    NSURL* url = request.URL;
    NSString* message = [url query];
    NSDictionary* messageData = [NSDictionary dictionaryWithObject:message forKey:@"message"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"RunJavaScriptAlert" object:nil userInfo: messageData];
}

@end
//-----------------------------------------------------