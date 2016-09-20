//
//  DFISegmentedTableViewCellViewModel.h
//  MMYStylist
//
//  Created by SDH on 12/2/15.
//  Copyright © 2015 sdaheng. All rights reserved.
//

#import "DFITableViewCells.h"

@interface DFISegmentedTableViewCellViewModel : DFITableViewCellViewModel

@property (nonatomic, copy) NSString *titleString;

@property (nonatomic, copy) NSArray *titlesForSegmentedControl;
@property (nonatomic, assign) NSInteger selectedIndex;

- (instancetype)initWithTitle:(NSString *)titleString
    titlesForSegmentedControl:(NSArray *)titlesForSegmentedControl
            defaulSelectIndex:(NSUInteger)selectIndex;

@end
