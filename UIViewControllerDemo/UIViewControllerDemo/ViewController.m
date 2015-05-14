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
#if 0
    CGRect rect = self.view.frame;
    NSLog(@"rect.x = %.3f",rect.origin.x);
    NSLog(@"rect.y = %.3f",rect.origin.y);
    NSLog(@"rect.w = %.3f",rect.size.width);
    NSLog(@"rect.h = %.3f",rect.size.height);
#endif
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"Click" forState:UIControlStateNormal];
    btn.frame = CGRectMake(20, 20, 200, 50);
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor blackColor];
    [self.view addSubview:btn];
    
    _svc = [[SubViewController alloc]init];
    NSLog(@"view did load");
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
    SubViewController *svc = [[SubViewController alloc]init];
//    _svc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    //跳转到对话窗体
    [self presentViewController:svc animated:YES completion:^{
        
    }];
}

//实例化对象后调用
- (void)loadView
{
    [super loadView];
    NSLog(@"main ViewControl **load View");
}
//窗体即将显示 调用,注意 viewDidLoad 在此方法之前,在 loadview 之后
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear: animated];
    NSLog(@"main ViewController -- view will appear");
}
//窗体完全显示出来 调用
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"main ViewController -- view did appear");
}
//窗体即将消失
- (void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"main ViewController -- view will disapper");
}
//窗体完全消失 调用
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"main ViewController -- view did disappear");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
