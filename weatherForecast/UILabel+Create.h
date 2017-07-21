//
//  UILabel+Create.h
//  weatherForecast
//
//  Created by RobertLee on 2017/7/21.
//  Copyright © 2017年 RobertLee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Create)


+ (instancetype)createLabelWithFrame:(CGRect)frame andFontSize: (CGFloat)font tag:(NSInteger)tag;

@end
