//
//  ABLoadingView.h
//  Model
//
//  Created by ice on 15-2-2.
//  Copyright (c) 2015年 tongbu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ABLoadingView : UIView
/**
 *  添加loadingView
 *
 *  @param view     loadingView添加在view上
 *  @param title    文字
 *  @param image    图片
 *  @param animated 是否动画添加
 *
 *  @return loadingView
 */
+ (ABLoadingView *)setOnView:(UIView *)view withTitlle:(NSString *)title withImage:(UIImage *)image animated:(BOOL)animated;

/**
 *  添加loadingView
 *
 *  @param view     loadingView添加在view上
 *  @param title    文字
 *  @param image    图片
 *  @param animated 是否动画添加
 *  @param size     指定loadingView大小
 *
 *  @return loadingView
 */
+ (ABLoadingView *)setOnView:(UIView *)view withTitlle:(NSString *)title withImage:(UIImage *)image animated:(BOOL)animated suggestSize:(CGSize)size;

/**
 *  移除loadingView
 *
 *  @param view     loadingView所在的父view
 *  @param animated 是否动画移除
 */
+ (void)removeLoadingViewFormView:(UIView*)view animated:(BOOL)animated;

@end
