//
//  DFIButtonTableViewCell.m
//  DFInfrastructure
//
//  Created by SDH on 11/19/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import "DFIButtonTableViewCell.h"

#import <Masonry/Masonry.h>

#import "UITableViewCellConfigureProtocol.h"

#import "DFIButtonTableViewCellViewModel.h"

NSString * const kButtonTitleStringKey = @"kButtonTitleStringKey";
NSString * const kButtonTitleColorKey = @"kButtonTitleColorKey";
NSString * const kButtonBackgroundColorKey = @"kButtonBackgroundColorKey";
NSString * const kButtonCornerRadiusKey = @"kButtonCornerRadiusKey";
NSString * const kButtonTitleFontKey = @"kButtonTitleFontKey";
NSString * const kButtonEdgeInsetsStringKey = @"kButtonEdgeInsetsStringKey";

NSString * const kButtonHideCellBackgroundColorKey = @"kButtonHideCellBackgroundColorKey";

NSString * const kButtonEnableKey = @"kButtonEnableKey";

@interface DFIButtonTableViewCell () <UITableViewCellConfigureProtocol>

@property (nonatomic, strong) UIButton *button;

@property (nonatomic, assign) UIEdgeInsets buttonEdgeInsets;

@property (nonatomic, copy)   NSString *buttonTitleString;
@property (nonatomic, strong) UIColor *buttonTitleColor;
@property (nonatomic, strong) UIColor *buttonBackgroundColor;
@property (nonatomic, assign) CGFloat buttonCornerRadius;
@property (nonatomic, strong) UIFont *buttonTitleFont;

@property (nonatomic, strong) DFIButtonTableViewCellViewModel *cellViewModel;

@end

@implementation DFIButtonTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self commonInit];
}

- (void)commonInit {
    [self initViews];
    [self addViews];
    [self setupViewConstraints];
    [self setupViews];
    [self bindingViews];
}

- (void)initViews {
    _button = [UIButton buttonWithType:UIButtonTypeSystem];
}

- (void)addViews {
    [self.contentView addSubview:_button];
}

- (void)setupViewConstraints {
    [_button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView).with.insets(UIEdgeInsetsZero);
    }];
}

- (void)setupViews {
    [_button setTitle:self.buttonTitleString
             forState:UIControlStateNormal];
    [_button setTitleColor:self.buttonTitleColor
                  forState:UIControlStateNormal];
    
    _button.titleLabel.font = self.buttonTitleFont;
    
    [_button setBackgroundColor:self.buttonBackgroundColor];
    
}

- (void)bindingViews {
    
}

- (void)handleTapButton:(UIButton *)button {
    if (self.cellViewModel.buttonClickBlock) {
        self.cellViewModel.buttonClickBlock(self, button);
    }
}

- (void)configureCellWithInfo:(id)info option:(NSDictionary *)option {
    self.cellViewModel = info;
    
    self.buttonTitleString = self.cellViewModel.buttonTitleString;
    
    self.buttonTitleColor = option[kButtonTitleColorKey];
    self.buttonBackgroundColor = option[kButtonBackgroundColorKey];
    self.buttonTitleFont = option[kButtonTitleFontKey];
    self.buttonCornerRadius = [option[kButtonCornerRadiusKey] floatValue];
    self.buttonEdgeInsets = UIEdgeInsetsFromString(option[kButtonEdgeInsetsStringKey]);
    
    if ([option[kButtonHideCellBackgroundColorKey] boolValue]) {
        self.contentView.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
    } else {
        self.contentView.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor clearColor];
    }
    
    if (self.cellViewModel.target &&
        self.cellViewModel.selector) {
        
        [self.button addTarget:self.cellViewModel.target
                        action:self.cellViewModel.selector
              forControlEvents:UIControlEventTouchUpInside];
    }
#if __has_include(<ReactiveCocoa/ReactiveCocoa.h>)
    else if (self.cellViewModel.buttonCommand) {
        self.button.rac_command = self.cellViewModel.buttonCommand;
    }
#endif
    else {
        [_button addTarget:self
                    action:@selector(handleTapButton:)
          forControlEvents:UIControlEventTouchUpInside];
    }
    
    [self setupViews];
}

- (void)setButtonEdgeInsets:(UIEdgeInsets)buttonEdgeInsets {
    _buttonEdgeInsets = buttonEdgeInsets;
    
    [_button mas_updateConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView).with.insets(buttonEdgeInsets);
    }];
}

@end
