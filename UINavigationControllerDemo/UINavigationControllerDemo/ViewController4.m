//
//  ViewController4.m
//  UINavigationControllerDemo
//
//  Created by ChirsLian on 15/5/21.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController4.h"

@interface ViewController4 ()

@end

@implementation ViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor purpleColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(20, 50, 200, 100);
    btn.backgroundColor = [UIColor whiteColor];
    [btn setTitle:@"pop to Root" forState:UIControlStateNormal];
    btn.tag = 1;
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(20, 160, 200, 100);
    btn2.backgroundColor = [UIColor redColor];
    [btn2 setTitle:@"pop to Vc2" forState:UIControlStateNormal];
    btn2.tag = 2;
    [btn2 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
}
- (void)btnClicked:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == 1) {
        //跳转到第一个视图控制器
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
    else if(btn.tag ==2)
    {
        //viewControllers  能够娶到所有的师徒控制器的实例,
        //视图控制器在数组中的顺序为视图控制器在导航栏控制器栈中德顺序
        //传递进去的视图控制器必须存在于是同控制器栈中
        NSArray *arr = self.navigationController.viewControllers;
        //跳转到第二个视图控制器
        [self.navigationController popToViewController:[arr objectAtIndex:1] animated:YES];
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
