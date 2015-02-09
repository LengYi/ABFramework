//
//  ABViewController+LoadingView.h
//  Model
//
//  Created by ice on 15-2-2.
//  Copyright (c) 2015年 tongbu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ABViewController.h"

@interface ABViewController (LoadingView)
/**
 *  为ViewController添加loadingView
 */
- (void)addLoadingView;

/**
 *  为ViewController添加loadingView
 *
 *  @param size 指定loadingView的大小
 */
- (void)addLoadingViewWithSize:(CGSize)size;

/**
 *  移除ViewController的loadingView
 *
 *  @param animated 是否动画移除loadingView
 */
- (void)removeLoadingViewWithAnimated:(BOOL)animated;

@end
