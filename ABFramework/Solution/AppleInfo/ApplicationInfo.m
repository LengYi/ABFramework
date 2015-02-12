//
//  ApplicationInfo.m
//  ABFramework
//
//  Created by ice on 15-2-10.
//  Copyright (c) 2015年 ice. All rights reserved.
//

#import "ApplicationInfo.h"

@implementation ApplicationInfo

+ (NSString *)applicationDevVersion{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}

+ (NSString *)applicationReleaseVersion{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

+ (NSString *)applicationName{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleName"];
}

+ (NSString *)applicationDisplayName{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
}

+ (NSString *)applicationSku{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
}

@end
