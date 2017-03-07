//
//  NSUserDefaults+BRUserDefaults.h
//  打印
//
//  Created by kozon on 2017/3/6.
//  Copyright © 2017年 Kozon app. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults(BRUserDefaults)

+ (void)setUserCompany:(NSString *)company;
+ (NSString *)userCompany;

+ (void)setUserAddress:(NSString *)address;
+ (NSString *)userAddress;

+ (void)setUserPhone:(NSString *)phone;
+ (NSString *)userPhone;

+ (void)setUserFax:(NSString *)fax;
+ (NSString *)userFax;

+ (void)setUserCustomer:(NSString *)customer;
+ (NSString *)userCustomer;

+ (void)setUserSpongeKind:(NSString *)spongeKind;
+ (NSString *)userSpongeKind;

+ (void)setUserColor:(NSString *)color;
+ (NSString *)userColor;

+ (void)setUserStandard:(NSString *)standard;
+ (NSString *)userStandard;

+ (void)setUserPart:(NSString *)part;
+ (NSString *)userPart;

+ (void)setUserDate:(NSString *)date;
+ (NSString *)userDate;

@end
