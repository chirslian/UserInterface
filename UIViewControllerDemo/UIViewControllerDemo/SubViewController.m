//
//  SubViewController.m
//  UIViewControllerDemo
//
//  Created by ChirsLian on 15/5/14.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "SubViewController.h"

@interface SubViewController ()

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(20, 20, 200, 50);
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"Click" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)btnClick:(id)sender
{
    NSLog(@"Button2 Clicked");
    //关闭当前对话窗体,回到上一级窗体
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

//窗体在实例化的时候调用
- (void)loadView
{
    [super loadView];
    NSLog(@"sub ViewControl **load View");
}
//窗体在显示之前调用
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear: animated];
    NSLog(@"sub ViewController -- view will appear");
}
//窗体从显示之前到完全显示后调用
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"sub ViewController -- view did appear");
}
//窗体即将消失
- (void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"sub ViewController -- view will disapper");
}
//窗体完全消失时调用
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"sub ViewController -- view did disappear");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
