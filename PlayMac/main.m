//
//  main.m
//  PlayMac
//
//  Created by Wang Leo on 13-6-6.
//  Copyright (c) 2013年 Wang Leo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSTimeZone  *zone=[NSTimeZone systemTimeZone];
        NSString *name=[zone name];
        
        NSLog(@"you are in %@ timezone",name);
        
    }
    return 0;
}

