//
//  ZHCustomFrame.h
//  28CustomFrame
//
//  Created by Edward on 13-6-28.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHCustomFrame : UIView

@property (nonatomic, assign) CGFloat x_;
@property (nonatomic, assign) CGFloat y_;
@property (nonatomic, assign) CGSize size_;
@property (nonatomic, assign) CGFloat width_;
@property (nonatomic, assign) CGFloat height_;
@property (nonatomic, assign) CGPoint center_;

- (id)initCustomViewWithX:(CGFloat)x
                        Y:(CGFloat)y
                    Width:(CGFloat)width
                   Height:(CGFloat)height;

@end
