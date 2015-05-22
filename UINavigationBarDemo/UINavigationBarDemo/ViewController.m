//
//  ViewController.m
//  UINavigationBarDemo
//
//  Created by ChirsLian on 15/5/22.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(20, 100, 200, 50);
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"push Second" forState:UIControlStateNormal];
    btn.tag = 1;
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    //设置导航栏的风格样式,共有4中风格
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    //设置导航栏背景颜色,只有设置背景为半透明的时候才有效
    self.navigationController.navigationBar.backgroundColor = [UIColor redColor];
    
    //iOS5 以后支持的,设置背景图片,设置图片图片过大不会被压缩
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"22-1.jpg"] forBarMetrics: UIBarMetricsDefault];
    
    //导航栏自动裁剪,超出导航栏的部分裁剪掉
    self.navigationController.navigationBar.clipsToBounds = YES;
    
    //隐藏导航栏的方法,默认为 NO,隐藏以后,视图控制器会向上延展
    //self.navigationController.navigationBarHidden = YES;
    //隐藏导航栏,带有动画效果
    //[self.navigationController setNavigationBarHidden:YES animated:YES];
    
    
 
}

- (void)btnClicked:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == 1) {
        ViewController2 *vc2 = [[ViewController2 alloc]init];
        [self.navigationController pushViewController:vc2 animated:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
