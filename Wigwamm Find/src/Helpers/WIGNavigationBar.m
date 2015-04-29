//
//  WIGNavigationBar.m
//  Wigwamm Find
//
//  Created by Simone Ferrini on 30/04/15.
//  Copyright (c) 2015 Wigwamm. All rights reserved.
//

#import "WIGNavigationBar.h"

@implementation WIGNavigationBar

- (void)awakeFromNib
{
    [super awakeFromNib];
    if (self.color) {
        [self setNavigationBarWithColor:self.color];
    } else {
        [self setNavigationBarWithColor:[UIColor whiteColor]];
    }
}

- (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    UIRectFill(rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (void)setNavigationBarWithColor:(UIColor *)color
{
    UIImage *image = [self imageWithColor:color];
    
    [self setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    [self setBarStyle:UIBarStyleDefault];
    [self setShadowImage:[UIImage new]];
    [self setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    [self setTintColor:[UIColor whiteColor]];
    [self setTranslucent:YES];
}

@end
