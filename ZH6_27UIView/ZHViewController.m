//
//  ZHViewController.m
//  ZH6_27UIView
//
//  Created by Edward on 13-6-27.
//  Copyright (c) 2013年 ZH. All rights reserved.
//

#import "ZHViewController.h"

@interface ZHViewController ()

@end

@implementation ZHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIView *backgroundView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 50, 30)];
    [backgroundView setBackgroundColor:[UIColor orangeColor]];
    
    UILabel *siztofitTestLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 30)];
    [siztofitTestLabel setText:@"这是一个关于XXX的神秘故事"];
    NSLog(@"BeforeSizeToFit:%@",NSStringFromCGRect(siztofitTestLabel.frame));
    [siztofitTestLabel sizeToFit];
    //sizetofit得到最适合当前数字的尺寸
    NSLog(@"AfterSizeToFit:%@",NSStringFromCGRect(siztofitTestLabel.frame));
    [backgroundView addSubview:siztofitTestLabel];
    [self.view addSubview:backgroundView];
    
    //sizeThatFits 计算并返回一个最好的适应接收者子视图的大小
    CGSize thatFitsSize = [siztofitTestLabel sizeThatFits:siztofitTestLabel.frame.size];
    NSLog(@"%@",NSStringFromCGSize(thatFitsSize));
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.view.transform = CGAffineTransformIdentity;//CGAffineTransformMakeRotation(14.f);
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:5.0f];
    self.view.transform = CGAffineTransformMakeRotation(14.f);
    [UIView commitAnimations];
    self.view.alpha = 0.5;
    self.view.backgroundColor = [UIColor colorWithRed:0.378 green:0.649 blue:0.453 alpha:1.000];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
