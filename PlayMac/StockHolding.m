//
//  StockHolding.m
//  PlayMac
//
//  Created by Wang Leo on 13-6-8.
//  Copyright (c) 2013年 Wang Leo. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchasePrice,currentPrice,numberOfShares;

-(float)costInDollars
{
    return [self purchasePrice] *[self numberOfShares];
}

-(float)valueInDollars
{
    return [self currentPrice] * [self numberOfShares];
}

@end
