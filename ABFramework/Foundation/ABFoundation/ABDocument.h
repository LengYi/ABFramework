//
//  ABDocument.h
//  TBAppleKitLib
//
//  Created by ice on 15-2-12.
//  Copyright (c) 2015年 Xiamen TongbuNetwork Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ABDocument : NSObject

/**
 *  获取设备cash路径  虚拟机:/tem 真机:
 *
 *  @return cash路径
 */
+ (NSString *)cachePath;

/**
 *  cash路径+fileName
 *
 *  @param fileName 文件名
 *
 *  @return cash路径+fileName
 */
+ (NSString *)cachePathWithFileName:(NSString *)fileName;

@end
