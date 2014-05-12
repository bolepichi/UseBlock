//
//  LHViewController.m
//  UseBlock
//
//  Created by Taagoo'iMac on 14-5-9.
//  Copyright (c) 2014年 Taagoo. All rights reserved.
//

#import "LHViewController.h"

#import "LHBlock.h"


typedef int(^maxBlock)(int, int);

@interface LHViewController ()

@end

@implementation LHViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    LHBlock *block = [[LHBlock alloc]init];
    
   [block givemeWithString:@"hello world" StringUseBlock:^(NSString *string) {
      
       NSLog(@"%@",string);
       
       
   }];
    
    maxBlock bul = ^(int x, int y){
        
        return x>y?x:y;
    };
    
    

    
    
    
    NSLog(@"%d", bul(68, 78));
    
    
    
    NSLog(@"我在玩手机");
    NSLog(@"手机没电了");
    
    [self chargeMyIphone:^{
        NSLog(@"出去逛街");
    }];
    NSLog(@"我在看电视");
    
    
}



-(void)chargeMyIphone:(void(^)(void))finishBlock{
    
    double delayInSeconds = 10.0;
    
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)delayInSeconds * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        
        NSLog(@"电池充满");
        
        finishBlock();
        
    });
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
