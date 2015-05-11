//
//  ViewController.m
//  UIViewDemo
//
//  Created by ChirsLian on 15/5/10.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *_backView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
     *一个视图只能有一个父视图,可以有多个子视图
     */
    
    UIView *view1 = [[UIView alloc]init];
    view1.frame = CGRectMake(20, 20, 200, 100);
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc]init];
    view2.frame = CGRectMake(120, 20, 200, 200);
    view2.backgroundColor = [UIColor blueColor];
    //透明度
    view2.alpha = 0.6;
    [self.view addSubview:view2];
    
    UIView *view3 = [[UIView alloc]init];
    view3.frame = CGRectMake(50, 50, 100, 200);
    view3.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view3];
    
    UIView *view4 = [[UIView alloc]init];
    view4.frame = CGRectMake(100, 100, 100, 100);
    view4.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view4];
    
    //将某一个层放在最下层
    [self.view sendSubviewToBack:view4];//view4-view1-view2-view3
    //将某一个层放在最上层
    [self.view bringSubviewToFront:view2];//view4-view1-view3-view2
    
    UIView *view5 = [[UIView alloc]init];
    view5.frame = CGRectMake(30, 200, 100, 200);
    view5.backgroundColor = [UIColor orangeColor];
    //将一个视图放置在另一个视图之上
    //[self.view insertSubview:view5 aboveSubview:view1];
    
    //将一个视图放置在另一个视图之下
    //[self.view insertSubview:view5 belowSubview:view2];
    
    //将一个视图放置在指定层
    //[self.view insertSubview:view5 atIndex:4];
    
    //将两个视图的层次相互交换
    [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:2];
    
    
    //获取父视图
    UIView *superView = view2.superview;
    superView.backgroundColor = [UIColor blackColor];
    
    //获取子视图
    //NSArray *subViews = view1.subviews;
    
    UIView *blueView = [[UIView alloc]init];
    blueView.frame = CGRectMake(20, 200, 200, 100);
    blueView.backgroundColor = [UIColor blueColor];
    //自动剪裁子类,超出父类的部分剪掉
    blueView.clipsToBounds = YES;
    [self.view addSubview:blueView];
    
    UIView *redView = [[UIView alloc]init];
    redView.frame = CGRectMake(20, 50, 200, 200);
    redView.backgroundColor = [UIColor redColor];
    redView.alpha = 0.8;
    [blueView addSubview:redView];
    
    //自动布局
     _backView= [[UIView alloc]init];
    _backView.frame = CGRectMake(20, 350, 120, 120);
    _backView.backgroundColor = [UIColor blackColor];
    _backView.autoresizesSubviews = YES;
    [self.view addSubview:_backView];
    
    UIView *topView = [[UIView alloc]init];
    topView.frame= CGRectMake(10,10, 100, 100);
    topView.backgroundColor = [UIColor cyanColor];
    /*
     自动布局,一下几种方法属于位或关系,
     UIViewAutoresizingFlexibleWidth 子视图的宽度跟随父视图的宽度发生形变
     UIViewAutoresizingFlexibleHeight
     UIViewAutoresizingFlexibleTopMargin 上边在发生改变
     UIViewAutoresizingFlexibleBottomMargin 下边距不断在改变
     UIViewAutoresizingFlexibleRightMargin 右边距在发生改变
     UIViewAutoresizingFlexibleLeftMargin 左边距在发生改变
     */
    topView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleWidth;
    [_backView addSubview:topView];
    
    //定时器,每隔0.5秒_backView 长宽各加10
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(timeout) userInfo:nil repeats:YES];
    
    
}
- (void)timeout
{
    _backView.frame = CGRectMake(_backView.frame.origin.x, _backView.frame.origin.y, _backView.frame.size.width +10, _backView.frame.size.height + 10);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
