//
//  UIViewSelectActionInterface.h
//  ReserveByCharming
//
//  Created by SDH on 10/31/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIView;

typedef void (^ViewDidSelectBlock)(__kindof UIView *view,
                                   id cellViewModel);

@protocol UIViewSelectActionInterface <NSObject>

@property (nonatomic, assign) BOOL showCheckmark;
@property (nonatomic, assign) BOOL alwaysShowAccessoryView;

@property (nonatomic, copy) ViewDidSelectBlock viewDidSelectBlock;

@end
