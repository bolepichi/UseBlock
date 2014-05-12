//
//  LHBlock.m
//  UseBlock
//
//  Created by Taagoo'iMac on 14-5-9.
//  Copyright (c) 2014年 Taagoo. All rights reserved.
//

#import "LHBlock.h"

@implementation LHBlock


- (void)givemeWithString:(NSString *)iStirng StringUseBlock:(TestBlock)block{
    
    block([NSString stringWithFormat:@"%@ xiaobai",iStirng]);
}


- (void)givemeWithInteger:(NSString *)iStirng StringUseBlock:(TestBlockReturn)block{
    
    block(6,8);
}

@end
