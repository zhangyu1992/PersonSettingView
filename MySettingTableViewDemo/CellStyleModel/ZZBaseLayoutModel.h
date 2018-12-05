//
//  ZZBaseLayoutModel.h
//  MySettingTableViewDemo
//
//  Created by 张张 on 2018/11/30.
//  Copyright © 2018年 张张. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
// 布局model
@interface ZZBaseLayoutModel : NSObject
@property (nonatomic, copy) NSString * reuseIdentifier;// 重用标识符
@property (nonatomic, copy) NSString * cellClass;// cell的类型
@property (nonatomic, copy) NSString * titleText;// 主标题
@property (nonatomic, copy) NSString * detailText;// 副标题
@property (nonatomic, copy) NSString * rightText;// cell右侧文字

// 数据模型
@property (nonatomic, copy) NSDictionary * dataDict;

@end

NS_ASSUME_NONNULL_END
