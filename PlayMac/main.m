//
//  main.m
//  PlayMac
//
//  Created by Wang Leo on 13-6-6.
//  Copyright (c) 2013年 Wang Leo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        StockHolding *s1 =[[StockHolding alloc] init];
        StockHolding *s2 =[[StockHolding alloc] init];
        StockHolding *s3 =[[StockHolding alloc] init];

        [s1 setPurchasePrice:2.3];
        [s1 setCurrentPrice:4.5];
        [s1 setNumberOfShares:40];
        
        [s2 setPurchasePrice:12.19];
        [s2 setCurrentPrice:10.56];
        [s2 setNumberOfShares:90];

        [s3 setPurchasePrice:45.10];
        [s3 setCurrentPrice:49.51];
        [s3 setNumberOfShares:210];

        NSArray *array=[NSArray arrayWithObjects:s1,s2,s3, nil];
        
        for (StockHolding * s in array) {
            NSLog(@"s is %f %f",[s costInDollars],[s valueInDollars]);
        
        }
    }
    
    return 0;
}

