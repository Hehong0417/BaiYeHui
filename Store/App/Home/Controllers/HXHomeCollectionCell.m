//
//  HXHomeCollectionCell.m
//  Store
//
//  Created by User on 2018/1/3.
//  Copyright © 2018年 User. All rights reserved.
//

#import "HXHomeCollectionCell.h"

@implementation HXHomeCollectionCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    [self.goodImageV lh_setCornerRadius:0 borderWidth:0 borderColor:nil];
    [self.tagLabel lh_setCornerRadius:3 borderWidth:0 borderColor:nil];
    self.product_min_priceLabel.font = BoldFONT(14);
    self.product_s_intergralLabel.font = FONT(11);
    self.product_nameLabel.font = FONT(14);
}
- (void)setProductsModel:(HHhomeProductsModel *)productsModel{
    _productsModel = productsModel;
    self.product_nameLabel.text = productsModel.product_name;
    [self.goodImageV sd_setImageWithURL:[NSURL URLWithString:productsModel.product_icon]];
    self.product_min_priceLabel.text = [NSString stringWithFormat:@"¥ %@",productsModel.product_min_price];
    
    NSMutableAttributedString *attributeStr1 = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"赠送积分:%@",productsModel.product_s_intergral]];
    NSDictionary *attributeDict = [NSDictionary dictionaryWithObjectsAndKeys:FONT(11),NSFontAttributeName,
                                   KA0LabelColor,NSForegroundColorAttributeName,nil];
    [attributeStr1 addAttributes:attributeDict range:NSMakeRange(0, attributeStr1.length)];
    
    //添加图片
    NSTextAttachment *attach = [[NSTextAttachment alloc] init];
    attach.image = [UIImage imageNamed:@"icon_integral_default"];
    attach.bounds = CGRectMake(0, -1, WidthScaleSize_W(8), WidthScaleSize_H(10));
    NSAttributedString *attributeStr2 = [NSAttributedString attributedStringWithAttachment:attach];
    [attributeStr1 insertAttributedString:attributeStr2 atIndex:2];
    self.product_s_intergralLabel.attributedText = attributeStr1;
    
    
    if ([productsModel.product_type isEqualToString:@"0"]) {
        self.tagLabel.text = @"百";
    }else{
        self.tagLabel.text = @"惠";
    }

}
- (void)setGoodsModel:(HHCategoryModel *)goodsModel{
    
    _goodsModel = goodsModel;
    self.product_nameLabel.text = goodsModel.product_name;
    [self.goodImageV sd_setImageWithURL:[NSURL URLWithString:goodsModel.product_icon]];
    self.product_min_priceLabel.text = [NSString stringWithFormat:@"¥ %@",goodsModel.product_min_price];

    NSMutableAttributedString *attributeStr1 = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"赠送积分:%@",goodsModel.product_s_intergral]];
    NSDictionary *attributeDict = [NSDictionary dictionaryWithObjectsAndKeys:FONT(11),NSFontAttributeName,
                                   KA0LabelColor,NSForegroundColorAttributeName,nil];
    [attributeStr1 addAttributes:attributeDict range:NSMakeRange(0, attributeStr1.length)];
    
    //添加图片
    NSTextAttachment *attach = [[NSTextAttachment alloc] init];
    attach.image = [UIImage imageNamed:@"icon_integral_default"];
    attach.bounds = CGRectMake(0, -1, WidthScaleSize_W(8), WidthScaleSize_H(10));
    NSAttributedString *attributeStr2 = [NSAttributedString attributedStringWithAttachment:attach];
    [attributeStr1 insertAttributedString:attributeStr2 atIndex:2];
    self.product_s_intergralLabel.attributedText = attributeStr1;
    
    if ([goodsModel.product_type isEqualToString:@"0"]) {
        self.tagLabel.text = @"百";
    }else{
        self.tagLabel.text = @"惠";
    }
}


@end
