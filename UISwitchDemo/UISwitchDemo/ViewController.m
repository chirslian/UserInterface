//
//  ViewController.m
//  UISwitchDemo
//
//  Created by ChirsLian on 15/5/8.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //设置当前 view 背景颜色
    //self.view.backgroundColor = [UIColor whiteColor];
    
    UISwitch *mSwitch = [[UISwitch alloc]initWithFrame:CGRectMake(20, 20, 200, 50)];
    //设置按钮的背景图片
    //mSwitch.backgroundColor = [UIColor redColor];
    
    //设置关闭状态颜色
    mSwitch.tintColor = [UIColor yellowColor];
    //设置开启状态颜色
    mSwitch.onTintColor = [UIColor cyanColor];
    //设置圆形按钮颜色
    mSwitch.thumbTintColor = [UIColor redColor];
    
    //设置按钮事件方法
    [mSwitch addTarget:self action:@selector(switchClicked:) forControlEvents:UIControlEventTouchUpInside];
    mSwitch.tag = 1;
    [self.view addSubview:mSwitch];
    
    UISwitch *switchBtn2 = [[UISwitch alloc]initWithFrame:CGRectMake(20, 100, 200, 100)];
    //设置按钮的图片, xCode6.3设置无效....
    //设置按钮开机状态下的图片
    switchBtn2.onImage = [UIImage imageNamed:@"google+.png"];
    //设置按钮关闭状态下的图片
    switchBtn2.offImage = [UIImage imageNamed:@"google.png"];
    
    switchBtn2.tag = 2;
    [switchBtn2 addTarget:self action:@selector(switchClicked:) forControlEvents:UIControlEventValueChanged];
    
    //设置按钮为启动为开启状态,并且带有动画
    //注意的是,启动自动跳转为开启状态,但并不会触发按钮事件,不会执行 switchClicked 方法
    [switchBtn2 setOn:YES animated:YES];
    
    [self.view addSubview:switchBtn2];
    
}

- (void) switchClicked:(id)sender
{
    UISwitch *switchBtn = (UISwitch *)sender;
    switch (switchBtn.tag) {
        case 1:
            NSLog(@"switch button is clicked");
            if(switchBtn.isOn)//用于判断当前是否处于开状态,此标记只读,不可设置
            {
                NSLog(@"Button is activity");
            }
            else
            {
                NSLog(@"Button is unActivity");
            }
            break;
        case 2:
            NSLog(@"switch button2 is clicked");
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
