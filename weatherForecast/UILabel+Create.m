//
//  UILabel+Create.m
//  weatherForecast
//
//  Created by RobertLee on 2017/7/21.
//  Copyright © 2017年 RobertLee. All rights reserved.
//

#import "UILabel+Create.h"

@implementation UILabel (Create)

//UILabel *cityName = [[UILabel alloc]initWithFrame:CGRectMake(50, 40,kScreenWidth - 100 , 40)];
//cityName.text = @"深圳市";
//cityName.tag = 10;
//cityName.font = [UIFont systemFontOfSize:35];
//cityName.textColor = [UIColor whiteColor];
//cityName.textAlignment = NSTextAlignmentCenter;
//[self addSubview:cityName];

+ (instancetype)createLabelWithFrame:(CGRect)frame andFontSize: (CGFloat)font tag:(NSInteger)tag {
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    label.font = [UIFont systemFontOfSize:font];
    label.tag = tag;
    label.textColor = [UIColor whiteColor];
    return label;
}
@end
