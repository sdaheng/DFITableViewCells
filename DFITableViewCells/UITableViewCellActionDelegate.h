//
//  UITableViewCellActionDelegate.h
//  DFInfrastructure
//
//  Created by SDH on 12/13/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol UITableViewCellActionDelegate <NSObject>

@optional

- (void)handleTapButtonInCell:(UITableViewCell *)cell
                       button:(UIButton *)button;

- (void)handleTapLabelInCell:(UITableViewCell *)cell
                       label:(UILabel *)label;

- (void)handleTapImageViewInCell:(UITableViewCell *)cell
                       imageView:(UIImageView *)image;

- (void)handleTapCustomeViewInCell:(UITableViewCell *)cell
                       customeView:(UIView *)customView;

@end
