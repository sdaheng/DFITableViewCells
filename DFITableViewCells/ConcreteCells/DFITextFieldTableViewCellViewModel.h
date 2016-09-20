//
//  DFITextFieldTableViewCellViewModel.h
//  DFInfrastructure
//
//  Created by SDH on 11/19/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import "DFITableViewCellViewModel.h" 

@class DFITextFieldTableViewCellViewModel;

typedef void (^DFITextFieldCellTextDidChange)(DFITextFieldTableViewCellViewModel *cellViewModel);
typedef void (^DFITextFieldCellTextDidEndEditing)(DFITextFieldTableViewCellViewModel *cellViewModel);

@interface DFITextFieldTableViewCellViewModel : DFITableViewCellViewModel

@property (nonatomic, copy) NSString *titleString;
@property (nonatomic, copy) NSString *textValue;

@property (nonatomic, copy) NSString *placeholderString;

@property (nonatomic, assign) UIKeyboardType keyboardType;
@property (nonatomic, assign) BOOL secureTextEntry;

@property (nonatomic, assign) NSTextAlignment textAlignment;

@property (nonatomic, copy) DFITextFieldCellTextDidChange textDidChange;
@property (nonatomic, copy) DFITextFieldCellTextDidChange textDidEndEditing;

//default is YES
@property (nonatomic, assign) BOOL enableEditing;

- (instancetype)initWithTitleString:(NSString *)titleString
                          textValue:(NSString *)textValue;

@end
