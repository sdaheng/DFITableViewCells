//
//  DFISegmentedTableViewCellViewModel.m
//  MMYStylist
//
//  Created by SDH on 12/2/15.
//  Copyright © 2015 sdaheng. All rights reserved.
//

#import "DFISegmentedTableViewCellViewModel.h"

@implementation DFISegmentedTableViewCellViewModel

- (instancetype)initWithTitle:(NSString *)titleString
    titlesForSegmentedControl:(NSArray *)titlesForSegmentedControl
            defaulSelectIndex:(NSUInteger)selectIndex {
    DFITableViewCellConfigure *configure = [[DFITableViewCellConfigure alloc]
                                            initWithReuseIdentifier:NSStringFromClass([self class])];
    self = [super initWithCellConfigure:configure];
    
    if (self) {
        _titlesForSegmentedControl = titlesForSegmentedControl;
        _titleString = titleString;
        _selectedIndex = selectIndex;
    }
    
    return self;
}

@end
