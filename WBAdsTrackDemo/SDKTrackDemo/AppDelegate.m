//
//  AppDelegate.m
//  SDKTrackDemo
//
//  Created by dawei20 on 2020/11/29.
//

#import "AppDelegate.h"
#import "WBAutoTrack.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self wb_startTrack];
    return YES;
}

- (void)wb_startTrack {
    /** 初始化 */
    WBAutoTrackConfig *config = [WBAutoTrackConfig new];
    config.appID = @"35";//如不清楚请联系微博运营人员
    config.appName = @"your appName";//与申请APPID时保持一致
    config.channel = @"App Store";//默认为App Store
    config.debugMode = NO;//控制台是否输入日志，仅调试使用，release版本请设置为NO
    config.gameModeEnable = YES;//游戏模式，设置为YES则每隔一分钟上报心跳日志
    [WBAutoTrack wb_startTrackWithConfig:config];
}

@end
