//
//  ZZBaseStyleModel.h
//  MySettingTableViewDemo
//
//  Created by 张张 on 2018/11/30.
//  Copyright © 2018年 张张. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
// 样式model
@interface ZZBaseStyleModel : NSObject
@property (nonatomic, assign) CGFloat cellHeight;
@property (nonatomic, strong) UIColor * backgroundColor;

@property (nonatomic, strong) UIColor * textColor;
@property (nonatomic, strong) UIColor * detailTextColor;
@property (nonatomic, strong) UIColor * rightTextColor;

@property (nonatomic, strong) UIFont * textFont;
@property (nonatomic, strong) UIFont * detailTextFont;
@property (nonatomic, strong) UIFont * rightTextFont;

@property (nonatomic, strong) UIColor * switchColor;
@property (nonatomic, copy)   NSString * imageName;

- (instancetype)initDefaultStyle;
@end

NS_ASSUME_NONNULL_END
