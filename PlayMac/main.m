//
//  main.m
//  PlayMac
//
//  Created by Wang Leo on 13-6-6.
//  Copyright (c) 2013年 Wang Leo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+VowelCounter.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
       NSString *st=@"hello world";
        NSLog(@"%@ has %d vpw",st,[st vowelCount]);
    }
           return 0;
}




