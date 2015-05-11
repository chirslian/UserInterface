//
//  ViewController.m
//  UITextFieldDemo
//
//  Created by ChirsLian on 15/5/11.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITextField *text = [[UITextField alloc]init];
    text.frame = CGRectMake(20, 20, 350, 50);
    //设置背景颜色
    text.backgroundColor = [UIColor blueColor];
    //设置边框样式
    text.borderStyle = UITextBorderStyleRoundedRect;
    //设置提示文字
    text.placeholder = @"input here";
    //设置密文输入
    text.secureTextEntry = YES;
    //设置键盘样式
    /*
     UIKeyboardTypeNumberPad 纯数字键盘
     UIKeyboardTypeEmailAddress 键盘设置为输入邮箱类型
     */
    text.keyboardType = UIKeyboardTypeNumberPad;
    
    //设置键盘风格
    text.keyboardAppearance = UIKeyboardAppearanceLight;
    
#if 0
    //设置键盘弹出视图,自定义弹出视图
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"22-1.jpg"]];
    imageView.frame = CGRectMake(0, 100, 375, 300);
    text.inputView = imageView;
#endif
    //左视图
    UIView *leftView = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 100, 100)];
    leftView.backgroundColor = [UIColor redColor];
    text.leftView = leftView;
    //设置左视图模式,这里设置为编辑状态下显示左视图
    text.leftViewMode = UITextFieldViewModeWhileEditing;
    
#if 0
    //右视图
    UIView *rightView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    rightView.backgroundColor = [UIColor yellowColor];
    text.rightView = rightView;
    text.rightViewMode = UITextFieldViewModeWhileEditing;
#endif
    
    //设置清楚按钮模式
    text.clearButtonMode = UITextFieldViewModeAlways;
    [self.view addSubview:text];
    
    //text2
    UITextField *text2 = [[UITextField alloc]initWithFrame:CGRectMake(20, 200, 300, 150)];
    text2.borderStyle = UITextBorderStyleRoundedRect;
    text2.backgroundColor = [UIColor yellowColor];
    //开始编辑的时候自动清楚下内容
    text2.clearsOnBeginEditing =  YES;
    
    //内容对其方式,垂直居中,等等其他
    text2.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    
    //文字对其方式,以下设置为中间对其
    text2.textAlignment = NSTextAlignmentCenter;

    
    //设置内容的滚动
    text2.adjustsFontSizeToFitWidth = YES;
    //设置文字最小字号
    text.minimumFontSize = 1;
    
    //设置首字符是否大写
    text2.autocapitalizationType = UITextAutocapitalizationTypeWords;
    
    //设置 return 的样式
    text2.returnKeyType = UIReturnKeyJoin;
    
    [self.view addSubview:text2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
