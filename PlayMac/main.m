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
        NSHost *currentHost= [NSHost currentHost];
        NSString *localizedName=[currentHost localizedName];
        NSString *address=[currentHost address];
        NSLog(@"my mac is name: %@ and addresss is %@",localizedName,address);
    }
    return 0;
}

