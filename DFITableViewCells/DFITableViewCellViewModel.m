//
//  MMYTableViewCellViewModel.m
//  MMY_Merchant
//
//  Created by SDH on 7/28/15.
//  Copyright (c) 2015 dazhongcun. All rights reserved.
//

#import "DFITableViewCellViewModel.h"

@implementation DFITableViewCellViewModel

- (instancetype)initWithCellConfigure:(DFITableViewCellConfigure *)cellConfigure {
    self = [super init];
    
    if (self) {
        _cellConfigure = cellConfigure;
    }
    
    return self;
}

@end
