//
//  ZZBaseStyleModel.m
//  MySettingTableViewDemo
//
//  Created by 张张 on 2018/11/30.
//  Copyright © 2018年 张张. All rights reserved.
//

#import "ZZBaseStyleModel.h"

@implementation ZZBaseStyleModel
- (instancetype)initDefaultStyle{
    if (self = [super init]) {
        self.cellHeight = 60;
        self.backgroundColor = [UIColor whiteColor];
        self.textColor = [UIColor blackColor];
        self.detailTextColor = [UIColor darkGrayColor];
        self.rightTextColor = [UIColor lightGrayColor];
        
        self.textFont = [UIFont systemFontOfSize:20];
        self.detailTextFont = [UIFont systemFontOfSize:18];
        self.rightTextFont = [UIFont systemFontOfSize:18];
        
        self.switchColor = [UIColor blueColor];
        self.imageName = @"ic_hs_tableView_arrow";
    }
    return self;
}
@end
