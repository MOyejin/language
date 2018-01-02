//
//  CeshiViewController.m
//  语言国际化
//
//  Created by mo on 2018/1/2.
//  Copyright © 2018年 momo. All rights reserved.
//

#import "CeshiViewController.h"

@interface CeshiViewController ()

@end

@implementation CeshiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.title = Localized(@"detail");
    UIButton *chineseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    chineseButton.frame = CGRectMake(100, 100, 150, 40);
    chineseButton.backgroundColor = [UIColor redColor];
    [chineseButton setTitle:Localized(@"Chinese") forState:UIControlStateNormal];
    [chineseButton addTarget:self action:@selector(chineseButtonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:chineseButton];
    
    UIButton *englishButton = [UIButton buttonWithType:UIButtonTypeCustom];
    englishButton.frame = CGRectMake(100, 200, 150, 40);
    englishButton.backgroundColor = [UIColor redColor];
    [englishButton setTitle:Localized(@"English") forState:UIControlStateNormal];
    [englishButton addTarget:self action:@selector(englishButtonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:englishButton];
    
    UIButton *JapaneseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    JapaneseButton.frame = CGRectMake(100, 300, 150, 40);
    JapaneseButton.backgroundColor = [UIColor redColor];
    [JapaneseButton setTitle:Localized(@"Japanese") forState:UIControlStateNormal];
    [JapaneseButton addTarget:self action:@selector(JapaneseButtonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:JapaneseButton];
}
- (void)chineseButtonDidClick:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:appLanguage];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [[NSNotificationCenter defaultCenter] postNotificationName:MOLanguageChangedNotification object:nil];
}

- (void)englishButtonDidClick:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setObject:@"en" forKey:appLanguage];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [[NSNotificationCenter defaultCenter] postNotificationName:MOLanguageChangedNotification object:nil];
}
- (void)JapaneseButtonDidClick:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setObject:@"ja" forKey:appLanguage];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [[NSNotificationCenter defaultCenter] postNotificationName:MOLanguageChangedNotification object:nil];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[self.tabBarController tabBar] setHidden:YES];
}
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [[self.tabBarController tabBar] setHidden:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
