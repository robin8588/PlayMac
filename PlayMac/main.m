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
        NSArray *oldStrings=[NSArray arrayWithObjects:@"skdjsasdf",@"denvladkg",@"foengkicjq",@"odvnvnbcowj",nil];
        NSLog(@"oldstring is %@",oldStrings);
        
        NSMutableArray *newStrings=[NSMutableArray array];
        
        NSArray *vowels=[NSArray arrayWithObjects:@"a",@"e",@"i",@"o",@"u", nil];
        
                
        [oldStrings enumerateObjectsUsingBlock:^(id string,NSUInteger i,BOOL *stop){
            NSMutableString *newString=[NSMutableString stringWithString:string];
            
            for (NSString *s in vowels){
                NSRange fullRange=NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            };
            
            [newStrings addObject:newString];

        }];
        NSLog(@"oldstring is %@",newStrings);
    }
    return 0;
}




