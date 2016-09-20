//
//  DFITableViewCellConfigure.m
//  DFInfrastructure
//
//  Created by SDH on 12/11/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import "DFITableViewCellConfigure.h"

@implementation DFITableViewCellConfigure

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    self = [super init];
    
    if (self) {
        _reuseIdentifierString = reuseIdentifier;
    }
    
    return self;
}

@end
