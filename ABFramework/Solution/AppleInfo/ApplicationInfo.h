//
//  ApplicationInfo.h
//  ABFramework
//
//  Created by ice on 15-2-9.
//  Copyright (c) 2015年 ice. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ApplicationInfo : NSObject
/**
 *  获取应用开发版本号
 *
 *  @return 开发版本号(CFBundleVersion)
 */
+ (NSString *)applicationDevVersion;

/**
 *  获取应用发行版本号
 *
 *  @return 发行版本号(CFBundleShortVersionString)
 */
+ (NSString *)applicationReleaseVersion;

/**
 *  获取应用应用名称
 *
 *  @return 应用名称(CFBundleName)
 */
+ (NSString *)applicationName;

/**
 *  获取应用显示名称
 *
 *  @return 应用显示名称(CFBundleDisplayName)
 */
+ (NSString *)applicationDisplayName;

/**
 *  获取应用sku
 *
 *  @return 应用sku(CFBundleIdentifier)
 */
+ (NSString *)applicationSku;

@end
