//
//  ZHViewController.m
//  ZH6_27UIView
//
//  Created by Edward on 13-6-27.
//  Copyright (c) 2013年 ZH. All rights reserved.
//

#import "ZHViewController.h"
#import "ZHCustomUILabel.h"
#import "ZHCustomImageView.h"
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
    
    [siztofitTestLabel sizeToFit];
    //sizetofit得到最适合当前数字的尺寸

    //sizeThatFits 计算并返回一个最好的适应接收者子视图的大小
    CGSize thatFitsSize = [siztofitTestLabel sizeThatFits:siztofitTestLabel.frame.size];
    CGRect labelFrame = {{0,0},{thatFitsSize.width,thatFitsSize.height}};
    [siztofitTestLabel setFrame:labelFrame];
    
    [backgroundView addSubview:siztofitTestLabel];
    [self.view addSubview:backgroundView];
    
    
    [self performSelector:@selector(viewHierachyTest) withObject:nil afterDelay:2.0f];
    
    
    // Custom UILabel
    ZHCustomUILabel *zhCustomLabel = [[ZHCustomUILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 30)];
    zhCustomLabel.center = self.view.center;
    zhCustomLabel.text = @"zhCustomLabel";
    [zhCustomLabel setTextColor:[UIColor greenColor]];
    [zhCustomLabel sizeToFit];
    [self.view addSubview:zhCustomLabel];
    
    // Custm UIImageView
    ZHCustomImageView *zhCustomImageView = [[ZHCustomImageView alloc] initWithFrame:CGRectMake(150, 240, 150, 120)];
    [zhCustomImageView setBackgroundColor:[UIColor yellowColor]];
    [zhCustomImageView setImage:[UIImage imageNamed:@"image"]];
    
    // 内容模式左下角
    //[zhCustomImageView setContentMode:UIViewContentModeBottomLeft];
    
    // 内容模式底部
    //[zhCustomImageView setContentMode:UIViewContentModeBottom];
    
    // 内容模式右下角
    //[zhCustomImageView setContentMode:UIViewContentModeBottomRight];
    
    // 内容模式中心
    //[zhCustomImageView setContentMode:UIViewContentModeCenter];
    
    // 内容模式左边
    //[zhCustomImageView setContentMode:UIViewContentModeLeft];
    
    // 内容模式重画,强制系统调用视图的drawRect:方法来响应几何结构的变化
    //[zhCustomImageView setContentMode:UIViewContentModeRedraw];
    
    // 内容模式居右
    //[zhCustomImageView setContentMode:UIViewContentModeRight];
    
    // 内容模式缩放填充
    //[zhCustomImageView setContentMode:UIViewContentModeScaleAspectFill];
    
    // 内容模式缩放适应，保持横纵比例
    //[zhCustomImageView setContentMode:UIViewContentModeScaleAspectFit];
    
    // ??????与UIViewContentModeScaleAspectFill有何区别
    //[zhCustomImageView setContentMode:UIViewContentModeScaleToFill];
    
    // 内容模式上部
    //[zhCustomImageView setContentMode:UIViewContentModeTop];
    
    // 内容模式左上角
    //[zhCustomImageView setContentMode:UIViewContentModeTopLeft];
    
    // 内容模式右上角
    [zhCustomImageView setContentMode:UIViewContentModeTopRight];
    
    //[zhCustomImageView.image resizableImageWithCapInsets:UIEdgeInsetsMake(2, 2, 0, 0) resizingMode:UIImageResizingModeTile];
    zhCustomImageView.clipsToBounds = YES;
    [self.view addSubview:zhCustomImageView];
    [zhCustomImageView setNeedsDisplay];
    
    
    // Check deference between bounds and frame
    NSLog(@"zhCustomImageView.bounds:%@",NSStringFromCGRect(zhCustomImageView.bounds));
    
    NSLog(@"zhCustomImageView.frame:%@",NSStringFromCGRect(zhCustomImageView.frame));
    

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.view.transform = CGAffineTransformIdentity;
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:5.0f];
    self.view.transform = CGAffineTransformMakeRotation(1.34);
    [UIView commitAnimations];
    
    self.view.alpha = 0.5;
    self.view.backgroundColor = [UIColor colorWithRed:0.378 green:0.649 blue:0.453 alpha:1.000];
}

- (void)viewHierachyTest {
    
    UIView *whiteView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 200)];
    [whiteView setBackgroundColor:[UIColor whiteColor]];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
    [redView setBackgroundColor:[UIColor redColor]];
    
    [self.view addSubview:whiteView];
    [self.view addSubview:redView];
    
   // NSLog(@"Print Subviews:%@",self.view.subviews);
    
    // Now exchange two subviews above
    [self.view bringSubviewToFront:redView];
   // NSLog(@"Print Subviews again:%@",self.view.subviews);
    
    //Now bring the whiteview to back
    [self.view sendSubviewToBack:whiteView];
   // NSLog(@"Now the new sort is:%@",self.view.subviews);
    
    // Now remove the last view from superview
    [redView removeFromSuperview];
   // NSLog(@"After remove the redview,let's check it:%@",self.view.subviews);
    
    UIView *newRedView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    [newRedView setBackgroundColor:[UIColor redColor]];
    
    // Thoses three method test the insertSubView: 
    [self.view insertSubview:newRedView aboveSubview:whiteView];
    
    [self.view insertSubview:newRedView atIndex:0];
    
    [self.view insertSubview:newRedView belowSubview:whiteView];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderValueChange:(id)sender {
    self.view.transform = CGAffineTransformMakeRotation(((UISlider *)sender).value);
    
}
@end
