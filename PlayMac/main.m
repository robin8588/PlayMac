//
//  main.m
//  PlayMac
//
//  Created by Wang Leo on 13-6-6.
//  Copyright (c) 2013年 Wang Leo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        Logger *logger =[[Logger alloc] init];
        
        NSURL *url=[NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        
        NSURLRequest *request =[NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConn=[[NSURLConnection alloc] initWithRequest:request delegate:logger startImmediately:YES];
        
        [[NSRunLoop currentRunLoop] run];
    }
    
    return 0;
}

