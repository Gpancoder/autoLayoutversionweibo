//
//  GPTableViewCell.m
//  微博demo(自动布局版)
//
//  Created by subaozi on 16/7/29.
//  Copyright © 2016年 subaozi. All rights reserved.
//

#import "GPTableViewCell.h"
#import "GPStatus.h"

@interface GPTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *vipImage;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;

@property (weak, nonatomic) IBOutlet UIImageView *pictureView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *pictureH;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomConstant;


@end

@implementation GPTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)setStatus:(GPStatus *)status{
    _status = status;
    self.iconView.image = [UIImage imageNamed:status.icon];
    self.nameLabel.text = status.name;
    self.vipImage.hidden = !status.isVip;
//    if (status.isVip) {
//        self.vipImage.hidden =NO;
//    }else{
//        self.vipImage.hidden = YES;
//    }
    
    self.descLabel.text = status.text;
    if (status.picture) {
        self.pictureView.hidden = NO;
        self.pictureView.image = [UIImage imageNamed:status.picture];
        self.pictureH.constant = 100;
        self.bottomConstant.constant = 8;
    }else{
        self.pictureView.hidden = YES;
//        self.pictureView.image = nil;
        self.pictureH.constant = 0;
        self.bottomConstant.constant = 0;
    }
    
    
}

@end
