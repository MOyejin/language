//
//  Header.h
//  语言国际化
//
//  Created by mo on 2018/1/2.
//  Copyright © 2018年 momo. All rights reserved.
//

#ifndef Header_h
#define Header_h

#import <UIKit/UIKit.h>
//语言改变通知
static NSString *const MOLanguageChangedNotification = @"MOLanguageChangedNotification"; //
//当前语言
static NSString *const appLanguage = @"appLanguage";
#define Localized(key)  [[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"]] ofType:@"lproj"]] localizedStringForKey:(key) value:nil table:@"viewName"]

#endif /* Header_h */
