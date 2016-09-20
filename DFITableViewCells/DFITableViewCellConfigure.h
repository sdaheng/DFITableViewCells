//
//  DFITableViewCellConfigure.h
//  DFInfrastructure
//
//  Created by SDH on 12/11/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DFITableViewCellOption.h"

@interface DFITableViewCellConfigure : NSObject

@property (nonatomic, copy, readonly) NSString *reuseIdentifierString;

@property (nonatomic, strong) __kindof DFITableViewCellOption *cellOption;

+ (instancetype)new  NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier NS_DESIGNATED_INITIALIZER; 

@end
