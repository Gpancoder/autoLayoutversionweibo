//
//  GPTableViewCell.h
//  微博demo(自动布局版)
//
//  Created by subaozi on 16/7/29.
//  Copyright © 2016年 subaozi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GPStatus;
@interface GPTableViewCell : UITableViewCell

@property (nonatomic, strong) GPStatus *status;

@end
