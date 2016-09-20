//
//  UITableViewCellInterface.h
//  ReserveByCharming
//
//  Created by SDH on 15/3/6.
//  Copyright (c) 2015年 com.dazhongcun. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol UITableViewCellConfigureProtocol <NSObject>

@required
- (void)configureCellWithInfo:(id _Nullable)info
                       option:(NSDictionary * _Nullable)option;

@end
