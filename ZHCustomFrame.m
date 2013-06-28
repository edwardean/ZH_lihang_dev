//
//  ZHCustomFrame.m
//  28CustomFrame
//
//  Created by Edward on 13-6-28.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHCustomFrame.h"

@implementation ZHCustomFrame

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}

- (void)layoutSubviews {
  if (_center_.x!=0.0 && _center_.y!=0.0) {
    self.center = _center_;
  }
}

#pragma UIView
- (id)initCustomViewWithX:(CGFloat)x
                        Y:(CGFloat)y
                    Width:(CGFloat)width
                   Height:(CGFloat)height
{
  self.x_ = x;
  self.y_ = y;
  self.width_ = width;
  self.height_ = height;
  CGRect rect = {{_x_,_y_},{_width_,_height_}};
  self = [super initWithFrame:rect];
  if (self) {
    
  }
  return self;
}
@end
