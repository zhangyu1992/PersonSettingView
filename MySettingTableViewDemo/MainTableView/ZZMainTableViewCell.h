//
//  ZZMainTableViewCell.h
//  MySettingTableViewDemo
//
//  Created by 张张 on 2018/11/30.
//  Copyright © 2018年 张张. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZZBaseStyleModel.h"
#import "ZZBaseLayoutModel.h"
#import "Masonry.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZZMainTableViewCell : UITableViewCell

@property (nonatomic, strong) ZZBaseStyleModel * styleModel;
@property (nonatomic, strong) ZZBaseLayoutModel * layoutModel;


- (void)creatUI;
+ (ZZMainTableViewCell *)cellWithReuseIdentifier:(NSString *)reuseIdentifier tableView:(UITableView *)tableView;
@end

NS_ASSUME_NONNULL_END
