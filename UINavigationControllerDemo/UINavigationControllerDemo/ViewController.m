//
//  ViewController.m
//  UINavigationControllerDemo
//
//  Created by ChirsLian on 15/5/18.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()
{
    ViewController2 *_vc2;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //添加导航栏的左按钮
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(btnClick:)];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.navigationItem.leftBarButtonItem.tag = 1;
    
    //添加按钮,点击按钮打开一个新的视图控制器
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(20, 100,200, 50);
    [btn setTitle:@"Start Vc2" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blackColor];
    btn.tag = 2;
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    _vc2 = [[ViewController2 alloc]init];
}

- (void)btnClick:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case 1:
            NSLog(@"Left button");
            break;
        case 2:
        {
            NSLog(@"start button");
            [self.navigationController pushViewController:_vc2 animated:YES];
        }
            
        default:
            break;
    }
    
    NSLog(@"Button Clicked");

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
