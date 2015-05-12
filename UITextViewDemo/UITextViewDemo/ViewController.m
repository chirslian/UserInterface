//
//  ViewController.m
//  UITextViewDemo
//
//  Created by ChirsLian on 15/5/12.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UITextView *_textView;
    UITextField *_textField;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _textView = [[UITextView alloc]initWithFrame:CGRectMake(20, 20, 300, 100)];
    //设置背景颜色
    _textView.backgroundColor = [UIColor grayColor];
    //设置字体大小
    _textView.font = [UIFont boldSystemFontOfSize:30];
    //设置文本内容
    _textView.text = @"Do any additional setup after loading the view, typically from a nib.";
    
    //设置是否允许编辑,默认为可允许编辑
    _textView.editable = true;
    [self.view addSubview:_textView];
    
    _textField = [[UITextField alloc]initWithFrame:CGRectMake(20, 150, 200, 100)];
    _textField.backgroundColor = [UIColor redColor];
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:_textField];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(20, 250, 200, 100);
    [btn setTitle:@"Send" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

//点击按钮将 textField 中的文本信息追加到 textView 中
- (void)btnClick:(id)sender
{
    _textView.text = [_textView.text stringByAppendingFormat:@"\n%@",_textField.text];
    NSUInteger length = _textView.text.length;
    _textView.selectedRange = NSMakeRange(length, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
