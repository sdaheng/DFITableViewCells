//
//  MMYTableViewCellViewModel.h
//  MMY_Merchant
//
//  Created by SDH on 7/28/15.
//  Copyright (c) 2015 dazhongcun. All rights reserved.
//

#import "DFITableViewCellConfigure.h"

@interface DFITableViewCellViewModel : NSObject

@property (nonatomic, copy) NSString *tagString;

@property (nonatomic, strong) DFITableViewCellConfigure *cellConfigure;

- (instancetype)initWithCellConfigure:(DFITableViewCellConfigure *)cellConfigure;

@end
