//
//  ViewController.m
//  UIViewControllerDemo
//
//  Created by ChirsLian on 15/5/14.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController.h"
#import "SubViewController.h"

@interface ViewController ()
{
    SubViewController *_svc;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect rect = self.view.frame;
    NSLog(@"rect.x = %.3f",rect.origin.x);
    NSLog(@"rect.y = %.3f",rect.origin.y);
    NSLog(@"rect.w = %.3f",rect.size.width);
    NSLog(@"rect.h = %.3f",rect.size.height);
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"Click" forState:UIControlStateNormal];
    btn.frame = CGRectMake(20, 20, 200, 50);
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor blackColor];
    [self.view addSubview:btn];
    
    _svc = [[SubViewController alloc]init];
}

- (void)btnClick:(id)sender
{
    NSLog(@"Button clicked");
    
    //设置切换效果
    /*
     UIModalTransitionStyleCoverVertical 垂直覆盖->默认
     UIModalTransitionStyleFlipHorizontal 水平翻转
     UIModalTransitionStyleCrossDissolve 渐变
     UIModalTransitionStylePartialCurl 翻页
     */
    _svc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    //跳转到对话窗体
    [self presentViewController:_svc animated:YES completion:^{
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
