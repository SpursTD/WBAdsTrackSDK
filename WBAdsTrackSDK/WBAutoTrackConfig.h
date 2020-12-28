//
//  WBAutoTrackConfig.h
//  WBAutoTrackSDK
//
//  Created by dawei20 on 2020/11/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WBAutoTrackConfig : NSObject

/** 非空（必填项） */
@property (nonatomic, copy) NSString *appID;

/** 申请appID时候填写的名称 */
@property (nonatomic, copy) NSString *appName;

/** 默认@"App Store", release版本只有 @"App Store"，debug版本可以任意设置*/
@property (nonatomic, copy) NSString *channel;

/** debug模式，设置为YES
    release模式，必须设置为NO
 */
@property (nonatomic, assign) BOOL debugMode;

/**
 游戏模式，开启后上传游戏心跳事件，用于统计游戏时长
 YES：每隔一分钟上传一次心跳包
 */
@property (nonatomic, assign) BOOL gameModeEnable;

/**
 采集事件的时候输出日志
 debug版本，在控制台可以查看日志
 release版本，请设置为NO
 */
@property (nonatomic, assign) BOOL showDebugLog;

@end

NS_ASSUME_NONNULL_END
