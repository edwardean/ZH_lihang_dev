//
//  ZHUpdateTestView.m
//  UpdateSubViewsTest6_28
//
//  Created by Edward on 13-6-28.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHUpdateTestView.h"

@interface ZHUpdateTestView ()

@property (nonatomic, retain) UIView *subView;
@end
@implementation ZHUpdateTestView

@synthesize subView = subView_;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
      self.backgroundColor = [UIColor whiteColor];
      self.subView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
      [subView_ setBackgroundColor:[UIColor redColor]];
      [subView_ setCenter:self.center];
      [self addSubview:subView_];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
  NSLog(@"%s",__FUNCTION__);
}

- (CGSize)sizeThatFits:(CGSize)size {
  NSLog(@"%s",__FUNCTION__);
  return CGSizeMake(100, 20);
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  NSLog(@"%s",__FUNCTION__);
  [subView_ setFrame:CGRectMake(0, 200, 10, 100)];
}
@end
