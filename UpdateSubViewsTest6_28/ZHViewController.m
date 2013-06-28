//
//  ZHViewController.m
//  UpdateSubViewsTest6_28
//
//  Created by Edward on 13-6-28.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHViewController.h"
#import "ZHUpdateTestView.h"
@interface ZHViewController ()
{
  BOOL isUpdated_;
}

@property (nonatomic, retain) ZHUpdateTestView *zhUpdateTestView;
@end

@implementation ZHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
  // Call -layputSubViews
  self.zhUpdateTestView = [[ZHUpdateTestView alloc] initWithFrame:CGRectMake(10, 50, 100, 100)];
  
  [_zhUpdateTestView setBackgroundColor:[UIColor greenColor]];
  // Call -layoutSbViews
  [self.view addSubview:_zhUpdateTestView];
  
  [self performSelector:@selector(callSizeToFit) withObject:nil afterDelay:3.0f];
}

- (void)callSizeToFit
{
  [_zhUpdateTestView sizeToFit];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
