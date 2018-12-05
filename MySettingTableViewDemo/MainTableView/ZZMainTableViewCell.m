//
//  ZZMainTableViewCell.m
//  MySettingTableViewDemo
//
//  Created by 张张 on 2018/11/30.
//  Copyright © 2018年 张张. All rights reserved.
//

#import "ZZMainTableViewCell.h"
@interface ZZMainTableViewCell ()

@property (nonatomic, strong) UILabel * titleTextLabel;
@property (nonatomic, strong) UILabel * detailContextTextLabel;
@end

@implementation ZZMainTableViewCell
+ (ZZMainTableViewCell *)cellWithReuseIdentifier:(NSString *)reuseIdentifier tableView:(UITableView *)tableView{
    
    ZZMainTableViewCell * mainCell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (mainCell == nil) {
        mainCell = [[ZZMainTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
        mainCell.accessoryType = UITableViewCellAccessoryNone;
    }
    return mainCell;
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self creatUI];
    }
    return self;
}
// 布局 数据
- (void)setLayoutModel:(ZZBaseLayoutModel *)layoutModel{
    _layoutModel = layoutModel;
    self.titleTextLabel.text = layoutModel.titleText;
    self.detailContextTextLabel.text = layoutModel.detailText;
    
}
// 样式
-(void)setStyleModel:(ZZBaseStyleModel *)styleModel{
 
    _styleModel = styleModel;
    self.contentView.backgroundColor = styleModel.backgroundColor;
    self.titleTextLabel.font = styleModel.textFont;
    self.titleTextLabel.textColor = styleModel.textColor;
    self.detailContextTextLabel.font = styleModel.detailTextFont;
    self.detailContextTextLabel.textColor = styleModel.detailTextColor;
    
}
- (void)creatUI{

    
    UILabel * textLabel = [[UILabel alloc]init];
    textLabel.adjustsFontSizeToFitWidth = YES;
    textLabel.textAlignment = NSTextAlignmentLeft;
    [self.contentView addSubview:textLabel];
    [textLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top);
        make.left.equalTo(self.contentView.mas_left).offset(20);
        make.right.equalTo(self.contentView.mas_right).offset(-50);
    }];
    self.titleTextLabel = textLabel;
    
    UILabel * detailTextLabel = [[UILabel alloc]init];
    detailTextLabel.textAlignment = NSTextAlignmentLeft;
    [self.contentView addSubview:detailTextLabel];
    [detailTextLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleTextLabel.mas_bottom);
        make.left.equalTo(self.contentView.mas_left).offset(20);
        make.bottom.equalTo(self.contentView.mas_bottom);
        make.right.equalTo(self.contentView.mas_right).offset(-50);

    }];
    self.detailContextTextLabel = detailTextLabel;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
