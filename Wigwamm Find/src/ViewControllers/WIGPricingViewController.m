//
//  WIGPricingViewController.m
//  Wigwamm Find
//
//  Created by Simone Ferrini on 30/04/15.
//  Copyright (c) 2015 Wigwamm. All rights reserved.
//

#import "WIGPricingViewController.h"
#import "UIColor+Wigwamm.h"
#import "WIGPricingTableViewCell.h"
#import "UINavigationBar+Wigwamm.h"

@interface WIGPricingViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation WIGPricingViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"PricingViewController";
    [self.navigationController.navigationBar setNavigationBarWithColor:[UIColor w_orangeColor]];
    
    self.view.backgroundColor = [UIColor w_orangeColor];
    
    self.tableView.rowHeight = 90;
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorColor = [UIColor clearColor];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"WIGPricingTableViewCell" bundle:nil] forCellReuseIdentifier:@"WIGPricingTableViewCell"];
}

#pragma mark - UITableViewDataSource & UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WIGPricingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WIGPricingTableViewCell" forIndexPath:indexPath];
    cell.numberLabel.text = [NSString stringWithFormat:@"%@", @(indexPath.row)];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
