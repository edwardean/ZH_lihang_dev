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


// If you subclass UIView directly, your implementation of this method does not need to call super. However, if you are subclassing a different view class, you should call super at some point in your implementation.
- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    self.layer.cornerRadius = 4.0f;
    self.layer.borderWidth = 2;
    self.layer.borderColor = [UIColor lightGrayColor].CGColor;
}

- (void)drawTextInRect:(CGRect)rect {
    UIEdgeInsets insets = UIEdgeInsetsMake(0, 1, 0, 0);
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}

- (void)drawRect:(CGRect)rect forViewPrintFormatter:(UIViewPrintFormatter *)formatter {
    [super drawRect:rect forViewPrintFormatter:formatter];
}
@end
