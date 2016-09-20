//
//  DFITextFieldTableViewCellViewModel.m
//  DFInfrastructure
//
//  Created by SDH on 11/19/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import "DFITextFieldTableViewCellViewModel.h"

@implementation DFITextFieldTableViewCellViewModel

- (instancetype)initWithTitleString:(NSString *)titleString
                          textValue:(NSString *)textValue {
    self = [super initWithCellConfigure:[[DFITableViewCellConfigure alloc] initWithReuseIdentifier:NSStringFromClass([self class])]];
    
    if (self) {
        _titleString = titleString;
        _textValue = textValue;
        
        _enableEditing = YES;
    }
    
    return self;
}

@end
