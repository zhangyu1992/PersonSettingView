//
//  ZZArrowTableViewCell.m
//  MySettingTableViewDemo
//
//  Created by 张张 on 2018/11/30.
//  Copyright © 2018年 张张. All rights reserved.
//

#import "ZZArrowTableViewCell.h"

@interface ZZArrowTableViewCell()
@property (nonatomic, strong) UIImageView * arrowImage;
@property (nonatomic, strong) UILabel * rightLabel;
@end

@implementation ZZArrowTableViewCell

+ (ZZArrowTableViewCell *)cellWithReuseIdentifier:(NSString *)reuseIdentifier tableView:(UITableView *)tableView{
    
    ZZArrowTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (cell == nil) {
        cell = [[ZZArrowTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    return cell ;
}

- (void)setStyleModel:(ZZBaseStyleModel *)styleModel{
    [super setStyleModel:styleModel];
    self.rightLabel.textColor = styleModel.rightTextColor;
    self.rightLabel.font = styleModel.rightTextFont;
}
- (void)setLayoutModel:(ZZBaseLayoutModel *)layoutModel{
    [super setLayoutModel:layoutModel];
    self.rightLabel.text = layoutModel.rightText;
}
- (void)creatUI{
    [super creatUI];
    UIImageView * arrowImageView = [[UIImageView alloc]init];
    arrowImageView.image = [UIImage imageNamed:@"ic_hs_tableView_arrow"];
    [self.contentView addSubview:arrowImageView];
    [arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView.mas_centerY);
        make.right.equalTo(self.contentView.mas_right).offset(-20);
        make.width.mas_equalTo(10);
        make.height.mas_equalTo(10);
    }];
    self.arrowImage = arrowImageView;
    
    UILabel * rightLabel = [[UILabel alloc]init];
    rightLabel.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:rightLabel];
    [rightLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top);
        make.right.equalTo(self.arrowImage.mas_left).offset(-10);
        make.bottom.equalTo(self.contentView.mas_bottom);
        make.width.lessThanOrEqualTo(@(100));
    }];
    self.rightLabel = rightLabel;
    
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
