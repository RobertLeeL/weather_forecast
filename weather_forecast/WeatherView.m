//
//  WeatherView.m
//  weather_forecast
//
//  Created by 李龙跃 on 2017/7/20.
//  Copyright © 2017年 Longyue Li. All rights reserved.
//

#import "WeatherView.h"


#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@implementation WeatherView


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
        [self createUI];
    }
    return self;
}


- (void)createUI {
    UILabel *cityName = [[UILabel alloc]initWithFrame:CGRectMake(50, 40,kScreenWidth - 100 , 40)];
    cityName.text = @"深圳市";
    cityName.tag = 10;
    cityName.font = [UIFont systemFontOfSize:35];
    cityName.textColor = [UIColor whiteColor];
    cityName.textAlignment = NSTextAlignmentCenter;
    [self addSubview:cityName];
    
    UILabel *tempLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, kScreenWidth - 100, 40)];
    tempLabel.text = @"37°";
    tempLabel.tag = 11;
    tempLabel.font = [UIFont systemFontOfSize:35];
    tempLabel.textColor = [UIColor whiteColor];
    tempLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:tempLabel];
    
    UILabel *weekLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 200, 60, 30)];
    weekLabel.text = @"星期四";
    [self addSubview:weekLabel];
    
    //今天label
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(80, 200, 40, 30)];
    label.text = @"今天";
    [self addSubview:label];
    
    UILabel *lineLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 226, kScreenWidth, 0.5)];
    lineLabel.backgroundColor = [UIColor grayColor];
    [self addSubview:lineLabel];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
