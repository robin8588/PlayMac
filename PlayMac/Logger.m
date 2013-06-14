//
//  Logger.m
//  PlayMac
//
//  Created by Wang Leo on 13-6-14.
//  Copyright (c) 2013年 Wang Leo. All rights reserved.
//

#import "Logger.h"

@implementation Logger

-(void)connection:(NSURLConnection *)connection
didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes",[data length]);
    if(!incomingData){
        incomingData =[[NSMutableData alloc] init];
    }
    [incomingData appendData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSLog(@"Got it all");
    
    NSString *string =[[NSString alloc] initWithData:incomingData encoding:NSUTF8StringEncoding];
    
    incomingData=nil;
    NSLog(@"string has %lu characters",[string length]);
    
    //NSLog(@"The whole string is %@",string);
}

-(void)connection:(NSURLConnection *)connection
didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@",[error localizedDescription]);
    incomingData=nil;
}

-(void)zoneChange:(NSNotification *)note
{
    NSLog(@"time has change %@",note.description);
}

-(void)sayOuch:(NSTimer *)t
{
    NSLog(@"Ouch");
}
@end
