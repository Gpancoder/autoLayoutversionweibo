//
//  GPStatus.m
//  微博demo(自动布局版)
//
//  Created by subaozi on 16/7/29.
//  Copyright © 2016年 subaozi. All rights reserved.
//

#import "GPStatus.h"

@implementation GPStatus

+(instancetype)statusWithDict:(NSDictionary *)dict{
    id obj = [[self alloc] init];
    [obj setValuesForKeysWithDictionary:dict];
    return obj;
}

@end
