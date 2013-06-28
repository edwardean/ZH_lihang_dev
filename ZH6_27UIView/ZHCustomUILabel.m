//
//  ZHCustomUILabel.m
//  ZH6_27UIView
//
//  Created by Edward on 13-6-28.
//  Copyright (c) 2013年 ZH. All rights reserved.
//

#import "ZHCustomUILabel.h"
#import <QuartzCore/QuartzCore.h>
@implementation ZHCustomUILabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}
- (void)setText:(NSString *)text {
    NSLog(@"%s",__func__);
    super.text = text;
}
- (void)text:(NSString *)text {
    super.text = text;
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    self.layer.cornerRadius = 4.0f;
    self.layer.borderWidth = 2;
    self.layer.borderColor = [UIColor lightGrayColor].CGColor;
}

- (void)drawTextInRect:(CGRect)rect {
    UIEdgeInsets insets = UIEdgeInsetsMake(0, 1, 0, 0);
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}
@end
