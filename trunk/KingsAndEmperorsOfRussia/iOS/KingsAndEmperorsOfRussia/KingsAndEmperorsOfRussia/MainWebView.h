//
//  MainWebView.h
//  KingsAndEmperorsOfRussia
//
//  Created by Andrey on 3/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iToast.h"

//Constant strings
//extern NSString * const _contentFileMask;
extern NSString * const _contentUrlPrefix;
//extern NSString * const _serverTimeUrl;

@class WebViewController;

@interface MainWebView : UIWebView <UIWebViewDelegate> {
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

- (void)webView:(UIWebView *)sender runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WebFrame *)frame;

@end

@implementation UIWebView (JavaScriptAlert)

- (void)webView:(UIWebView *)sender runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WebFrame *)frame {
   
    NSDictionary* messageData = [NSDictionary dictionaryWithObject:message forKey:@"message"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"RunJavaScriptAlert" object:nil userInfo: messageData];
     
}

@end
//-----------------------------------------------------