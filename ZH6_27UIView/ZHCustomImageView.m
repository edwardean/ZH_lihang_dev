//
//  ZHCustomImageView.m
//  ZH6_27UIView
//
//  Created by Edward on 13-6-28.
//  Copyright (c) 2013年 ZH. All rights reserved.
//

#import "ZHCustomImageView.h"
#import <QuartzCore/QuartzCore.h>
@implementation ZHCustomImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    self.layer.cornerRadius = 4.0f;
    self.layer.masksToBounds = YES;
}


@end
