//
//  WeatherModel.h
//  weather_forecast
//
//  Created by 李龙跃 on 2017/7/20.
//  Copyright © 2017年 Longyue Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherModel : NSObject

@property (nonatomic,strong) NSDictionary *result; //请求结果
@property (nonatomic,strong) NSDictionary *sk; //当前实况天气
@property (nonatomic,strong) NSDictionary *today; //今天天气
@property (nonatomic,strong) NSArray *future;  //未来几天天气

@end
