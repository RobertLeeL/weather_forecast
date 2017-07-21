//
//  WeatherView.m
//  weatherForecast
//
//  Created by RobertLee on 2017/7/20.
//  Copyright © 2017年 RobertLee. All rights reserved.
//

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

#import "WeatherView.h"
#import "FutureWeatherTableViewCell.h"

@interface WeatherView()

@property (nonatomic,strong) UIScrollView *dateScrollView;

@end

@implementation WeatherView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
        [self createUI];
    }
    return self;
}

//- (UIScrollView *)scrollView {
//    if (_scrollView == nil) {
//        _scrollView = [[UIScrollView alloc]init];
//    }
//    return _scrollView;
//}

//- (UITableView *)tableView {
//    if (!_tableView) {
//        _tableView = [[UITableView alloc]init];
//    }
//    return _tableView;
//}


- (void)createUI {
    UILabel *cityName = [[UILabel alloc]initWithFrame:CGRectMake(50, 80,kScreenWidth - 100 , 40)];
    cityName.text = @"深圳市";
    cityName.tag = 9;
    cityName.font = [UIFont systemFontOfSize:35];
    cityName.textColor = [UIColor whiteColor];
    cityName.textAlignment = NSTextAlignmentCenter;
    [self addSubview:cityName];
    
    UILabel *weatherLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 110,kScreenWidth - 100 , 40)];
    weatherLabel.text = @"多云转晴";
    weatherLabel.tag = 10;
    weatherLabel.font = [UIFont systemFontOfSize:15];
    weatherLabel.textColor = [UIColor whiteColor];
    weatherLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:weatherLabel];
    
    UILabel *tempLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 160, kScreenWidth - 100, 60)];
    tempLabel.text = @"37°";
    tempLabel.tag = 11;
    tempLabel.font = [UIFont systemFontOfSize:60];
    tempLabel.textColor = [UIColor whiteColor];
    tempLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:tempLabel];
    
    UILabel *weekLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 240, 60, 30)];
    weekLabel.text = @"星期四";
    weekLabel.textColor = [UIColor whiteColor];
    weekLabel.font = [UIFont systemFontOfSize:14];
    weekLabel.textAlignment = NSTextAlignmentLeft;
    weekLabel.tag = 12;
    [self addSubview:weekLabel];
    
    //今天label
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(80, 240, 40, 30)];
    label.text = @"今天";
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:14];
    [self addSubview:label];
    
    UILabel *lineLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 270, kScreenWidth, 0.5)];
    lineLabel.backgroundColor = [[UIColor alloc]initWithRed:117 / 255 green:174 / 255 blue:205 / 255 alpha:1];
    [self addSubview:lineLabel];
    
    _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 270.5, kScreenWidth, 70)];
    for (int i = 0; i <= 23; i++) {
        UILabel *timeLabel = [[UILabel alloc]init];
        timeLabel.frame = CGRectMake(5 + 50 * i, 5, 50, 20);
        timeLabel.text = [NSString stringWithFormat:@"%i时",i];
        timeLabel.font = [UIFont systemFontOfSize:10];
        timeLabel.textColor = [UIColor whiteColor];
        timeLabel.textAlignment = NSTextAlignmentCenter;
        timeLabel.tag = 20 + i;
        [_scrollView addSubview:timeLabel];
        
        
        UIImageView *weatherImageView = [[UIImageView alloc]initWithFrame:CGRectMake(5 + 50 * i, 25, 50, 30 )];
        weatherImageView.image = [UIImage imageNamed:@"0"];
        weatherImageView.contentMode = UIViewContentModeScaleAspectFit;
        weatherImageView.tag = 60 + i;
        [_scrollView addSubview:weatherImageView];
        
        UILabel *temp = [[UILabel alloc]init];
        temp.frame = CGRectMake(5 + 50 * i, 50, 50, 20);
        temp.text = [NSString stringWithFormat:@"%i°C",i / 10 + 20];
        temp.font = [UIFont systemFontOfSize:10];
        temp.textColor = [UIColor whiteColor];
        temp.textAlignment = NSTextAlignmentCenter;
        temp.tag = 100 + i;
        [_scrollView addSubview:temp];
    }
    _scrollView.contentSize = CGSizeMake(50 * 24 + 10 , 70 );
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.showsVerticalScrollIndicator = NO;
    [self addSubview:_scrollView];
    
    UILabel *lineLabel1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 345.5, kScreenWidth, 0.5)];
    lineLabel1.backgroundColor = [[UIColor alloc]initWithRed:117 / 255 green:174 / 255 blue:205 / 255 alpha:1];
    [self addSubview:lineLabel1];
    
    _dateScrollView = [[UIScrollView alloc]init];
    _dateScrollView.frame = CGRectMake(0, 346, kScreenWidth, kScreenHeight - 44 - 346);
    
    for (int i = 0; i < 7; i++) {
        UILabel *dateLabel = [[UILabel alloc]init];
        dateLabel.frame = CGRectMake(10, 5 + 25 * i, 100, 25);
        dateLabel.text = @"星期五";
        dateLabel.textAlignment = NSTextAlignmentLeft;
        dateLabel.font = [UIFont systemFontOfSize:13];
        dateLabel.textColor = [UIColor whiteColor];
        dateLabel.tag = 1000 + i;
        [_dateScrollView addSubview:dateLabel];
        
        UIImageView *dateWeatherImageView = [[UIImageView alloc]initWithFrame:CGRectMake(kScreenWidth / 2 , 5 + 25 * i, 50, 25)];
        dateWeatherImageView.image = [UIImage imageNamed:@"4"];
        dateWeatherImageView.contentMode = UIViewContentModeScaleAspectFit;
        [_dateScrollView addSubview:dateWeatherImageView];
        
        UILabel *dateTempLabel = [[UILabel alloc]initWithFrame:CGRectMake(kScreenWidth - 80, 5 + 25 * i, 80, 25)];
        dateTempLabel.text = @"27°C-39°C";
        dateTempLabel.textAlignment = NSTextAlignmentLeft;
        dateTempLabel.font = [UIFont systemFontOfSize:13];
        dateTempLabel.textColor = [UIColor whiteColor];
        dateTempLabel.tag = 1100 + i;
        [_dateScrollView addSubview:dateTempLabel];
    }
    
    UILabel *lineLabel2 = [[UILabel alloc]initWithFrame:CGRectMake(0, 185, kScreenWidth, 0.5)];
    lineLabel2.backgroundColor = [[UIColor alloc]initWithRed:117 / 255 green:174 / 255 blue:205 / 255 alpha:1];
    [_dateScrollView addSubview:lineLabel2];
    
    NSArray *nameArray = @[@"时间：",@"风向：",@"穿衣指数：",@"舒适度指数：",@"紫外线强度：",@"旅游指数：",@"干燥指数：",@"当前湿度：",@"晨练指数：",@"洗车指数："];
    for (int i = 0; i <10; i ++) {
        UILabel *resultLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 190 + i * 30, kScreenWidth / 2, 30)];
        resultLabel.text = nameArray[i];
        resultLabel.textColor = [UIColor whiteColor];
        resultLabel.textAlignment = NSTextAlignmentRight;
        resultLabel.font = [UIFont systemFontOfSize:13];
        resultLabel.tag = 1200 + i;
        [_dateScrollView addSubview:resultLabel];
    }
    _dateScrollView.contentSize = CGSizeMake(kScreenWidth, 7 * 25 + 10 + 30 * 10 + 10);
    _dateScrollView.showsVerticalScrollIndicator = NO;
    [self addSubview:_dateScrollView];
    
    UILabel *lineLabel3 = [[UILabel alloc]initWithFrame:CGRectMake(0, kScreenHeight - 44, kScreenWidth, 0.5)];
    lineLabel3.backgroundColor = [[UIColor alloc]initWithRed:117 / 255 green:174 / 255 blue:205 / 255 alpha:1];
    [self addSubview:lineLabel3];
    
    //pageViewController 和 城市按钮
    UIPageViewController *pageViewController = [[UIPageViewController alloc]init];
    UIPageControl *pageControl = [[UIPageControl alloc]init];
    pageControl.frame = CGRectMake(kScreenWidth / 4, kScreenHeight - 25, kScreenWidth / 2, 10);
    pageControl.numberOfPages = 5;
    pageControl.currentPage = 2;
    pageControl.pageIndicatorTintColor = [UIColor redColor];
    pageControl.currentPageIndicatorTintColor = [UIColor greenColor];
    
    [self addSubview:pageControl];
    
//    UIButton = 
    
#warning "warining 1"
    //未来几天天气是用UITableView表示还是用UILabel表示？
//    _tableView.delegate = self;
//    _tableView.dataSource = self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.model.future.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cellID";
    FutureWeatherTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[FutureWeatherTableViewCell alloc]init];
    }
    cell.weekLabel.text = _model.future[indexPath.row];
//    cell.imageView.image = [UIImage]
    return cell;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
