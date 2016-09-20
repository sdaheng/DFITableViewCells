//
//  DFISegmentedTableViewCell.m
//  MMYStylist
//
//  Created by SDH on 12/2/15.
//  Copyright © 2015 sdaheng. All rights reserved.
//

#import "DFISegmentedTableViewCell.h"

#import "DFISegmentedTableViewCellViewModel.h"

@interface DFISegmentedTableViewCell () <UITableViewCellConfigureProtocol>

@property (nonatomic, strong) UISegmentedControl *segmentedControl;
@property (nonatomic, strong) DFISegmentedTableViewCellViewModel *cellViewModel;

@end

@implementation DFISegmentedTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self setupViews];
    }
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setupViews];
}

- (void)setupViews {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)registerObserver {
    [self.cellViewModel addObserver:self
                         forKeyPath:@"selectedIndex"
                            options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                            context:NULL];
}

- (void)configureCellWithInfo:(id)info option:(NSDictionary *)option {
    self.cellViewModel = info;
    
    self.textLabel.text = self.cellViewModel.titleString;
    
    [self.cellViewModel.titlesForSegmentedControl
     enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
         if ([obj isKindOfClass:[NSString class]]) {
             [self.segmentedControl insertSegmentWithTitle:obj
                                                   atIndex:idx
                                                  animated:YES];
         } else if ([obj isKindOfClass:[UIImage class]]) {
             [self.segmentedControl insertSegmentWithImage:obj
                                                   atIndex:idx
                                                  animated:YES];
         } else {
             *stop = YES;
         }
     }];
    
    self.segmentedControl.selectedSegmentIndex = self.cellViewModel.selectedIndex;
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary<NSKeyValueChangeKey,id> *)change
                       context:(void *)context {
    
    if ([keyPath isEqualToString:@"selectedIndex"]) {
        NSInteger selectedIndex = [change[NSKeyValueChangeNewKey] integerValue];
        self.segmentedControl.selectedSegmentIndex = selectedIndex;
    }
}

- (UISegmentedControl *)segmentedControl {
    if (!_segmentedControl) {
        _segmentedControl = [[UISegmentedControl alloc] initWithItems:nil];
        self.accessoryView = self.segmentedControl;

        [_segmentedControl addTarget:self
                              action:@selector(handleSegmentedControlDidChange:)
                    forControlEvents:UIControlEventValueChanged];
    }
    
    return _segmentedControl;
}

- (void)handleSegmentedControlDidChange:(UISegmentedControl *)segmentedControl {
    self.cellViewModel.selectedIndex = segmentedControl.selectedSegmentIndex;
}

- (void)prepareForReuse {
    [super prepareForReuse];
    
    [self.segmentedControl removeAllSegments];
}

- (void)dealloc {
    [self.cellViewModel removeObserver:self
                            forKeyPath:@"selectedIndex"];
}

@end
