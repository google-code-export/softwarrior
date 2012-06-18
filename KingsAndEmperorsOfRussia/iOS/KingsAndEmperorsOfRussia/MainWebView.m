//
//  MainWebView.m
//  KingsAndEmperorsOfRussia
//
//  Created by Andrey on 3/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SDURLCache.h"

#import "MainWebView.h"

#import "WebViewController.h"

#import "Debug.h"

#import "GANTracker.h"

#import <sys/socket.h>
#import <netinet/in.h>
#import <SystemConfiguration/SystemConfiguration.h>

//NSString * const _contentFileMask = @"index_%02d_%@%@";
//NSString * const _contentUrlPrefix = @"http://oranienbaum.i-free.com/almanac/";
NSString * const _contentUrlPrefix = @"http://www.softwarrior.org/KingsAndEmperorsOfRussia/";
//NSString * const _serverTimeUrl = @"http://oranienbaum.i-free.com/almanac/server_time.php";

@implementation MainWebView

@synthesize webController = _webController;
@dynamic webView;
//-------------------------------------
- (id)init {
    if(self = [super init]){
        _contentUrl = [NSMutableString stringWithString:@"undefined.url"];
        _contentUrlCheck =[NSMutableString stringWithString:@"undefined.url"]; 
        //_contentFile = [NSMutableString stringWithString:@"undefined.url"];
        //_contentFileCheck = [NSMutableString stringWithString:@"undefined.url"];
        _contentFile = [NSMutableString stringWithString:@"index_mobile.html"];
        _contentFileCheck = [NSMutableString stringWithString:@"index_mobile_check.html"];

        
        _lastDateComponents = nil;
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(RunJavaScriptAlert:) name:@"RunJavaScriptAlert" object:nil];
    }
    return self;
}
//-------------------------------------
-(void)ToastShow :(NSString*)text :(NSInteger)duration{
    [_webController ToastShow :text :duration];
}
//-------------------------------------
-(UIWebView*)webView {
    return _webView;
}
//-------------------------------------
-(void)setWebView:(UIWebView *)webView2 {
    _webView = webView2;
    // Set delegate in order to "shouldStartLoadWithRequest" to be called
    _webView.delegate = self;        
    // Set non-opaque in order to make "body{background-color:transparent}" working!
    _webView.opaque = NO;
}
//-------------------------------------
-(void)RunJavaScriptAlert:(NSNotification *) notification {
   
   NSString* message = [[notification userInfo] objectForKey:@"message"];
   [self ToastShow :message :iToastDurationLong];
}
//-------------------------------------
-(void)SetJSBridgeLog {
    //"JSBridge.log = function(log) { document.location = 'JSBridge:' + 'log:' + log; };",@""];
    NSString *javaScript = [NSString stringWithFormat:@"JSBridge = new Object();"
                            "JSBridge.log = function(log) { var iframe = document.createElement('IFRAME'); iframe.setAttribute('src', 'ios-log:#iOS#' + log); document.documentElement.appendChild(iframe);iframe.parentNode.removeChild(iframe); iframe = null; }",@""];
    NSString *result = [_webView stringByEvaluatingJavaScriptFromString:javaScript];  
    ALog("SetJSBridgeLog %@",result);
}
//-------------------------------------
//-(void)SetJSBridgeAlert {
//    NSString *javaScript = [NSString stringWithFormat:@"var JSBridge = null;"
//                            "JSBridge = new Object();"
//                            "JSBridge.log = function(log) { alert(log); }",@""];
//    NSString *result = [_webView stringByEvaluatingJavaScriptFromString:javaScript];  
//    ALog("SetJSBridgeAlert %@",result);
//}
//-------------------------------------
-(void)LoadContentUrl {

    [_webView stringByEvaluatingJavaScriptFromString: [NSString stringWithFormat:@"PAID_VERSION = '%@';", @"true"]];
    [self SetJSBridgeLog];

//    [_webView stringByEvaluatingJavaScriptFromString: [NSString stringWithFormat:@"PAID_VERSION = '%@';", @"true"]];
//    [_webView loadRequest:[NSURLRequest requestWithURL: [NSURL URLWithString:@"http://oranienbaum.i-free.com/almanac/index.html"]]];  
    /*
    if([self HasConnectivity] == YES){
        [_webView loadRequest:[NSURLRequest requestWithURL: [NSURL URLWithString:_serverTimeUrl] cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval: 5.0]]; 
        [_webController InternetTimeStart: 10];
    } else{
        NSDate *phoneDate = [NSDate date];
        NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSCalendarUnit unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
        NSDateComponents *phoneDateComponents = [calendar components:unitFlags fromDate:phoneDate];
        [self PrepareContentFile:phoneDateComponents];
        [self CheckAndLoadUrl];
    }
    */
    [self PrepareContentFile:nil];
    [self CheckAndLoadUrl];
    [_webController SplashShow];
    //[_webController SplashTimeStart: 5];
 }
//-------------------------------------
#pragma mark UIWebView delegate methods
//-------------------------------------
- (void)webViewDidStartLoad:(UIWebView *)webView2 {
	// starting the load
    ALog("webViewDidStartLoad %@",@"");
 }
//-------------------------------------
- (void)webViewDidFinishLoad:(UIWebView *)webView2 {
	// finished loading
    NSString *requestString = [[webView2.request.URL absoluteString] stringByReplacingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
    ALog("webViewDidFinishLoad %@",requestString);
    if([requestString containsString:@"no_connection.html"] || 
       [requestString containsString:@"no_content.html"]){            		
    } else {
        if([requestString containsString:_contentFileCheck]){
            ALog("webViewDidFinishLoad Load Content URL %@",@"!!!!!!!!!!!!!");
            [_webView loadRequest:[NSURLRequest requestWithURL: [NSURL URLWithString:_contentUrl] cachePolicy: NSURLRequestReloadRevalidatingCacheData/*NSURLRequestReturnCacheDataElseLoad*/ timeoutInterval: 5.0]];                
        } else if([requestString containsString:_contentUrl]){
            [_webView stringByEvaluatingJavaScriptFromString: [NSString stringWithFormat:@"PAID_VERSION = '%@';", @"true"]];
            [self SetJSBridgeLog];
            [_webController SplashTimeStart: 1];
        } 
        /*
        else if([requestString containsString:@"server_time.php"]){
            NSString *version = [_webView stringByEvaluatingJavaScriptFromString:@"getVersion()"]; 
            NSString *serverTime = [_webView stringByEvaluatingJavaScriptFromString:@"getServerTime()"];
            if(version == nil) version = @"";
            if(serverTime == nil) serverTime = @"";
            ALog("getVersion() %@",version);
            ALog("getServerTime() %@",serverTime);       
            if([serverTime containsString:@"ServerTime"]){
                ALog(@"ServerTime %@", @"!!!!!!!!!");
                NSArray* components = [serverTime componentsSeparatedByString:@":"];
                if([components count] > 1 && [(NSString *)[components objectAtIndex:0] isEqualToString:@"ServerTime"]){                
                    [_webController InternetTimeStop];
                    NSString *serverTimeSec = [components objectAtIndex:1];
                    NSDate *serverDate = [NSDate dateWithTimeIntervalSince1970:[serverTimeSec longLongValue]];
                    NSDate *phoneDate = [NSDate date];
                    
                    NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
                    NSCalendarUnit unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
                    NSDateComponents *serverDateComponents = [calendar components:unitFlags fromDate:serverDate];
                    NSDateComponents *phoneDateComponents = [calendar components:unitFlags fromDate:phoneDate];
                    
                    _lastDateComponents = phoneDateComponents;
                    
                    if([version containsString:@"DEBUG_VERSION"]){
                        [self PrepareContentFile:phoneDateComponents];
                        [self CheckAndLoadUrl];
                    } 
                    else {
                        if(([serverDateComponents year]  != [phoneDateComponents year]) ||
                           ([serverDateComponents month] != [phoneDateComponents month]) ||
                           (ABS([phoneDateComponents day] - [serverDateComponents day]) > 1)){
                            _lastDateComponents = nil;
                            [_webController SplashTimeStart: 1];                        
                            //load our html file
                            NSString *path = [[NSBundle mainBundle] pathForResource:@"no_content" ofType:@"html"];
                            [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:path]]];                        
                        } else {
                            [self PrepareContentFile:phoneDateComponents];
                            [self CheckAndLoadUrl];
                        }
                    }
                }
            }
        }
        */
    }    
}
//-------------------------------------
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
	// load error
    NSURL *url = [NSURL URLWithString:[error.userInfo objectForKey:@"NSErrorFailingURLStringKey"]];
    NSString *requestString = [[url absoluteString] stringByReplacingPercentEscapesUsingEncoding: NSUTF8StringEncoding];    
    ALog("didFailLoadWithError %@",error.description);
    if([_contentUrlCheck isEqualToString: requestString]){
        if( [self HasConnectivity] == YES){
            ALog("didFailLoadWithError Clean Cache %@",@"!!!!!!!!!!!!!");
            [self ClearCache];
            ALog("didFailLoadWithError Load Content URL %@",@"!!!!!!!!!!!");
            [_webView loadRequest:[NSURLRequest requestWithURL: [NSURL URLWithString:_contentUrl] cachePolicy:NSURLRequestReloadRevalidatingCacheData timeoutInterval: 5.0]]; 
            NSString *download_msg  = [[NSBundle mainBundle] localizedStringForKey:@"download_msg" value:@"DefaultValue" table:@"InfoPlist"];
            [self ToastShow :download_msg :iToastDurationNormal]; 
        } else {
            [_webController SplashTimeStart: 1];
            //load our html file
            NSString *path = [[NSBundle mainBundle] pathForResource:@"no_connection" ofType:@"html"];
            [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:path]]]; 		
        }
    } else if([_contentUrl isEqualToString: requestString]) {
        [_webController SplashTimeStart: 1];
        //load our html file
        NSString *path = [[NSBundle mainBundle] pathForResource:@"no_connection" ofType:@"html"];
       [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:path]]]; 		
    }        
}
//-------------------------------------
 - (BOOL)webView:(UIWebView *)webView2 
    shouldStartLoadWithRequest:(NSURLRequest *)request 
    navigationType:(UIWebViewNavigationType)navigationType {

     NSURLConnection *conn = [NSURLConnection connectionWithRequest:request delegate:self];
     if (conn == nil) {
         NSLog(@"cannot create connection");
     }
     
     // Determine if we want the system to handle it.
     NSURL *url = request.URL;
     ALog("shouldStartLoadWithRequest URL scheme %@",url.scheme);     
     if (([url.scheme isEqual:@"http"] == NO) && ([url.scheme isEqual:@"https"] == NO)){
         if ([[UIApplication sharedApplication]canOpenURL:url]) {
             [[UIApplication sharedApplication]openURL:url];
             return NO;
         }
     }

     if ([url.scheme isEqual:@"about"]){
             return NO;
     }
     
     NSString *requestString = [[[request URL] absoluteString] stringByReplacingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
     ALog("shouldStartLoadWithRequest requestString %@",requestString);     

     //if ([requestString containsString:@"http://vkontakte.ru"] || 
     //    [requestString containsString:@"http://www.facebook.com"] ||
     //    [requestString containsString:@"https://twitter.com"] ||
     //    [requestString containsString:@"http://vision.rambler.ru"] ||
     //    [requestString containsString:@"http://connect.mail.ru"] ||
     //    [requestString containsString:@"http://m.youtube.com"]
     ///    ) {
     if(![requestString containsString:_contentUrlPrefix]){
         if ([[UIApplication sharedApplication]canOpenURL:url]) {
             [[UIApplication sharedApplication]openURL:url];
             return NO;
         }
     }    
     
     if ([requestString hasPrefix:@"ios-log:"]) {
         NSString*  logString = [[requestString componentsSeparatedByString:@":#iOS#"] objectAtIndex:1];
         // Call your method in Objective-C method using the above...
         ALog(@"onConsoleMessage: %@", logString);
         if([logString containsString:@"Для этой даты нет контента"]){
            if(_webController.splashViewVisible == false){
                   [_webController SplashShow];
            }
            [self CheckAndLoadUrl];
            return NO;
         }
         else if([logString containsString:@"FrivolousAlmanac"]){
             NSString *analyticsMessage =  [NSString stringWithFormat:@"/%@", logString]; 
             ALog(@"GoogleAnalytics %@", analyticsMessage);                 
             NSError *error = nil;
             if (![[GANTracker sharedTracker] trackPageview:analyticsMessage
                                                      withError:&error]) {
                  // Handle error here
             }
             return NO;
         }
         return NO;
     }
     return YES; // Return YES to make sure regular navigation works as expected.
 }
//-------------------------------------
#pragma mark -
#pragma mark NSURLConnection Delegate Methods
- (void) connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    ALog(@"connection didReceiveResponse");
    
    if ([response isKindOfClass:[NSHTTPURLResponse class]]) {
        
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
                
        NSString *requestString = [[[httpResponse URL] absoluteString] stringByReplacingPercentEscapesUsingEncoding: NSUTF8StringEncoding];        
        int status = [httpResponse statusCode];
        ALog("connection didReceiveResponse %@, status=%d",requestString, status);    
        if (status == 404) {
            ALog(@"File not found. http status code: %d", status);
            if([requestString containsString:_contentUrl] ||
               [requestString containsString:_contentUrlCheck]){ 
               //||[requestString containsString:_serverTimeUrl]){
                    // cancel the connection. we got what we want from the response,
                    // no need to download the response data.
                    [connection cancel];
                    NSString *path = [[NSBundle mainBundle] pathForResource:@"no_connection" ofType:@"html"];
                    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:path]]];
            }
        }
    }
}
//-------------------------------------
-(void)PrepareContentFile:(NSDateComponents *) components {
    /*
    NSString *dayInterval = @"";
    int dayOfMoth = [components day];
    if(dayOfMoth >=1 && dayOfMoth <= 11 ){
        dayInterval = @"01_11";
    } 
    else if(dayOfMoth >=12 && dayOfMoth <= 21 ){
        dayInterval = @"12_21";
    } else if(dayOfMoth >=22 && dayOfMoth <= 31 ){
        dayInterval = @"22_31";
    }
    
    _contentFile = [NSString stringWithFormat:_contentFileMask, ([components month]), dayInterval, @".html"];
    _contentFileCheck = [NSString stringWithFormat:_contentFileMask, ([components month]), dayInterval, @"_check.html"];
    */
    [_contentUrl setString:_contentUrlPrefix];
    [_contentUrl appendString:_contentFile];
    [_contentUrlCheck setString:_contentUrlPrefix];
    [_contentUrlCheck appendString: _contentFileCheck];
}
//-------------------------------------
-(void)CheckAndLoadUrl {    
     [_webView loadRequest:[NSURLRequest requestWithURL: [NSURL URLWithString:_contentUrlCheck] cachePolicy:NSURLRequestReturnCacheDataDontLoad timeoutInterval: 3.0]];        
}
//-------------------------------------
-(BOOL)IsNeedLoadContent {
    BOOL result = YES;
    if(_webController.splashViewVisible == false){
        if(_lastDateComponents != nil){
            NSDate *phoneDate = [NSDate date];
            
            NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
            NSCalendarUnit unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
            NSDateComponents *phoneDateComponents = [calendar components:unitFlags fromDate:phoneDate];
            
            if(([_lastDateComponents year]  != [phoneDateComponents year]) ||
               ([_lastDateComponents month] != [phoneDateComponents month]) ||
               ([phoneDateComponents day] != [_lastDateComponents day])){
                result = YES;
            } else {
                result = NO;
            }
        }
    }
    return result;
}
//-------------------------------------
//Connectivity testing code pulled from Apple's Reachability Example: http://developer.apple.com/library/ios/#samplecode/Reachability
-(BOOL)HasConnectivity {
    struct sockaddr_in zeroAddress;
    bzero(&zeroAddress, sizeof(zeroAddress));
    zeroAddress.sin_len = sizeof(zeroAddress);
    zeroAddress.sin_family = AF_INET;
    
    SCNetworkReachabilityRef reachability = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, (const struct sockaddr*)&zeroAddress);
    if(reachability != NULL) {
        //NetworkStatus retVal = NotReachable;
        SCNetworkReachabilityFlags flags;
        if (SCNetworkReachabilityGetFlags(reachability, &flags)) {
            if ((flags & kSCNetworkReachabilityFlagsReachable) == 0)
            {
                // if target host is not reachable
                return NO;
            }
            
            if ((flags & kSCNetworkReachabilityFlagsConnectionRequired) == 0)
            {
                // if target host is reachable and no connection is required
                //  then we'll assume (for now) that your on Wi-Fi
                return YES;
            }
            
            
            if ((((flags & kSCNetworkReachabilityFlagsConnectionOnDemand ) != 0) ||
                 (flags & kSCNetworkReachabilityFlagsConnectionOnTraffic) != 0))
            {
                // ... and the connection is on-demand (or on-traffic) if the
                //     calling application is using the CFSocketStream or higher APIs
                
                if ((flags & kSCNetworkReachabilityFlagsInterventionRequired) == 0)
                {
                    // ... and no [user] intervention is needed
                    return YES;
                }
            }
            
            if ((flags & kSCNetworkReachabilityFlagsIsWWAN) == kSCNetworkReachabilityFlagsIsWWAN)
            {
                // ... but WWAN connections are OK if the calling application
                //     is using the CFNetwork (CFSocketStream?) APIs.
                return YES;
            }
        }
    }    
    return NO;
}
//-------------------------------------
-(void)ClearCache {
    // Flush all cached data
    [[NSURLCache sharedURLCache] removeAllCachedResponses];
}
//-------------------------------------
@end
