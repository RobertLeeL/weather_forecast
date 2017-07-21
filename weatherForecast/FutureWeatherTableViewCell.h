//
//  FutureWeatherTableViewCell.h
//  weatherForecast
//
//  Created by RobertLee on 2017/7/21.
//  Copyright © 2017年 RobertLee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FutureWeatherTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *weekLabel;
@property (weak, nonatomic) IBOutlet UIImageView *tempImage;
@property (weak, nonatomic) IBOutlet UILabel *temp;

@end
