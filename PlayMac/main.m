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
        NSDateComponents *comps=[[NSDateComponents alloc] init];
        [comps setYear:1985];
        [comps setMonth:8];
        [comps setDay:8];
        [comps setHour:5];
        [comps setMinute:0];
        [comps setSecond:0];
        
        NSCalendar *g =[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth=[g dateFromComponents:comps];
        
        NSDate *now=[NSDate date];
        double d=[now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"this is how i alive: %f seconds or %f minute  or %f hours or %f days or %f years",d,d/60,d/60/60,d/60/60/24,d/60/60/24/365);
    }
    return 0;
}

