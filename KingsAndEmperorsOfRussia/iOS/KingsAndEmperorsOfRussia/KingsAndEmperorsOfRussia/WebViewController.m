//
//  ViewController.m
//  KingsAndEmperorsOfRussia
//
//  Created by Andrey Pilipenko on 21.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SplashViewController.h"
#import "WebViewController.h"

#import "MainWebView.h"

#import "Debug.h"

//static int secondsLeft=2; //just to calculate remaining seconds

@implementation WebViewController

@synthesize webView = _webView;
@synthesize addsTextView = _addsTextView;

@synthesize splashTimer = _splashTimer;
//@synthesize internetTimer = _internetTimer;

@synthesize splashViewVisible = _splashViewVisible;
//-------------------------------------
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
//-------------------------------------
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
//-------------------------------------
-(void)ToastShow :(NSString*)text :(NSInteger)duration{
    [[[[iToast makeText: text] setGravity:iToastGravityCenter] setDuration:duration] show];
}
//-------------------------------------
-(void)SplashShow {
    _splashViewVisible = true;
    
    //UIInterfaceOrientation interfaceOrientation = self.interfaceOrientation;
    //UIInterfaceOrientation interfaceOrientation = [UIApplication sharedApplication].statusBarOrientation;
    //typedef enum {
    //    UIInterfaceOrientationPortrait           = UIDeviceOrientationPortrait,
    //    UIInterfaceOrientationPortraitUpsideDown = UIDeviceOrientationPortraitUpsideDown,
    //    UIInterfaceOrientationLandscapeLeft      = UIDeviceOrientationLandscapeLeft,
    //    UIInterfaceOrientationLandscapeRight     = UIDeviceOrientationLandscapeRight
    //} UIIn
    //if(interfaceOrientation == UIInterfaceOrientationPortrait ||
    //   interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown){        
    //    SplashViewController *splashController = [self.storyboard instantiateViewControllerWithIdentifier:@"SplashViewControllerV"];
    //    [self.navigationController pushViewController:splashController animated:YES];                              
    //} else {
    //    SplashViewController *splashController = [self.storyboard instantiateViewControllerWithIdentifier:@"SplashViewControllerH"];
    //    [self.navigationController pushViewController:splashController animated:YES];           
    //}
    
    //UIDeviceOrientation deviceOrientation = [UIDevice currentDevice].orientation;
    //if (UIDeviceOrientationIsLandscape(deviceOrientation)){         
    //}else if(deviceOrientation == UIDeviceOrientationPortrait){
    //}
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(flipViewAccordingToStatusBarOrientation:) name:UIApplicationDidChangeStatusBarOrientationNotification object:nil];  
    [self flipViewAccordingToStatusBarOrientation:nil];
}
//-------------------------------------
- (void)flipViewAccordingToStatusBarOrientation:(NSNotification *)notification {    
    SplashViewController *splashController = nil;
    [self.navigationController popViewControllerAnimated:NO];
    // This notification is most likely triggered inside an animation block, therefore no animation is needed to perform this nice transition.     
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    switch (orientation) { 
        case UIInterfaceOrientationPortraitUpsideDown:
            splashController = [self.storyboard instantiateViewControllerWithIdentifier:@"SplashViewControllerV"];
            break;
        case UIInterfaceOrientationLandscapeLeft:
            splashController = [self.storyboard instantiateViewControllerWithIdentifier:@"SplashViewControllerH"];
            break;
        case UIInterfaceOrientationLandscapeRight:
            splashController = [self.storyboard instantiateViewControllerWithIdentifier:@"SplashViewControllerH"];
            break;
        default: // as UIInterfaceOrientationPortrait
            splashController = [self.storyboard instantiateViewControllerWithIdentifier:@"SplashViewControllerV"];
            break;
    }
    [self.navigationController pushViewController:splashController animated:YES];                              
}
//-------------------------------------
-(void)SplashTimeStart:(float)interval {
    _splashTimer=[NSTimer scheduledTimerWithTimeInterval:interval target:self selector:@selector(SplashTimeOver) userInfo:nil repeats:NO];
}
//-------------------------------------
-(void)SplashTimeOver {
    
    //secondsLeft = secondsLeft-1;    
    //int seconds = (secondsLeft %3600) % 60;    
    //Timerlbl.text = [NSString stringWithFormat:@"%02d",seconds];        
    //if (seconds==0){        
    //   ULog(@"Timer Over");
    //}
    //WebViewController *webController = [currentViewController.storyboard instantiateViewControllerWithIdentifier:@"WebViewController"];
    //[currentViewController.navigationController pushViewController:webController animated:YES];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [self.navigationController popViewControllerAnimated:YES];
    [self SplashTimeStop];
    _splashViewVisible = false;
}
//-------------------------------------
-(void)SplashTimeStop {
    
    if (_splashTimer!=nil){        
        [_splashTimer invalidate];        
        _splashTimer=nil;        
    }    
}
//-------------------------------------
/*
-(void)InternetTimeStart:(float)interval {
    _internetTimer=[NSTimer scheduledTimerWithTimeInterval:interval target:self selector:@selector(InternetTimeOver) userInfo:nil repeats:NO];
}
//-------------------------------------
-(void)InternetTimeOver {
    
    [self SplashTimeStart:1];
    //load our html file
    NSString *path = [[NSBundle mainBundle] pathForResource:@"no_connection" ofType:@"html"];
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:path]]];          
    
    [self InternetTimeStop];
}
//-------------------------------------
-(void)InternetTimeStop {
    
    if (_internetTimer!=nil){        
        [_internetTimer invalidate];        
        _internetTimer=nil;        
    }    
}
*/
//-------------------------------------
#pragma mark - View lifecycle
//-------------------------------------
- (void)viewDidLoad
{
    ALog("********** viewDidLoad %@",@"***********");
    
    [super viewDidLoad];
    ////////////////////////////////////////
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) 
    {
        /* run something specific for the iPad */
        _bannerView  = [[GADBannerView alloc]
                       initWithFrame:CGRectMake(0.0,
                                                self.view.frame.size.height -
                                                GAD_SIZE_728x90.height,
                                                GAD_SIZE_728x90.width,
                                                GAD_SIZE_728x90.height)];
    } 
    else
    {
        /* run something specific for the iPhone */
        _bannerView = [[GADBannerView alloc]
                       initWithFrame:CGRectMake(0.0,
                                                self.view.frame.size.height -
                                                GAD_SIZE_320x50.height,
                                                GAD_SIZE_320x50.width,
                                                GAD_SIZE_320x50.height)];
    }

    _bannerView.adUnitID = @"a14fe885dfa9a34";
    
    _bannerView.rootViewController = self;
    [self.view addSubview:_bannerView];
    
    [_bannerView loadRequest:[GADRequest request]];
    
    [_bannerView setAutoresizingMask:UIViewAutoresizingFlexibleTopMargin];
    
    ////////////////////////////////////////
    // Do any additional setup after loading the view, typically from a nib.
    _splashViewVisible = false;
        
    _mainWebView = [MainWebView new];
    _mainWebView.webView = _webView;
    _mainWebView.webController = self;
    
     [_bannerView setDelegate:_mainWebView];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appDidBecomeActive:) name:@"appDidBecomeActive" object:nil];
}

- (void)viewDidUnload
{
    ALog("********** viewDidUnload %@",@"***********");
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

-(void)appDidBecomeActive:(NSNotification *) notification{
    ALog("********** appDidBecomeActive %@",@"***********");
     if([_mainWebView IsNeedLoadContent] == YES)
        [_mainWebView LoadContentUrl];
}

- (void)viewWillAppear:(BOOL)animated
{
    ALog("********** viewWillAppear %@",@"***********");
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    ALog("********** viewDidAppear %@",@"***********");
    [super viewDidAppear:animated];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appDidBecomeActive:) name:@"appDidBecomeActive" object:nil];
}

- (void)viewWillDisappear:(BOOL)animated
{
     ALog("********** viewWillDisappear %@",@"***********");
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    ALog("********** viewDidDisappear %@",@"***********");	
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    ALog("********** shouldAutorotateToInterfaceOrientation %@",@"***********");
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
