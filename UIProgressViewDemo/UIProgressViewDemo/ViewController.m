//
//  ViewController.m
//  UIProgressViewDemo
//
//  Created by ChirsLian on 15/5/9.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIProgressView *pView = [[UIProgressView alloc] init];
    //进度条类型
    pView.progressViewStyle = UIProgressViewStyleDefault;
    //设置进度条长度
    pView.frame = CGRectMake(20, 50, 300, 100);
    //设置当前进度,0~1
   // pView.progress = 0.5;
    //设置进度条高亮颜色
    pView.progressTintColor = [UIColor redColor];
    //设置轨道颜色
    pView.trackTintColor = [UIColor blackColor];
    
    //设置进度条图片
    //pView.progressImage;
    
    //设置轨道的图片
    //pView.trackImage;
    
    //设置启动后进度位置,并带有动画效果
    [pView setProgress:0.8 animated:YES];
    
    [self.view addSubview:pView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
