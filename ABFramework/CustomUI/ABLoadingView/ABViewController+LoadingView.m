//
//  ABViewController+LoadingView.m
//  Model
//
//  Created by ice on 15-2-2.
//  Copyright (c) 2015年 tongbu. All rights reserved.
//

#import "ABViewController+LoadingView.h"
#import "ABLoadingView.h"

@implementation ABViewController (LoadingView)

- (void)addLoadingView;{
    [self addLoadingViewWithSize:CGSizeZero];
}

- (void)addLoadingViewWithSize:(CGSize)size{
    [ABLoadingView setOnView:self.view
                  withTitlle:@"Loading..."
                   withImage:[UIImage imageNamed:@"loading_icon"]
                    animated:YES
                      suggestSize:size];
}

- (void)removeLoadingViewWithAnimated:(BOOL)animated{
    [ABLoadingView removeLoadingViewFormView:self.view animated:YES];
}

@end
