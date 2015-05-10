//
//  ViewController.m
//  UISliderDemo
//
//  Created by ChirsLian on 15/5/10.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UISlider *_slider;
}
@property (strong, nonatomic) IBOutlet UISlider *myslide;


@property (strong, nonatomic) IBOutlet UISlider *mySlider;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    _slider = [[UISlider alloc]init];
    _slider.frame = CGRectMake(20, 20, 300, 100);
    _slider.backgroundColor = [UIColor yellowColor];
    
    //设置滑块的值范围,默认值为0.0~1.0
    _slider.minimumValue = 0.0;
    _slider.maximumValue = 100.0;
    
    //设置滑块的最小值最大值图片,XCode6.3,设置无效果
//    _slider.minimumValueImage = [UIImage imageNamed:@"chirstmas-birdle-icon.png"];
//    _slider.maximumValueImage = [UIImage imageNamed:@"chirstmas-reindeer-icon.png"];
    
    //设置滑块轨道的颜色,以及滑块的颜色
    _slider.minimumTrackTintColor = [UIColor blueColor];
    _slider.maximumTrackTintColor = [UIColor greenColor];
    _slider.thumbTintColor = [UIColor cyanColor];
    
    //设置滑块启动后的值,并带有动画效果
    [_slider setValue:60.0 animated:YES];
    
    //添加滑块值改变触发事件
    _slider.tag = 1;
    [_slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_slider];
    
    self.mySlider.backgroundColor = [UIColor yellowColor];
    
    
}

- (void)sliderValueChanged:(id)sender
{
    UISlider *slider = (UISlider *)sender;
    switch (slider.tag) {
        case 1:
            NSLog(@"Slider value = %.3f",_slider.value);
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
