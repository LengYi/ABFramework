//
//  PlistReadAndWrite.h
//  TBAppleKitLib
//
//  Created by ice on 15-2-12.
//  Copyright (c) 2015年 Xiamen TongbuNetwork Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ABPlistReadAndWrite : NSObject 

#pragma mark - 单值存储
/**
 *  plist写入指定值
 *
 *  @param value 需要存储的值
 *  @param key   索引key
 *  @param path  plist的存储路径
 */
+ (void)writePlistValue:(id)value withKey:(NSString *)key withPlistPath:(NSString *)plistPath;

/**
 *  读取索引key对应的值
 *
 *  @param key  索引key
 *  @param path plist的存储路径
 *
 *  @return 索引key对应的值
 */
+ (id)readPlistWithKey:(NSString *)key withPlistPath:(NSString *)plistPath;

#pragma mark - 批量存储

/**
 *  批量写入plist值
 *
 *  @param dict      需要存储的批量值
 *  @param plistPath plist的存储路径
 */
+ (void)writePlistValue:(NSDictionary *)dict withPlistPath:(NSString *)plistPath;

/**
 *  获取所有plist值字典
 *
 *  @param plistPath plist的存储路径
 *
 *  @return 所有plist值字典
 */
+ (NSDictionary *)readPlistWithPath:(NSString *)plistPath;

@end
