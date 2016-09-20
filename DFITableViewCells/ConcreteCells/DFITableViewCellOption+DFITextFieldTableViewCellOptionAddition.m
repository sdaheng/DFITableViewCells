//
//  DFITableViewCellOption+DFITextFieldTableViewCellOptionAddition.m
//  DFInfrastructure
//
//  Created by SDH on 3/18/16.
//  Copyright © 2016 com.dazhongcun. All rights reserved.
//

#import "DFITableViewCellOption+DFITextFieldTableViewCellOptionAddition.h"

#import <objc/runtime.h>

const char * kLeftViewKey  = "kLeftViewKey";
const char * kRightViewKey = "kRightViewKey";

const char * kLeftViewModeKey = "kLeftViewModeKey";
const char * kRightViewModeKey = "kRightViewModeKey";

@implementation DFITableViewCellOption (DFITextFieldTableViewCellOptionAddition)

- (void)setLeftView:(UIView *)leftView {
    objc_setAssociatedObject(self,
                             kLeftViewKey,
                             leftView,
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)leftView {
    return objc_getAssociatedObject(self, kLeftViewKey);
}

- (void)setRightView:(UIView *)rightView {
    objc_setAssociatedObject(self,
                             kRightViewKey,
                             rightView,
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)rightView {
   return objc_getAssociatedObject(self, kRightViewKey);
}

- (void)setLeftViewMode:(UITextFieldViewMode)leftViewMode {
    objc_setAssociatedObject(self,
                             kLeftViewModeKey,
                             @(leftViewMode),
                             OBJC_ASSOCIATION_ASSIGN);
}

- (UITextFieldViewMode)leftViewMode {
    return [objc_getAssociatedObject(self, kLeftViewModeKey) integerValue];
}

- (void)setRightViewMode:(UITextFieldViewMode)rightViewMode {
    objc_setAssociatedObject(self,
                             kRightViewModeKey,
                             @(rightViewMode),
                             OBJC_ASSOCIATION_ASSIGN);
}

- (UITextFieldViewMode)rightViewMode {
    return [objc_getAssociatedObject(self, kRightViewModeKey) integerValue];
}

@end
