//
//  MerchantPlainTableViewCellViewModel.m
//  ReserveByCharming
//
//  Created by SDH on 10/29/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import "DFIPlainTableViewCellViewModel.h"

#import "DFITableViewCells.h"

@implementation DFIPlainTableViewCellViewModel

- (instancetype)initWithTitleTextString:(NSString *)titleTextString
                        imageNameString:(NSString *)imageNameString {
    
    DFITableViewCellConfigure *configure = [[DFITableViewCellConfigure alloc]
                                            initWithReuseIdentifier:NSStringFromClass([self class])];
    
    self = [super initWithCellConfigure:configure];
    
    if (self) {
        _titleTextString = titleTextString;
        _imageNameString = imageNameString;
        _selectEnable = YES;
    }
    
    return self;
}

- (instancetype)initWithTitleTextString:(NSString *)titleTextString
                       detailTextString:(NSString *)detailTextString
                        imageNameString:(NSString *)imageNameString {
    
    self = [self initWithTitleTextString:titleTextString
                         imageNameString:imageNameString];
    
    if (self) {
        _detailTextString = detailTextString;
    }
    
    return self;
}

- (instancetype)initWithTitleTextString:(NSString *)titleTextString
                       detailTextString:(NSString *)detailTextString
                        imageNameString:(NSString *)imageNameString
                                  model:(id)model {
    
    self = [self initWithTitleTextString:titleTextString
                        detailTextString:detailTextString
                         imageNameString:imageNameString];
    
    if (self) {
        _model = model;
    }
    
    return self;
}

- (NSString *)description {
    return self.cellConfigure.reuseIdentifierString;
}

@end
