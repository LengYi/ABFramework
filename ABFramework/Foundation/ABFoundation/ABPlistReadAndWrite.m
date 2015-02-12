//
//  TBPlist+expand.m
//  TBAppleKitLib
//
//  Created by ice on 15-2-12.
//  Copyright (c) 2015年 Xiamen TongbuNetwork Technology Co., Ltd. All rights reserved.
//

#import "ABPlistReadAndWrite.h"

@implementation ABPlistReadAndWrite

+ (void)writePlistValue:(id)value withKey:(NSString *)key withPlistPath:(NSString *)plistPath{
    NSAssert(value, @"写入plist的值不能为空");
    NSAssert(key && key.length > 0, @"写人plist的key不能为空");
    NSAssert(plistPath && plistPath.length > 0, @"plist的路径不能为空");
    
    if (plistPath){
        NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithContentsOfFile:plistPath];
        if (!dict) {
            dict = [NSMutableDictionary dictionary];
        }
        
        [dict setObject:value forKey:key];
        [dict writeToFile:plistPath atomically:YES];
    }
}

+ (id)readPlistWithKey:(NSString *)key withPlistPath:(NSString *)plistPath{
    NSAssert(key && key.length > 0, @"plist的key不能为空");
    NSAssert(plistPath && plistPath.length > 0, @"plist的路径不能为空");
    
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    id value = nil;
    if (dict) {
        value = [dict objectForKey:key];
    }
    
    return value;
}

+ (void)writePlistValue:(NSDictionary *)dict withPlistPath:(NSString *)plistPath{
    if (dict){
        NSArray *keyArray = dict.allKeys;
        for (NSString *keyString in keyArray) {
            id value = [dict objectForKey:keyString];
            [self writePlistValue:value withKey:keyString withPlistPath:plistPath];
        }
    }
}

+ (NSDictionary *)readPlistWithPath:(NSString *)plistPath
{
    NSAssert(plistPath && plistPath.length > 0, @"plist的路径不能为空");
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    return dict;
}

@end
