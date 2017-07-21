//
//  CityTableViewController.h
//  weatherForecast
//
//  Created by RobertLee on 2017/7/21.
//  Copyright © 2017年 RobertLee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CityGroup.h"

typedef void(^MyBlock)(NSString *cityName);

@interface CityTableViewController : UITableViewController

@property (nonatomic,copy) MyBlock block;
@end
