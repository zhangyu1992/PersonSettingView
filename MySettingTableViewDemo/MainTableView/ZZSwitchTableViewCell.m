//
//  ZZSwitchTableViewCell.m
//  MySettingTableViewDemo
//
//  Created by 张张 on 2018/11/30.
//  Copyright © 2018年 张张. All rights reserved.
//

#import "ZZSwitchTableViewCell.h"
@interface ZZSwitchTableViewCell()
@property (nonatomic, strong) UISwitch * anSwitch;
@end
@implementation ZZSwitchTableViewCell

+ (ZZSwitchTableViewCell *)cellWithReuseIdentifier:(NSString *)reuseIdentifier tableView:(UITableView *)tableView{
    
    ZZSwitchTableViewCell * switchCell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (switchCell == nil) {
        switchCell = [[ZZSwitchTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
        switchCell.accessoryType = UITableViewCellAccessoryNone;
    }
    return switchCell ;
}

- (void)setStyleModel:(ZZBaseStyleModel *)styleModel{
    [super setStyleModel:styleModel];
    
}
- (void)setLayoutModel:(ZZBaseLayoutModel *)layoutModel{
    [super setLayoutModel:layoutModel];
    // 开关状态
    BOOL isOn = layoutModel.dataDict[@"isOn"];
    [self.anSwitch setOn:isOn];
    
}
- (void)creatUI{
    [super creatUI];
    
    UISwitch * anSwitch = [[UISwitch alloc]init];
    [anSwitch addTarget:self action:@selector(anSwitchChanged:) forControlEvents:UIControlEventValueChanged];
    [self.contentView addSubview:anSwitch];
    [anSwitch mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView.mas_centerY);
        make.right.equalTo(self.contentView.mas_right).offset(-20);
        make.width.mas_equalTo(40);
        make.height.mas_equalTo(30);
    }];
    self.anSwitch = anSwitch;
}
- (void)anSwitchChanged:(id)sender{
    UISwitch * anSwitch = (UISwitch *)sender;
    BOOL isButtonOn = [anSwitch isOn];
    self.layoutModel.dataDict = @{@"isOn":@(isButtonOn)};
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
