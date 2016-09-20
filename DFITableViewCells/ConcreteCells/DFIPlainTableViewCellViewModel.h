//
//  MerchantPlainTableViewCellViewModel.h
//  ReserveByCharming
//
//  Created by SDH on 10/29/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import "DFITableViewCells.h"

@interface DFIPlainTableViewCellViewModel : DFITableViewCellViewModel

@property (nonatomic, copy) NSString *imageNameString;

@property (nonatomic, copy) NSString *titleTextString;
@property (nonatomic, copy) NSString *detailTextString;

@property (nonatomic, assign) BOOL selectEnable;

@property (nonatomic, strong, readonly) id model;

- (instancetype)initWithTitleTextString:(NSString *)titleTextString
                        imageNameString:(NSString *)imageNameString;

- (instancetype)initWithTitleTextString:(NSString *)titleTextString
                       detailTextString:(NSString *)detailTextString
                        imageNameString:(NSString *)imageNameString;

- (instancetype)initWithTitleTextString:(NSString *)titleTextString
                       detailTextString:(NSString *)detailTextString
                        imageNameString:(NSString *)imageNameString
                                  model:(id)model;

@end
