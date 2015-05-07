//
//  MyButton.m
//  UIButtonDemo
//
//  Created by ChirsLian on 15/5/7.
//  Copyright (c) 2015年 ChirsLian. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    return CGRectMake(10, 10, 140, 80);
}
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    return CGRectMake(150, 10, 100, 80);
}

@end
