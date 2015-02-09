//
//  ABLoadingView.m
//  Model
//
//  Created by ice on 15-2-2.
//  Copyright (c) 2015年 tongbu. All rights reserved.
//

#import "ABLoadingView.h"

@implementation ABLoadingView

+ (ABLoadingView *)setOnView:(UIView *)view withTitlle:(NSString *)title withImage:(UIImage *)image animated:(BOOL)animated;
{
    return [self setOnView:view withTitlle:title withImage:image animated:animated suggestSize:CGSizeZero];
}

+ (ABLoadingView *)setOnView:(UIView *)view withTitlle:(NSString *)title withImage:(UIImage *)image animated:(BOOL)animated suggestSize:(CGSize)size
{
    if (!title)
    {
        title = @"";
    }
    
    if (size.width <= 0)
    {
        size.width = 0;
    }
    
    if (size.height <= 0)
    {
        size.height = 0;
    }
    
    ABLoadingView *loadingView = [[ABLoadingView alloc] init];
    loadingView.translatesAutoresizingMaskIntoConstraints = NO;
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    imageView.image = image;
    [loadingView addSubview:imageView];
    loadingView.backgroundColor = [UIColor greenColor];
    
    UILabel *tLabel = [[UILabel alloc] init];
    tLabel.translatesAutoresizingMaskIntoConstraints = NO;
    tLabel.text = title;
    tLabel.textAlignment = NSTextAlignmentCenter;
    [loadingView addSubview:tLabel];
    [view addSubview:loadingView];
    
    [loadingView addConstraint:[NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:loadingView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [loadingView addConstraint:[NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:loadingView attribute:NSLayoutAttributeCenterY multiplier:1 constant:-image.size.height / 4]];
    
    [loadingView addConstraint:[NSLayoutConstraint constraintWithItem:tLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:imageView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [loadingView addConstraint:[NSLayoutConstraint constraintWithItem:tLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:imageView attribute:NSLayoutAttributeBottom multiplier:1 constant:20]];
    
    [view addConstraint:[NSLayoutConstraint constraintWithItem:loadingView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [view addConstraint:[NSLayoutConstraint constraintWithItem:loadingView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    [view addConstraint:[NSLayoutConstraint constraintWithItem:loadingView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:size.width]];
    [view addConstraint:[NSLayoutConstraint constraintWithItem:loadingView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:size.height]];
    
    if (animated)
    {
        loadingView.alpha = 0;
        [UIView animateWithDuration:1 animations:^{
            loadingView.alpha = 1;
        }];
    }
    return loadingView;
}


+ (void)removeLoadingViewFormView:(UIView*)view animated:(BOOL)animated
{
    ABLoadingView *loadingView = nil;
    for (UIView *tView in view.subviews)
    {
        if ([tView isKindOfClass:[ABLoadingView class]])
        {
            loadingView = (ABLoadingView *)tView;
            break;
        }
    }
    
    if (loadingView)
    {
        if (animated)
        {
            [UIView animateWithDuration:0.3 animations:^{
                loadingView.alpha = 0;
            } completion:^(BOOL finished) {
                [loadingView removeFromSuperview];
            }];
        }else
        {
            [loadingView removeFromSuperview];
        }
    }
}

@end
