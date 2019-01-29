//
//  ViewController.m
//  YJJSonsafe
//
//  Created by huahaniOSCode on 2019/1/29.
//  Copyright © 2019年 YJ. All rights reserved.
//

#import "ViewController.h"
#import "SafeUtils/YJSafeUtils.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
// 实例1
    NSArray*array = @[@"1",@"2",@"3"];
    
//    NSString*str1= [array objectAtIndex:4];//闪退
//    NSLog(@"------%@",str1);
    
    NSString*str2 = [array YJ_safeObjectAtIndex:4]; //此时不会闪退 发现没
    NSLog(@"------%@",str2);
    
// 实例2
    
//    NSMutableArray*mutabarray = [NSMutableArray array];
//    NSString*str_1= @"1";
//    NSString*str_2= @"2";
//    NSString*str_3= nil;
//    [mutabarray addObject:str_1];
//    [mutabarray addObject:str_2];
//    [mutabarray addObject:str_3];
//    NSLog(@"------%@",mutabarray);// 闪退 发现没 原因不再解释
    
    NSMutableArray*mutabarray = [NSMutableArray array];
    NSString*str_1= @"1";
    NSString*str_2= @"2";
    NSString*str_3= nil;
    [mutabarray YJ_safeAddObject:str_1];
    [mutabarray YJ_safeAddObject:str_2];
    [mutabarray YJ_safeAddObject:str_3];  // 不闪退 正常
    NSLog(@"------%@",mutabarray);
    
    
 // 实例3
//    NSMutableDictionary*dict = [NSMutableDictionary dictionary];
//    [dict setObject:nil forKey:@"ddd"]; //闪退
    
    NSMutableDictionary*dict = [NSMutableDictionary dictionary];
      [dict YJ_safeSetObject:nil forKey:@"dd"]; // 正常
    
}


@end
