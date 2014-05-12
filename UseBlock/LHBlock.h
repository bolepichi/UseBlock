//
//  LHBlock.h
//  UseBlock
//
//  Created by Taagoo'iMac on 14-5-9.
//  Copyright (c) 2014年 Taagoo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^TestBlock)(NSString *string);

typedef NSInteger(^TestBlockReturn)(NSInteger num,NSInteger min);


@interface LHBlock : NSObject



@property(nonatomic ,copy)TestBlock CallBackBlock;




- (void)givemeWithString:(NSString *)iStirng StringUseBlock:(TestBlock)block;


- (void)givemeWithInteger:(NSString *)iStirng StringUseBlock:(TestBlockReturn)block;


@end
