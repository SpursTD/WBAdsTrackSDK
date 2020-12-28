//
//  WBAutoTrack.h
//  WBAutoTrackSDK
//
//  Created by dawei20 on 2020/11/23.
//

#import <Foundation/Foundation.h>
#import "WBAutoTrackConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface WBAutoTrack : NSObject

/**
 初始化配置
 */
+ (void)wb_startTrackWithConfig:(WBAutoTrackConfig *)config;

/**
 注册
 */
+ (void)registerEvent;

/**
 登录
 */
+ (void)loginEvent;

/**
 付费
 */
+ (void)purchaseEventWithPrice:(NSString *)price;

/**
 创建角色
 */
+ (void)createRoleEvent;

/**
 自定义行为
 */
+ (void)customEventWithParams:(NSDictionary *)params;

/**
 登出
 */
+ (void)wb_logout;

@end

NS_ASSUME_NONNULL_END
