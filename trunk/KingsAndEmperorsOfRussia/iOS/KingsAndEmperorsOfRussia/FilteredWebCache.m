//
//  FilteredWebCache.m
//  KingsAndEmperorsOfRussia
//
//  Created by Andrey on 3/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FilteredWebCache.h"

#import "Debug.h"


@implementation FilteredWebCache

- (NSCachedURLResponse*)cachedResponseForRequest:(NSURLRequest*)request
{
   NSString *requestString = [[[request URL] absoluteString] stringByReplacingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
   ALog("cachedResponseForRequest %@",requestString);         
   return [super cachedResponseForRequest:request];
}

@end