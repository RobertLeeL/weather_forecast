//
//  WeatherView.h
//  weatherForecast
//
//  Created by RobertLee on 2017/7/20.
//  Copyright © 2017年 RobertLee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherModel.h"

@interface WeatherView : UIView <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) WeatherModel *model;
@property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UITableView *tableView;

@end
