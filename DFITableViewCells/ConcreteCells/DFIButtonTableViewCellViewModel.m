//
//  DFIButtonTableViewCellViewModel.m
//  DFInfrastructure
//
//  Created by SDH on 11/19/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import "DFIButtonTableViewCellViewModel.h"

@interface DFIButtonTableViewCellViewModel ()

@property (nonatomic, strong) id target;
@property (nonatomic, assign) SEL selector;

@end

@implementation DFIButtonTableViewCellViewModel

- (instancetype)initWithButtonTitleString:(NSString *)buttonTitleString {
    self = [super initWithCellConfigure:[[DFITableViewCellConfigure alloc] initWithReuseIdentifier:NSStringFromClass([self class])]];
    if (self) {
        _buttonTitleString = buttonTitleString;
    }
    
    return self;
}

- (void)addTarget:(id)target action:(SEL)selector {
    self.target = target;
    self.selector = selector;
}

@end
