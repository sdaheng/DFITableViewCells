//
//  DFITextViewTableViewCellViewModel.m
//  MMYStylist
//
//  Created by SDH on 12/8/15.
//  Copyright © 2015 sdaheng. All rights reserved.
//

#import "DFITextViewTableViewCellViewModel.h"

@implementation DFITextViewTableViewCellViewModel

- (instancetype)initWithTitleString:(NSString *)titleString
                        valueString:(NSString *)valueString {
    
    self = [super init];
    
    if (self) {
        _titleString = titleString;
        _valueString = valueString;
    }
    
    return self;
}

@end
