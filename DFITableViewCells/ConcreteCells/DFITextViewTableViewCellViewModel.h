//
//  DFITextViewTableViewCellViewModel.h
//  MMYStylist
//
//  Created by SDH on 12/8/15.
//  Copyright © 2015 sdaheng. All rights reserved.
//

#import "DFITableViewCells.h"

@interface DFITextViewTableViewCellViewModel : DFITableViewCellViewModel

@property (nonatomic, copy) NSString *titleString;
@property (nonatomic, copy) NSString *valueString;

@property (nonatomic, assign) BOOL becomeFirstResponder;

- (instancetype)initWithTitleString:(NSString *)titleString
                        valueString:(NSString *)valueString;

@end
