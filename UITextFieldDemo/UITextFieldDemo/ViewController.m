//
//  ViewController.m
//  UITextFieldDemo
//
//  Created by ChirsLian on 15/5/11.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UITextField *_text2;
    UIButton *_btn;
}

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
    
    //
    _text2 = [[UITextField alloc]initWithFrame:CGRectMake(20, 200, 300, 150)];
    _text2.borderStyle = UITextBorderStyleRoundedRect;
    _text2.backgroundColor = [UIColor yellowColor];
    //开始编辑的时候自动清楚下内容
    _text2.clearsOnBeginEditing =  YES;
    //内容对其方式,垂直居中,等等其他
    _text2.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    //文字对其方式,以下设置为中间对其
    _text2.textAlignment = NSTextAlignmentCenter;
    //设置内容的滚动
    _text2.adjustsFontSizeToFitWidth = YES;
    //设置文字最小字号
    text.minimumFontSize = 1;
    //设置首字符是否大写
    _text2.autocapitalizationType = UITextAutocapitalizationTypeWords;
    //设置 return 的样式
    _text2.returnKeyType = UIReturnKeyJoin;
    _text2.delegate = self;
    _text2.clearButtonMode = UITextFieldViewModeUnlessEditing;
    [self.view addSubview:_text2];
    
    //添加一个控制器,点击控件外的回收键盘
    UIControl *control = [[UIControl alloc]init];
    control.frame = [[UIScreen mainScreen]bounds];
    //关联点击触发响应
    [control addTarget:self action:@selector(controlClicked) forControlEvents:UIControlEventTouchUpInside];
    //添加到视图上,这时候control 在视图的最上方,点击事件text2接受不到,因此需要将控制器放在 text2以下的,或者最底层
    [self.view addSubview:control];
    //将控制器放置在控件视图下
    [self.view insertSubview:control belowSubview:_text2];
    //将控制器放置在最底层
    //[self.view sendSubviewToBack:control];
    
    //在弹出的键盘会挡住底部的按钮,因此在弹出键盘的时候,有必要将按钮往上移动,键盘收起来的时候在放回原处
    _btn= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn.frame =CGRectMake(20, 500, 200, 50);
    _btn.backgroundColor = [UIColor yellowColor];
    [_btn setTitle:@"Login" forState:UIControlStateNormal];
    [self.view addSubview:_btn];
    
    //关于键盘的弹出和收起的通知
    //订阅键盘升起的通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow) name:UIKeyboardWillShowNotification object:nil];
    //订阅键盘回收的通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide) name:UIKeyboardWillHideNotification object:nil];
}

-(void )keyboardWillShow
{
    [UIView animateWithDuration:0.25 animations:^{
        _btn.frame = CGRectMake(20, 360, 200, 50);
    } completion:^(BOOL finished) {
    }];
}
-(void)keyboardWillHide
{
    [UIView animateWithDuration:0.25 animations:^{
        _btn.frame = CGRectMake(20, 500, 200, 50);
    } completion:^(BOOL finished) {
    }];
}

- (void) controlClicked
{
    [_text2 resignFirstResponder];
}

// return NO to disallow editing.
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    //允许编辑
    return YES;
}
// became first responder
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    //开始编辑
    NSLog(@"Did begin editing");
}
// return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    //允许结束编辑
    return YES;
}
// may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    //结束编辑时调用
    NSLog(@"end editing");
}

//// return NO to not change text
//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
//{
//    
//}
// called when clear button pressed. return NO to ignore (no notifications)
- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    //允许按清除按钮清除信息
    NSLog(@"allow to clear");
    return YES;
}
// called when 'return' key pressed. return NO to ignore
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //允许返回,放弃编辑
    NSLog(@"allow to return");
    [textField resignFirstResponder];//回收键盘
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
