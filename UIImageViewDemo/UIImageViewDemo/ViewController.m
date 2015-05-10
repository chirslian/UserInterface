//
//  ViewController.m
//  UIImageViewDemo
//
//  Created by ChirsLian on 15/5/9.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *_viewImage2;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *image = [UIImage imageNamed:@"mayor-icon.png"];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    
    //设置为原图的大小
    //imageView.frame = CGRectMake(20, 20, image.size.width, image.size.height);
    
    //设置图片的大小,会被拉伸
    imageView.frame = CGRectMake(20, 20, 300, 150);
    imageView.backgroundColor = [UIColor whiteColor];
    
    //设置内容模式
    /*
     UIViewContentModeScaleToFill 充满整个屏幕,会被拉伸
     UIViewContentModeScaleAspectFill 按图片的比例填充,可能会超出imageview 的区域,
     UIViewContentModeScaleAspectFit 按图片的比例填充,不会超出 imageview 的区域
     */
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imageView];
    

    //将一系列的图片添加到数组中
    NSMutableArray *images  = [[NSMutableArray alloc]init ] ;
    for (int i = 0; i < 27; i ++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"face-icons-flat/smiley_%03d",i+1]];
        [images addObject:image];
    }

    _viewImage2 = [[UIImageView alloc]init];
    _viewImage2.frame = CGRectMake(20, 350, 300, 300);
    _viewImage2.backgroundColor = [UIColor whiteColor];
    //设置动画数组,设置要播放的图片的数组
    _viewImage2.animationImages = images;
    //设置动画播放的周期
    _viewImage2.animationDuration = 5;
    //设置播放次数,0为无限循环
    _viewImage2.animationRepeatCount = 0;
    [self.view addSubview:_viewImage2];
    
    UIButton *startBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [startBtn setTitle:@"Start" forState:UIControlStateNormal];
    startBtn.frame = CGRectMake(20, 280, 150, 50);
    startBtn.backgroundColor = [UIColor greenColor];
    startBtn.tag = 1;
    [startBtn addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startBtn];
    
    UIButton *stopBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [stopBtn setTitle:@"Stop" forState:UIControlStateNormal];
    stopBtn.backgroundColor = [UIColor redColor];
    stopBtn.frame = CGRectMake(180, 280, 150, 50);
    stopBtn.tag = 2;
    [stopBtn addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:stopBtn];
}

- (void) buttonClicked:(id)sender
{
    UIButton *button = (UIButton *)sender;
    switch (button.tag) {
        case 1:
            //判断是否在动画中
            if (!_viewImage2.isAnimating) {
                //启动动画
                [_viewImage2 startAnimating];
            }
            //TODO
            break;
        case 2:
            if (_viewImage2.isAnimating) {
                //关闭动画
                [_viewImage2 stopAnimating];
            }
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
