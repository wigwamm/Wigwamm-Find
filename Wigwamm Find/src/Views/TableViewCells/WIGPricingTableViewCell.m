//
//  WIGPricingTableViewCell.m
//  Wigwamm Find
//
//  Created by Simone Ferrini on 30/04/15.
//  Copyright (c) 2015 Wigwamm. All rights reserved.
//

#import "WIGPricingTableViewCell.h"
#import "UIColor+Wigwamm.h"

@interface WIGPricingTableViewCell ()

@end

@implementation WIGPricingTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    self.numberLabel.backgroundColor = [UIColor w_greenColor];
    self.numberLabel.layer.cornerRadius = 10.0f;
    self.numberLabel.clipsToBounds = YES;
    self.numberLabel.textColor = [UIColor whiteColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
