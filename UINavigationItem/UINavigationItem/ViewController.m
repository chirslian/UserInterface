//
//  ViewController.m
//  UINavigationItem
//
//  Created by ChirsLian on 15/5/22.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(20, 100, 200, 50);
    [btn setTitle:@"push vc2" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor redColor]];
    btn.tag = 1;
    [btn addTarget:self action:@selector(btnclicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    //设置导航栏的标题
    [self.navigationItem setTitle:@"VC1"];
    
    //设置标题视图
    UIView *view = [[UIView alloc]init];
    view.frame = CGRectMake(0, 0, 200, 44);//x,y 值无效.不会起作用,视图会自动居中
    view.backgroundColor = [UIColor cyanColor];
    [self.navigationItem setTitleView:view];
    
    //设置左右按钮
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc]initWithTitle:@"Left" style:UIBarButtonItemStylePlain target:self action:@selector(btnClicked:)];
    leftBtn.tag = 1;
    self.navigationItem.leftBarButtonItem = leftBtn;
    //UIBarButtonItemStylePlain 按钮的颜色会随着导航条的颜色变化,
    //UIBarButtonItemStyleDone  按钮一直处于蓝色
    
    //添加多个按钮到导航条右侧的,顺序由右到左
    UIBarButtonItem *rightBtn1 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(btnClicked:)];
    rightBtn1.tag = 2;
    UIBarButtonItem *rightBtn2 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(btnClicked:)];
    rightBtn2.tag = 3;
    NSArray *rightBtns = [NSArray arrayWithObjects:rightBtn1,rightBtn2 , nil];
    self.navigationItem.rightBarButtonItems = rightBtns;
    
    
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
}

-(void)btnClicked:(id)sender
{
    UIBarButtonItem *item = (UIBarButtonItem *)sender;
    if(item.tag == 1)
    {
        NSLog(@"Left Button Clicked");
    }
    else if(item.tag == 2)
    {
        NSLog(@"Right Button Clicked");
    }
}

- (void)btnclicked:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == 1) {
        ViewController2 *vc2 = [[ViewController2 alloc]init];
        [self.navigationController pushViewController:vc2 animated:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
