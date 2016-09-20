//
//  DFITableViewCellOption.h
//  DFInfrastructure
//
//  Created by SDH on 12/11/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol UITableViewCellActionProtocol;

@protocol DFITableViewCellOption <NSObject>

@end

@interface DFITableViewCellOption : NSObject <DFITableViewCellOption>

@property (nonatomic, strong) UIStoryboard *storyboard;
@property (nonatomic, strong) UINavigationController *navigationController;
@property (nonatomic, strong) UIViewController *presentFromViewController;

@property (nonatomic, copy) NSString *storyboardIDString;

@property (nonatomic, strong) id needTransferViewModel;

@property (nonatomic, assign) id<UITableViewCellActionProtocol> cellActionDelegate;

@property (nonatomic, assign) UITableViewCellSelectionStyle cellSelectionStyle;
@property (nonatomic, assign) UITableViewCellAccessoryType  cellAccessoryType;
@property (nonatomic, strong) UIView *cellAccessoryView;

@end
