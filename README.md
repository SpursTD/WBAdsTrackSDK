# WBAdsTrackSDK
数据采集&日志上传SDK，具体可参见官网：

# demo演示
```
1、git clone https://github.com/SpursTD/WBAdsTrackSDK.git
2、cd WBAdsTrackSDK/WBAdsTrackDemo
3、pod install
4、open SDKTrackDemo.xcworkspace
```

# 开发环境
```
iOS 9.0+
Xcode 11.0+
```

# 集成方式
### 建议采用cocoapods方式，可参照demo中的profile或以下实例：
```
platform :ios, '9.0'

target 'SDKTrackDemo' do
   
   pod 'WBAdsTrackSDK' , '~> 1.0.1'

end
```

# 集成指南
更多接口请参见头文件和demo
### 初始化SDK
```
#import "AppDelegate.h"
#import <WBAutoTrackConfig.h>
#import <WBAutoTrack.h>

- (void)wb_startTrack {
    /** 初始化 */
    WBAutoTrackConfig *config = [WBAutoTrackConfig new];
    config.appID = @"10";//如不清楚请联系微博运营人员
    config.appName = @"your appName";//与申请APPID时保持一致
    config.channel = @"App Store";//默认为App Store
    config.debugMode = NO;//控制台是否输入日志，仅调试使用，release版本请设置为NO
    config.gameModeEnable = YES;//游戏模式，设置为YES则每隔一分钟上报心跳日志
    [WBAutoTrack wb_startTrackWithConfig:config];
}

```
### 用户行为(以注册为例)
```
/** 注册 */
- (void)registerEvent {
    [WBAutoTrack registerEvent];
}
```

# 版本更新记录
### 1.0.1
```
新增注册登录等接口
```
    
# 证书
本项目采用[MIT 证书](https://github.com/SpursTD/WBAdsTrackSDK/blob/master/LICENSE)，详细内容参见[证书](https://github.com/SpursTD/WBAdsTrackSDK/blob/master/LICENSE)文件


