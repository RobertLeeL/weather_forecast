//
//  ViewController.m
//  weatherForecast
//
//  Created by RobertLee on 2017/7/19.
//  Copyright © 2017年 RobertLee. All rights reserved.
//

//2e05ad6065d9247c7e2e70b7e176fb0a

#import "ViewController.h"
#import "AFNetworking.h"
#import "WeatherView.h"
#import "WeatherModel.h"


#define kWidth [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height


@interface ViewController ()

@property (nonatomic,strong) AFHTTPSessionManager *manager;
@property (nonatomic,strong) WeatherView *weatherView;


@end

@implementation ViewController

- (WeatherView *)weatherView {
    if (_weatherView == nil) {
        _weatherView = [[WeatherView alloc]initWithFrame:CGRectMake(0, 0, kWidth, kHeight)];
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
