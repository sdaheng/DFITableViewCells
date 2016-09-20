//
//  DFITextViewTableViewCell.m
//  MMYStylist
//
//  Created by SDH on 12/8/15.
//  Copyright © 2015 sdaheng. All rights reserved.
//

#import "DFITextViewTableViewCell.h"

#import <Masonry/Masonry.h>

#import "DFITextViewTableViewCellViewModel.h"

@interface DFITextViewTableViewCell () <UITableViewCellConfigureProtocol,
                                        UITextViewDelegate>

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UITextView *textView;

@property (nonatomic, strong) DFITextViewTableViewCellViewModel *cellViewModel;

@end

@implementation DFITextViewTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self setupViews];
    }
    
    return self;
}

- (void)setupViews {
   self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)configureCellWithInfo:(id)info option:(NSDictionary *)option {
    self.cellViewModel = info;
    
    self.titleLabel.text = self.cellViewModel.titleString;
    self.textView.text   = self.cellViewModel.valueString;
    
    if (self.cellViewModel.becomeFirstResponder) {
        [self.textLabel becomeFirstResponder];
    } else {
        [self.textLabel resignFirstResponder];
    }
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_titleLabel];

        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView.mas_leading).with.offset(15);
            make.top.equalTo(self.contentView.mas_top).with.offset(8);
        }];
    }
    
    return _titleLabel;
}

- (UITextView *)textView {
    if (!_textView) {
        _textView = [[UITextView alloc] init];
        [self.contentView addSubview:_textView];
        
        [_textView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView.mas_leading).with.offset(15);
            make.trailing.equalTo(self.contentView.mas_trailing).with.offset(-15);
            
            make.top.equalTo(self.titleLabel.mas_bottom).with.offset(8);
            make.bottom.equalTo(self.contentView.mas_bottom).with.offset(-8);
            
            make.height.equalTo(@(100));
        }];
        _textView.delegate = self;
    }
    
    return _textView;
}

- (void)textViewDidBeginEditing:(UITextView *)textView {
    if ([textView.text isEqualToString:@"说点什么吧"]) {
        textView.text = @"";
    }
}

- (void)textViewDidChange:(UITextView *)textView {
    self.cellViewModel.valueString = textView.text;
}

@end
