//
//  ViewController.m
//  UIButtonDemo
//
//  Created by ChirsLian on 15/5/6.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //设置按钮的位置
    btn1.frame = CGRectMake(20, 20, 200, 50);
    //设置按钮的内容
    [btn1 setTitle:@"Button1" forState:UIControlStateNormal];
    //设置背景颜色
    btn1.backgroundColor = [UIColor redColor];
    //设置字体颜色
    [btn1 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    //设置按钮高亮状态下的颜色
    [btn1 setTintColor:[UIColor greenColor]];
    //设置点击事件
    /**
     Target -- 执行某一个对象中的方法
     action -- 要执行的方法名
     ContralEvents -- 触发事件的形式
     */
    [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    //设置按键唯一标示
    btn1.tag = 1;
    //设置高亮状态下是否发光
    btn1.showsTouchWhenHighlighted =  YES;
    [self.view addSubview:btn1];
    
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(20, 80, 200, 50);
    [btn2 setTitle:@"Button2" forState:UIControlStateNormal];
    btn2.backgroundColor = [UIColor blueColor];
    [btn2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn2.tag = 2;
//    MyClass *myClass = [[MyClass alloc]init];
//    [btn2 addTarget:myClass action:@selector(Report) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn2];
    

}

- (void)Report
{
    NSLog(@"!View controller REPORT");
}
//按键触发执行的方法
- (void)btnClick:(id)sender
{
    UIButton *button = (UIButton *)sender;
    if(button.tag == 1)
    {//对应 button1
        NSLog(@"button1 is clicked");
    }
    else if(button.tag == 2)
    {
        NSLog(@"button2 is clicked");
//        MyClass *myclass = [[MyClass alloc]init];
//        [myclass Report];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
