//
//  WeatherModel.h
//  weatherForecast
//
//  Created by RobertLee on 2017/7/20.
//  Copyright © 2017年 RobertLee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherModel : NSObject

@property (nonatomic,strong) NSDictionary *sk;  //当前实况天气
@property (nonatomic,strong) NSDictionary *today;  //今天天气
@property (nonatomic,copy) NSArray *future; //未来今天天气



@end
