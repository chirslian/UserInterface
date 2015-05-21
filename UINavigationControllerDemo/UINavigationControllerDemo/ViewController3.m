//
//  ViewController3.m
//  UINavigationControllerDemo
//
//  Created by ChirsLian on 15/5/21.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController3.h"
#import "ViewController4.h"
@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(20, 50, 200, 100);
    btn.backgroundColor = [UIColor whiteColor];
    btn.tag = 1;
    [btn setTitle:@"Push vc4" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}

-(void)btnClicked:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == 1) {
        ViewController4 *vc4 = [[ViewController4 alloc]init];
        //转到下一个视图控制器
        [self.navigationController pushViewController:vc4 animated:YES];
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
