//
//  Logger.h
//  PlayMac
//
//  Created by Wang Leo on 13-6-14.
//  Copyright (c) 2013年 Wang Leo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject{
    NSMutableData *incomingData;
}
-(void)sayOuch:(NSTimer *)t;
@end
