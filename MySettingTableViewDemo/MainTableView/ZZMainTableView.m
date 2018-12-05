//
//  ZZMainTableView.m
//  MySettingTableViewDemo
//
//  Created by 张张 on 2018/11/30.
//  Copyright © 2018年 张张. All rights reserved.
//

#import "ZZMainTableView.h"
#import "ZZBaseLayoutModel.h"
#import "ZZMainTableViewCell.h"
#import "ZZBaseStyleModel.h"

@interface ZZMainTableView ()<UITableViewDelegate,UITableViewDataSource>

@end
@implementation ZZMainTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    if (self = [super initWithFrame:frame style:style]) {
        self.delegate = self;
        self.dataSource = self;
    }
    return self;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSArray * sectionArray = self.dataArray[section];

    return sectionArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray * sectionArray = self.dataArray[indexPath.section];
    ZZBaseLayoutModel * layoutModel = (ZZBaseLayoutModel *)sectionArray[indexPath.row];
    
    NSArray * sectionStyleArray = self.styleDataArray[indexPath.section];
    ZZBaseStyleModel * styleModel = (ZZBaseStyleModel *)sectionStyleArray[indexPath.row];
    
    Class cellClass = NSClassFromString(layoutModel.cellClass);
    ZZMainTableViewCell * cell = [cellClass cellWithReuseIdentifier:layoutModel.cellClass tableView:tableView];
    cell.layoutModel = layoutModel;
    cell.styleModel = styleModel;
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray * sectionStyleArray = self.styleDataArray[indexPath.section];
    ZZBaseStyleModel * styleModel = (ZZBaseStyleModel *)sectionStyleArray[indexPath.row];
    return styleModel.cellHeight;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataArray.count;

}
@end
