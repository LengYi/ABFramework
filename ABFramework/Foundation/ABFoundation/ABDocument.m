//
//  ABDocument.m
//  TBAppleKitLib
//
//  Created by ice on 15-2-12.
//  Copyright (c) 2015年 Xiamen TongbuNetwork Technology Co., Ltd. All rights reserved.
//

#import "ABDocument.h"

@implementation ABDocument

+ (NSString *)cachePath {
    NSString *cachesPath = nil;
#if TARGET_IPHONE_SIMULATOR
    cachesPath = @"/tmp";
#else
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    if ([paths count] > 0) {
        cachesPath = [paths objectAtIndex:0];
    }
#endif
    return cachesPath;
}

+ (NSString *)cachePathWithFileName:(NSString *)fileName{
    NSAssert(fileName, @"文件名不能为空");
    
    NSString *filePath = [[self cachePath] stringByAppendingPathComponent:fileName];
    return filePath;
}

@end
