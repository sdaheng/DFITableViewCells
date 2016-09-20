//
//  DFITextFieldTableViewCell.m
//  DFInfrastructure
//
//  Created by SDH on 11/19/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import "DFITextFieldTableViewCell.h"

#import <Masonry/Masonry.h>

#import "UITableViewCellConfigureProtocol.h"

#import "DFITextFieldTableViewCellViewModel.h"
#import "DFITableViewCellOption+DFITextFieldTableViewCellOptionAddition.h"
#import "DFITableViewCellConfigure.h"

@interface DFITextFieldTableViewCell () <UITableViewCellConfigureProtocol,
                                         UITextFieldDelegate>

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UITextField *textField;

@property (nonatomic, strong) DFITextFieldTableViewCellViewModel *cellViewModel;

@end

@implementation DFITextFieldTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style
                reuseIdentifier:reuseIdentifier];
    
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
    [self setupViews];
}

- (void)setupViews {
    _textField.delegate = self;
    
    _textField.borderStyle = UITextBorderStyleNone;
    _textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    [self.textField addTarget:self
                       action:@selector(textFieldDidChange:)
             forControlEvents:UIControlEventEditingChanged];
}

- (void)configureCellWithInfo:(id)info option:(id)option {
    self.cellViewModel = info;
    self.textField.text = self.cellViewModel.textValue;
    self.textField.placeholder = self.cellViewModel.placeholderString;
    self.textLabel.text = self.cellViewModel.titleString;
    
    self.textField.keyboardType = self.cellViewModel.keyboardType;
    
    self.textField.leftView =
    self.cellViewModel.cellConfigure.cellOption.leftView;
    
    self.textField.rightView =
    self.cellViewModel.cellConfigure.cellOption.rightView;
    
    self.textField.rightViewMode =
    self.cellViewModel.cellConfigure.cellOption.rightViewMode;
    
    self.textField.leftViewMode =
    self.cellViewModel.cellConfigure.cellOption.leftViewMode;
    
    self.textField.secureTextEntry = self.cellViewModel.secureTextEntry;
    
    self.textField.textAlignment = self.cellViewModel.textAlignment;
    
    if (self.cellViewModel.cellConfigure.cellOption.cellAccessoryView) {
        self.accessoryView =
        self.cellViewModel.cellConfigure.cellOption.cellAccessoryView;
    }
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    return self.cellViewModel.enableEditing;
}

- (void)textFieldDidChange:(UITextField *)textField {
    self.cellViewModel.textValue = textField.text;
    if (self.cellViewModel.textDidChange) {
        self.cellViewModel.textDidChange(self.cellViewModel);
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (self.cellViewModel.textDidEndEditing) {
        self.cellViewModel.textDidEndEditing(self.cellViewModel);
    }
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_titleLabel];
        
        [_titleLabel setContentHuggingPriority:500
                                       forAxis:UILayoutConstraintAxisHorizontal];
        
        [_titleLabel setContentCompressionResistancePriority:1000
                                                     forAxis:UILayoutConstraintAxisHorizontal];
        
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView.mas_leading).with.offset(15);
            make.centerY.equalTo(self.contentView.mas_centerY);
        }];
    }
    return _titleLabel;
}

- (UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField alloc] init];
        [self.contentView addSubview:_textField];
        
        [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.titleLabel.mas_centerY);
            make.leading.equalTo(self.titleLabel.mas_trailing).with.offset(8).with.priorityHigh();
            make.trailing.equalTo(self.contentView.mas_trailing).with.offset(-8);
            make.top.equalTo(self.contentView.mas_top).with.offset(8);
            make.bottom.equalTo(self.contentView.mas_bottom).with.offset(-8);
        }];
    }
    return _textField;
}

@end
