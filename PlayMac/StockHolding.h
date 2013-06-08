//
//  StockHolding.h
//  PlayMac
//
//  Created by Wang Leo on 13-6-8.
//  Copyright (c) 2013年 Wang Leo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
    float purchasePrice;
    float currentPrice;
    int numberOfShares;
}

@property float purchasePrice;
@property float currentPrice;
@property int numberOfShares;

-(float)costInDollars;
-(float)valueInDollars;
@end
