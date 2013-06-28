//
//  ZHViewController.m
//  28CustomFrame
//
//  Created by Edward on 13-6-28.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHViewController.h"
#import "ZHCustomFrame.h"
@interface ZHViewController ()

@end

@implementation ZHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  
  ZHCustomFrame *testCustomView = [[ZHCustomFrame alloc] initCustomViewWithX:0 Y:0 Width:100 Height:20];
  [testCustomView setBackgroundColor:[UIColor orangeColor]];
  [testCustomView setCenter_:CGPointMake(100, 100)];
  [self.view addSubview:testCustomView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
