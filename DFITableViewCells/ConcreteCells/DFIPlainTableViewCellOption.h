//
//  MerchantPlainTableViewCellOption.h
//  MMYStylist
//
//  Created by SDH on 12/12/15.
//  Copyright © 2015 sdaheng. All rights reserved.
//

#import "DFITableViewCells.h"

@interface DFIPlainTableViewCellOption : DFITableViewCellOption

@property (nonatomic, strong) UIFont *textLabelFont;
@property (nonatomic, strong) UIFont *detailTextLabelFont;

@property (nonatomic, strong) UIColor *titleLabelTextColor;
@property (nonatomic, strong) UIColor *detailLabelTextColor;

@property (nonatomic, strong) UIColor *backgroundColor;

@property (nonatomic, assign) UITableViewCellSelectionStyle selectionStyle;

@end
