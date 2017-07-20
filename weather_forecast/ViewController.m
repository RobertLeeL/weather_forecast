//
//  ViewController.m
//  weather_forecast
//
//  Created by 李龙跃 on 2017/7/19.
//  Copyright © 2017年 Longyue Li. All rights reserved.
//

#import "ViewController.h"
#import "WeatherView.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height


@interface ViewController ()

@property (nonatomic,strong) WeatherView *weatherView;

@end

@implementation ViewController

- (WeatherView *)weatherView {
    if (_weatherView == nil) {
        _weatherView = [[WeatherView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    }
    return _weatherView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.weatherView];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"bg_fog_day"]];
    [self.view addSubview:imageView];
    [self.view bringSubviewToFront:self.weatherView];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
