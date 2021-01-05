//
//  ViewController.m
//  SDKTrackDemo
//
//  Created by dawei20 on 2020/11/29.
//

#import "ViewController.h"
#import "WBAutoTrack.h"
#import <MBProgressHUD.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textfield;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//注册
- (IBAction)registerAction:(UIButton *)sender {
    [self wb_showText:@"注册"];
    [WBAutoTrack registerEvent];
}

//登录
- (IBAction)loginAction:(UIButton *)sender {
    [self wb_showText:@"登录"];
    [WBAutoTrack loginEvent];
}

//付费
- (IBAction)paymentAction:(UIButton *)sender {
    if (self.textfield.text.length == 0) {
        [self wb_showText:@"付费金额为空"];
        return;
    }
    [self wb_showText:@"付费"];
    [WBAutoTrack purchaseEventWithPrice:self.textfield.text];
}

//创建角色
- (IBAction)createRoleAction:(UIButton *)sender {
    [self wb_showText:@"创建角色"];
    [WBAutoTrack createRoleEvent];
}

//用户自定义行为
- (IBAction)customAction:(id)sender {
    [self wb_showText:@"自定义行为"];
    NSMutableDictionary *argument = [NSMutableDictionary dictionary];
    [argument setValue:@"customEvent" forKey:@"button_click"];
    [WBAutoTrack customEventWithParams:argument];
}

//退出
- (IBAction)logoutAction:(id)sender {
    [self wb_showText:@"退出"];
    [WBAutoTrack wb_logout];
}

- (void)wb_showText:(NSString *)text {
    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:self.view];
    hud.removeFromSuperViewOnHide = YES;
    [self.view addSubview:hud];
    [hud showAnimated:YES];
    hud.userInteractionEnabled = NO;
    hud.mode = MBProgressHUDModeText;
    hud.label.text = nil;
    hud.detailsLabel.text = text;
    hud.detailsLabel.font = [UIFont boldSystemFontOfSize:13.0f];
    [hud hideAnimated:YES afterDelay:1.0f];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([self.textfield isFirstResponder]) {
        [self.textfield resignFirstResponder];
    }
}

@end
