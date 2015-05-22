//
//  ViewController2.m
//  UINavigationBarDemo
//
//  Created by ChirsLian on 15/5/22.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(20, 100, 200, 50);
    [btn setTitle:@"Pop to vc" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor greenColor];
    btn.tag = 1;
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)btnClicked:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    if(btn.tag == 1)
    {
        //显示导航栏
        [self.navigationController setNavigationBarHidden:NO animated:YES];
        
        NSArray *arr = self.navigationController.viewControllers;
        [self.navigationController popToViewController:[arr objectAtIndex:0] animated:YES];
    }
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
