//
//  ViewController.m
//  UIButtonDemo
//
//  Created by ChirsLian on 15/5/6.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"
#import "MyButton.h"

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
    
    //设置圆角按钮,测试 Xcode6.3 并没有看到圆角
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(20, 80, 200, 50);
    [btn2 setTitle:@"Button2" forState:UIControlStateNormal];
    btn2.backgroundColor = [UIColor blueColor];
    [btn2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn2.tag = 2;
    
    //使用其他对象的方法作为按钮事件,一下方法会导致程序崩溃,待查证
//    MyClass *myClass = [[MyClass alloc]init];
//    [btn2 addTarget:myClass action:@selector(Report) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn2];
    
    
    UIButton *btn3 =[UIButton buttonWithType:UIButtonTypeContactAdd];
    btn3.frame = CGRectMake(20, 140, 200, 50);
    [btn3 setTitle:@"Button3" forState:UIControlStateNormal];
    btn3.backgroundColor = [UIColor whiteColor];
    btn3.tag = 3;
    [btn3 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    
    //不同按钮的类型,测试在 xcode6.3,并无看出差别
    UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
//    UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeInfoDark];
//    UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeInfoLight;
    btn4.frame = CGRectMake(20, 200, 200, 50);
    btn4.backgroundColor = [UIColor purpleColor];
    [btn4 setTitle:@"button4" forState:UIControlStateNormal];
    btn4.tintColor = [UIColor whiteColor];
    btn4.showsTouchWhenHighlighted = YES;
    btn4.tag = 4;
    [btn4 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn4];
    
    
    //自定义按钮
    UIButton *btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn5.frame = CGRectMake(20, 260, 300, 200);
    btn5.backgroundColor = [UIColor cyanColor];

    //设置背景图片,图片会被拉伸充满整个屏幕
    [btn5 setBackgroundImage:[UIImage imageNamed:@"gold-mayor-icon/mayor-book-icon.png"] forState:UIControlStateNormal];
    //点击时背景图片变暗,前提需要设置背景图片才有效
    btn5.adjustsImageWhenHighlighted = TRUE;
    
    //设置按钮上面的图片,不会被拉伸
    [btn5 setImage:[UIImage imageNamed:@"medialoot-round-social-icons/facebook.png"] forState:UIControlStateNormal];
    //设置标题文字,字体颜色
    [btn5 setTitle:@"Custom" forState:UIControlStateNormal];
    [btn5 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    
    
    //同时设置字体和按钮上的图片,会出现字和图片并排的情况,如果要想自定义按钮上的图片和文字位置关系,
    //重写 button 中的方法即可,
    //- (CGRect)titleRectForContentRect:(CGRect)contentRect;
    //- (CGRect)imageRectForContentRect:(CGRect)contentRect;
    //UIButton *btn6 = [MyButton buttonWithType:UIButtonTypeCustom];
    //需要注意的是 button 类型必须为 UIButtonTypeCustom 才有效
    
    
    btn5.tag = 5;
    [btn5 addTarget:self action:@selector(btnClick2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn5];
    
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
    else if(button.tag == 3)
    {
        NSLog(@"button3 is clicked");
    }
    else if(button.tag == 4)
    {
        NSLog(@"button4 is clicked");
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)btnClick2
{
    NSLog(@"Custom Button is clicked");
}

@end
