//
//  DFIButtonTableViewCellViewModel.h
//  DFInfrastructure
//
//  Created by SDH on 11/19/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import "DFITableViewCellViewModel.h"

#if __has_include (<ReactiveCocoa/ReactiveCocoa.h>)
#import <ReactiveCocoa/ReactiveCocoa.h>
#endif

NS_ASSUME_NONNULL_BEGIN
@interface DFIButtonTableViewCellViewModel : DFITableViewCellViewModel

@property (nonatomic, copy) NSString *buttonTitleString;

@property (nonatomic, copy) void (^buttonClickBlock)(UITableViewCell *cell, UIButton *button);

#if __has_include (<ReactiveCocoa/ReactiveCocoa.h>)
@property (nonatomic, strong) RACCommand *buttonCommand;
#endif

@property (nonatomic, strong, readonly) id target;
@property (nonatomic, assign, readonly) SEL selector;

- (instancetype)initWithButtonTitleString:(NSString *)buttonTitleString;

- (void)addTarget:(id)target action:(SEL)selector;

@end
NS_ASSUME_NONNULL_END
