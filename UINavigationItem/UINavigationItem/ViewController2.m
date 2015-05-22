//
//  ViewController2.m
//  UINavigationItem
//
//  Created by ChirsLian on 15/5/22.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    [self.navigationItem setTitle:@"VC2"];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc]initWithTitle:@"Return" style:UIBarButtonItemStylePlain target:self action:@selector(btnClicked:)];
    self.navigationItem.leftBarButtonItem = backItem;
    backItem.tag = 1;
}
- (void)btnClicked:(id)sender
{
    UIBarButtonItem *btn = (UIBarButtonItem *)sender;
    if(btn.tag ==1)
    {
        [self.navigationController popViewControllerAnimated:YES];
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
