//
//  DFIButtonTableViewCell.h
//  DFInfrastructure
//
//  Created by SDH on 11/19/15.
//  Copyright © 2015 com.dazhongcun. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString * const kButtonTitleStringKey;
extern NSString * const kButtonTitleColorKey;
extern NSString * const kButtonBackgroundColorKey;
extern NSString * const kButtonCornerRadiusKey;
extern NSString * const kButtonTitleFontKey;

//value like @"{3.0(top),8.0(left),4.0(bottom),5.0(right)}"
extern NSString * const kButtonEdgeInsetsStringKey;

//value is BOOL type NSNumber
extern NSString * const kButtonHideCellBackgroundColorKey;

extern NSString * const kButtonEnableKey;

@interface DFIButtonTableViewCell : UITableViewCell

@end
