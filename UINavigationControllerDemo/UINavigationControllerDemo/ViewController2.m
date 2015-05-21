//
//  ViewController2.m
//  UINavigationControllerDemo
//
//  Created by ChirsLian on 15/5/18.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController3.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *pushBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    pushBtn.backgroundColor = [UIColor blueColor];
    [pushBtn setTitle:@"Push VC3" forState:UIControlStateNormal];
    pushBtn.tag = 1;
    [pushBtn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    pushBtn.frame = CGRectMake(20, 50, 200, 100);
    [self.view addSubview:pushBtn];
    
    UIButton *popBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    popBtn.backgroundColor = [UIColor redColor];
    [popBtn setTitle:@"Pop VC2" forState:UIControlStateNormal];
    popBtn.tag = 2;
    popBtn.frame = CGRectMake(20, 160, 200, 100);
    [popBtn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:popBtn];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)buttonClick:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case 1:
        {
            NSLog(@"Push vc3");
            ViewController3 *vc3 = [[ViewController3 alloc]init];
            [self.navigationController pushViewController:vc3 animated:YES];
        }
            break;
        case 2:
        {
            NSLog(@"Pop Vc2");
            [self.navigationController popToRootViewControllerAnimated:YES];
        }

            break;
        default:
            break;
    }
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
