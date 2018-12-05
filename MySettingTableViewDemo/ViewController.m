//
//  ViewController.m
//  MySettingTableViewDemo
//
//  Created by 张张 on 2018/11/30.
//  Copyright © 2018年 张张. All rights reserved.
//

#import "ViewController.h"
#import "ZZMainTableView.h"
#import "ZZBaseStyleModel.h"
#import "ZZBaseLayoutModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ZZBaseLayoutModel * layoutModel = [[ZZBaseLayoutModel alloc]init];
    layoutModel.cellClass = @"ZZSwitchTableViewCell";
    layoutModel.titleText = @"录像";
    layoutModel.dataDict = @{@"isOn":@YES};
    
    ZZBaseLayoutModel * layoutModel1 = [[ZZBaseLayoutModel alloc]init];
    layoutModel1.cellClass = @"ZZMainTableViewCell";
    layoutModel1.titleText = @"会议结束后，请登录meet.263.net,在会后记录中下载录像";
    
    ZZBaseLayoutModel * layoutModel2 = [[ZZBaseLayoutModel alloc]init];
    layoutModel2.cellClass = @"ZZArrowTableViewCell";
    layoutModel2.titleText = @"视频布局";
    layoutModel2.rightText = @"自动";
    ZZBaseLayoutModel * layoutModel3 = [[ZZBaseLayoutModel alloc]init];
    layoutModel3.cellClass = @"ZZArrowTableViewCell";
    layoutModel3.titleText = @"自动轮询时间";
    layoutModel3.rightText = @"30秒";
    
    
    ZZBaseLayoutModel * layoutModel4 = [[ZZBaseLayoutModel alloc]init];
    layoutModel4.cellClass = @"ZZSwitchTableViewCell";
    layoutModel4.titleText = @"入会消息提示";
    ZZBaseLayoutModel * layoutModel5 = [[ZZBaseLayoutModel alloc]init];
    layoutModel5.cellClass = @"ZZSwitchTableViewCell";
    layoutModel5.titleText = @"退会消息提示";
    
    ZZBaseLayoutModel * layoutModel6 = [[ZZBaseLayoutModel alloc]init];
    layoutModel6.cellClass = @"ZZArrowTableViewCell";
    layoutModel6.titleText = @"视频质量";
    layoutModel6.rightText = @"自动";
    NSMutableArray * dataArray = [[NSMutableArray alloc]initWithArray:@[@[layoutModel,layoutModel1],@[layoutModel2,layoutModel3],@[layoutModel4,layoutModel5],@[layoutModel6]]];

    
    
    
    
    ZZBaseStyleModel * baseStyle1 = [[ZZBaseStyleModel alloc]initDefaultStyle];
    ZZBaseStyleModel * baseStyle2 = [[ZZBaseStyleModel alloc]initDefaultStyle];
    baseStyle2.backgroundColor = [UIColor whiteColor];
    baseStyle2.textColor = [UIColor lightGrayColor];
    
    ZZBaseStyleModel * baseStyle3 = [[ZZBaseStyleModel alloc]initDefaultStyle];
    ZZBaseStyleModel * baseStyle4 = [[ZZBaseStyleModel alloc]initDefaultStyle];
    ZZBaseStyleModel * baseStyle5 = [[ZZBaseStyleModel alloc]initDefaultStyle];
    ZZBaseStyleModel * baseStyle6 = [[ZZBaseStyleModel alloc]initDefaultStyle];
    ZZBaseStyleModel * baseStyle7 = [[ZZBaseStyleModel alloc]initDefaultStyle];

    NSMutableArray * styleArray = [[NSMutableArray alloc]initWithArray:@[@[baseStyle1,baseStyle2],@[baseStyle3,baseStyle4],@[baseStyle5,baseStyle6],@[baseStyle7]]];

    
    ZZMainTableView * mainTableView = [[ZZMainTableView alloc]initWithFrame:CGRectMake(0, 44, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 44) style:UITableViewStyleGrouped];
    mainTableView.dataArray = dataArray;
    mainTableView.styleDataArray = styleArray;
    [mainTableView reloadData];
    [self.view addSubview:mainTableView];
    
}


@end
