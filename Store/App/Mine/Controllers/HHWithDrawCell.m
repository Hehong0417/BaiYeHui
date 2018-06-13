//
//  HHWithDrawCell.m
//  Store
//
//  Created by User on 2018/4/10.
//  Copyright © 2018年 User. All rights reserved.
//

#import "HHWithDrawCell.h"

@implementation HHWithDrawCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.bankName.font = FONT(14);
    self.bankNo.font = FONT(14);
    self.money.font = FONT(13);
    self.dateTime.font = FONT(13);
    self.status.font = FONT(13);
    self.title1.font = FONT(14);
    self.title2.font = FONT(14);
}

- (void)setWithDrawModel:(HHMineModel *)withDrawModel{
    
    _withDrawModel = withDrawModel;
    self.bankName.text =  withDrawModel.bank_name?withDrawModel.bank_name:@"";
    self.bankNo.text = withDrawModel.bank_cardno?withDrawModel.bank_cardno:@"";
    self.dateTime.text  = withDrawModel.datetime;
    self.money.text  =  [NSString stringWithFormat:@"%@(%@)",withDrawModel.real_money,withDrawModel.apply_money];
    self.status.text = withDrawModel.status;
}
@end
