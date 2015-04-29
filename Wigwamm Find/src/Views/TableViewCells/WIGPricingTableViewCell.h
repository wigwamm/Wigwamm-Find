//
//  WIGPricingTableViewCell.h
//  Wigwamm Find
//
//  Created by Simone Ferrini on 30/04/15.
//  Copyright (c) 2015 Wigwamm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WIGPricingTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *bedLabel;
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;

@end
