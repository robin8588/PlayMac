//
//  NSString+VowelCounter.m
//  PlayMac
//
//  Created by Wang Leo on 13-7-11.
//  Copyright (c) 2013年 Wang Leo. All rights reserved.
//

#import "NSString+VowelCounter.h"

@implementation NSString (VowelCounter)
-(int)vowelCount
{
    NSCharacterSet *charset=
    [NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEIOUY"];
    
    NSUInteger count=[self length];
    int sum=0;
    for(int i=0;i<count;i++){
        unichar c=[self characterAtIndex:i];
        if([charset characterIsMember:c]){
            sum++;
        }
    }
    return sum;
}
@end
