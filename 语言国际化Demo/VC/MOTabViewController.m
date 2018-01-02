//
//  MOTabViewController.m
//  语言国际化
//
//  Created by mo on 2018/1/2.
//  Copyright © 2018年 momo. All rights reserved.
//

#import "MOTabViewController.h"

#import "HomeViewController.h"
#import "BaseViewController.h"
#import "MOViewController.h"
#import "CeshiViewController.h"
@interface MOTabViewController ()

@end

@implementation MOTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    UINavigationController *homeNC = [[UINavigationController alloc] initWithRootViewController:homeVC];
    homeNC.tabBarItem.title = Localized(@"home");
    
    NSLog(@"%@",Localized(@"home"));
    
    BaseViewController *baseVC = [[BaseViewController alloc] init];
    UINavigationController *baseNC = [[UINavigationController alloc] initWithRootViewController:baseVC];
    baseNC.tabBarItem.title = Localized(@"base");
    
    MOViewController *moVC = [[MOViewController alloc] init];
    UINavigationController *moNC = [[UINavigationController alloc] initWithRootViewController:moVC];
    moNC.tabBarItem.title = Localized(@"mo");
    
    
    [self setViewControllers:@[homeNC, baseNC, moNC]];
    
    //监听语言切换通知
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(languageChange) name:MOLanguageChangedNotification object:nil];
}

- (void)languageChange
{
    UIWindow * window =[UIApplication sharedApplication].keyWindow;
    MOTabViewController * tabVc=[[MOTabViewController alloc]init];
    window.rootViewController = tabVc;
    [tabVc setSelectedIndex:0] ;
    UINavigationController *nav = tabVc.selectedViewController;
    [nav pushViewController:[[CeshiViewController alloc]init] animated:NO];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
