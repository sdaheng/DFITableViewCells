//
//  MerchantPlainTableViewCell.m
//  ReserveByCharming
//
//  Created by SDH on 10/29/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import "DFIPlainTableViewCell.h"

#import "DFIPlainTableViewCellViewModel.h"
#import "DFIPlainTableViewCellOption.h"

#import "DFITableViewCells.h"

@interface DFIPlainTableViewCell () <UITableViewCellConfigureProtocol>

@property (nonatomic, strong) DFIPlainTableViewCellViewModel *cellViewModel;

@end

@implementation DFIPlainTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:UITableViewCellStyleValue1
                reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self setupViews];
    }
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupViews];
}

- (void)setupViews {
    self.textLabel.numberOfLines = 0;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)configureCellWithInfo:(id)info option:(id)option {
    self.cellViewModel = [info isKindOfClass:[DFIPlainTableViewCellViewModel class]] ? info : nil;

    self.textLabel.text = self.cellViewModel.titleTextString;
    self.detailTextLabel.text = self.cellViewModel.detailTextString;
    
    if (self.cellViewModel.imageNameString) {
        self.imageView.image = [UIImage imageNamed:self.cellViewModel.imageNameString];
    }
    if ([option isKindOfClass:[NSDictionary class]]) {

        self.selectionStyle = [option[DFIPlainTableViewCellSelectionStyleOptinoKey] integerValue];
        
        self.contentView.backgroundColor = option[DFIPlainTableViewCellBackgroundColorOptionKey];
        
        self.textLabel.font = option[DFIPlainTableViewCellTitleLabelFontOptionKey];
        self.detailTextLabel.font = option[DFIPlainTableViewCellDetailTextLabelFontOptionKey];
        
        self.textLabel.textColor = option[DFIPlainTableViewCellTitleLabelTextColorOptionKey];
        self.detailTextLabel.textColor = option[DFIPlainTableViewCellDetailTextLabeleTxtColorOptionKey];
    } else {
        DFIPlainTableViewCellOption *option = (DFIPlainTableViewCellOption *)self.cellViewModel.cellConfigure.cellOption;
        
        self.contentView.backgroundColor = option.backgroundColor;
        self.textLabel.font = option.textLabelFont;
        self.detailTextLabel.font = option.detailTextLabelFont;
        self.selectionStyle = option.selectionStyle;
        
        self.textLabel.textColor = option.titleLabelTextColor;
        self.detailTextLabel.textColor = option.detailLabelTextColor;
    }
}

- (void)prepareForReuse {
    [super prepareForReuse];
}

@end

NSString * const DFIPlainTableViewCellSelectionStyleOptinoKey = @"DFIPlainTableViewCellSelectionStyleOptinoKey";

NSString * const DFIPlainTableViewCellBackgroundColorOptionKey = @"DFIPlainTableViewCellBackgroundColorOptionKey";

NSString * const DFIPlainTableViewCellTitleLabelFontOptionKey = @"DFIPlainTableViewCellTitleLabelFontOptionKey";
NSString * const DFIPlainTableViewCellDetailTextLabelFontOptionKey = @"DFIPlainTableViewCellDetailTextLabelFontOptionKey";

NSString * const DFIPlainTableViewCellTitleLabelTextColorOptionKey = @"kPlainTableViewCellTitleLabelTextColorOptionKey";
NSString * const DFIPlainTableViewCellDetailTextLabeleTxtColorOptionKey = @"kPlainTableViewCellDetailTextLabeleTxtColorOptionKey";
