//
//  NSUserDefaults+BRUserDefaults.m
//  打印
//
//  Created by kozon on 2017/3/6.
//  Copyright © 2017年 Kozon app. All rights reserved.
//

#import "NSUserDefaults+BRUserDefaults.h"

static NSString * const userCompany = @"Company";
static NSString * const userAddress = @"Address";
static NSString * const userPhone = @"Phone";
static NSString * const userFax = @"Fax";
static NSString * const userCustomer = @"Customer";
static NSString * const userSpongeKind = @"SpongeKind";
static NSString * const userColor = @"Color";
static NSString * const userStandard = @"Standard";
static NSString * const userPart = @"Part";
static NSString * const userDate = @"Date";

@implementation NSUserDefaults (BRUserDefaults)

+(void)setUserCompany:(NSString *)company {
    if (![company isKindOfClass:[NSNull class]]) {
        [[NSUserDefaults standardUserDefaults] setValue:company forKey:userCompany];
    }
}
+(NSString *)userCompany {
    return [[NSUserDefaults standardUserDefaults] stringForKey:userCompany];
}

+(void)setUserAddress:(NSString *)address {
    if (![address isKindOfClass:[NSNull class]]) {
        [[NSUserDefaults standardUserDefaults] setValue:address forKey:userAddress];
    }
}
+(NSString *)userAddress {
    return [[NSUserDefaults standardUserDefaults] stringForKey:userAddress];
}

+(void)setUserPhone:(NSString *)phone {
    if (![phone isKindOfClass:[NSNull class]]) {
        [[NSUserDefaults standardUserDefaults] setValue:phone forKey:userPhone];
    }
}
+(NSString *)userPhone {
    return [[NSUserDefaults standardUserDefaults] stringForKey:userPhone];
}

+(void)setUserFax:(NSString *)fax {
    if (![fax isKindOfClass:[NSNull class]]) {
        [[NSUserDefaults standardUserDefaults] setValue:fax forKey:userFax];
    }
}
+(NSString *)userFax {
    return [[NSUserDefaults standardUserDefaults] stringForKey:userFax];
}

+(void)setUserCustomer:(NSString *)customer {
    if (![customer isKindOfClass:[NSNull class]]) {
        [[NSUserDefaults standardUserDefaults] setValue:customer forKey:userCustomer];
    }
}
+(NSString *)userCustomer {
    return [[NSUserDefaults standardUserDefaults] stringForKey:userCustomer];
}

+(void)setUserSpongeKind:(NSString *)spongeKind {
    if (![spongeKind isKindOfClass:[NSNull class]]) {
        [[NSUserDefaults standardUserDefaults] setValue:spongeKind forKey:userSpongeKind];
    }
}
+(NSString *)userSpongeKind {
    return [[NSUserDefaults standardUserDefaults] stringForKey:userSpongeKind];
}

+(void)setUserColor:(NSString *)color {
    if (![color isKindOfClass:[NSNull class]]) {
        [[NSUserDefaults standardUserDefaults] setValue:color forKey:userColor];
    }
}
+(NSString *)userColor {
    return [[NSUserDefaults standardUserDefaults] stringForKey:userColor];
}

+(void)setUserStandard:(NSString *)standard {
    if (![standard isKindOfClass:[NSNull class]]) {
        [[NSUserDefaults standardUserDefaults] setValue:standard forKey:userStandard];
    }
}
+(NSString *)userStandard {
    return [[NSUserDefaults standardUserDefaults] stringForKey:userStandard];
}

+(void)setUserPart:(NSString *)part {
    if (![part isKindOfClass:[NSNull class]]) {
        [[NSUserDefaults standardUserDefaults] setValue:part forKey:userPart];
    }
}
+(NSString *)userPart {
    return [[NSUserDefaults standardUserDefaults] stringForKey:userPart];
}

+(void)setUserDate:(NSString *)date {
    if (![date isKindOfClass:[NSNull class]]) {
        [[NSUserDefaults standardUserDefaults] setValue:date forKey:userDate];
    }
}
+(NSString *)userDate {
    return [[NSUserDefaults standardUserDefaults] stringForKey:userDate];
}

@end
