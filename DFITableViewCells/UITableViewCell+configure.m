//
//  UITableViewCell+configure.m
//  ReserveByCharming
//
//  Created by SDH on 15/3/6.
//  Copyright (c) 2015年 com.dazhongcun. All rights reserved.
//

#import "UITableViewCell+configure.h"
#import "UITableViewCellConfigureProtocol.h"

@implementation UITableViewCell (configure)

- (void)configureWithInfo:(id)info {
    [self configureWithInfo:info
                     option:nil];
}

- (void)configureWithInfo:(id)info option:(id)option {

    id <UITableViewCellConfigureProtocol> interface = self;
    
    if (interface &&
        [interface respondsToSelector:@selector(configureCellWithInfo:option:)]) {
        [interface configureCellWithInfo:info option:option];
    }
}

@end
