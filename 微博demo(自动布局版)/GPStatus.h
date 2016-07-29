//
//  GPStatus.h
//  微博demo(自动布局版)
//
//  Created by subaozi on 16/7/29.
//  Copyright © 2016年 subaozi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GPStatus : NSObject
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign,getter=isVip) BOOL vip;
@property (nonatomic, copy) NSString *picture;

+(instancetype)statusWithDict:(NSDictionary *)dict;



@end
