//
//  CNLiveUserAgreementManager.h
//  CNLiveUserAgreementManager
//
//  Created by 153993236@qq.com on 04/13/2019.
//  Copyright (c) 2019 153993236@qq.com. All rights reserved.
//

#import "CNLiveUserAgreementManager.h"
#import <CNLiveRequestBastKit/CNLiveNetworking.h>
#import "CNLiveUserAgreementController.h"
#import "CNLiveManager.h"

@interface CNLiveUserAgreementManager()

@end

@implementation CNLiveUserAgreementManager

static CNLiveUserAgreementManager *_instance = nil;

/**
 * @abstract 单例初始化
 */
+ (instancetype)manager{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        _instance = [[CNLiveUserAgreementManager alloc]init];
    });
    return _instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return _instance;
}

- (nonnull id)mutableCopyWithZone:(nullable NSZone *)zone {
    return _instance;
}

#pragma mark - 类型
/**
 *  对象方法 请求协议
 *  @param type 类型
 *  @param success 请求成功回调
 *  @param failure 请求失败回调
 */
- (void)getAgreementH5WithType:(CNLiveGetAgreementH5Type)type success:(SuccessBlock)success failure:(FailureBlock)failure {
    [CNLiveNetworking setAllowRequestDefaultArgument:NO];
    [CNLiveNetworking requestNetworkWithMethod:CNLiveRequestMethodGET URLString:@"https://wjj.ys1.cnliveimg.com/json/wjj_user_terms.json" Param:@{} CacheType:CNLiveNetworkCacheTypeNetworkOnly CompletionBlock:^(NSURLSessionTask *requestTask, id responseObject, NSError *error) {
        if (error) {
            if (failure) {
                failure(error);
            }
        }
        else{
            if ([responseObject isKindOfClass:[NSArray class]]) {
                BOOL closeHidden = NO;
                for (NSDictionary *dic in responseObject) {
                    
                    switch (type) {
                        case CNLiveUserAgreementUser:
                        {
                            if ([[NSString stringWithFormat:@"%@",dic[@"type"]] isEqualToString:@"yhxy"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        case CNLiveUserAgreementPrivacy:
                        {
                            if ([[NSString stringWithFormat:@"%@",dic[@"type"]] isEqualToString:@"yszc"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        case CNLiveUserAgreementHelp:
                        {
                            if ([[NSString stringWithFormat:@"%@",dic[@"type"]] isEqualToString:@"bzfk"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        case CNLiveUserAgreementUnderstand:
                        {
                            if ([[NSString stringWithFormat:@"%@",dic[@"type"]] isEqualToString:@"ljwjj"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        case CNLiveUserAgreementIntroduction:
                        {
                            if ([[NSString stringWithFormat:@"%@", dic[@"type"]] isEqualToString:@"yyjj"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        case CNLiveUserAgreementCopyright:
                        {
                            if ([[NSString stringWithFormat:@"%@", dic[@"type"]] isEqualToString:@"bqxx"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        case CNLiveUserAgreementPermission:
                        {
                            if ([[NSString stringWithFormat:@"%@", dic[@"type"]] isEqualToString:@"rjxkxy"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        case CNLiveUserAgreementIntegralRules:
                        {
                            if ([[NSString stringWithFormat:@"%@", dic[@"type"]] isEqualToString:@"jfgz"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        case CNLiveUserAgreementSigninRules:
                        {
                            if ([[NSString stringWithFormat:@"%@", dic[@"type"]] isEqualToString:@"jfjlgz"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        case CNLiveUserAgreementReviewApply:
                        {
                            if ([[NSString stringWithFormat:@"%@", dic[@"type"]] isEqualToString:@"shsqxy"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        case CNLiveUserAgreementCancellation:
                        {
                            if ([[NSString stringWithFormat:@"%@", dic[@"type"]] isEqualToString:@"zxxz"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        case CNLiveUserAgreementEmojiService:
                        {
                            if ([[NSString stringWithFormat:@"%@", dic[@"type"]] isEqualToString:@"fwsm"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        case CNLiveUserAgreementEmojiComplaints:
                        {
                            if ([[NSString stringWithFormat:@"%@", dic[@"type"]] isEqualToString:@"tssm"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        case CNLiveUserAgreementEnterpriseQualification:
                        {
                            if ([[NSString stringWithFormat:@"%@", dic[@"type"]] isEqualToString:@"qyzz"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        case CNLiveUserAgreementBuyAudio:
                        {
                            if ([[NSString stringWithFormat:@"%@", dic[@"type"]] isEqualToString:@"ypxy"]) {
                                if (success) {
                                    success(dic[@"detailUrl"], dic[@"title"], closeHidden);
                                    return ;
                                }
                            }
                        }
                            break;
                        default:
                            break;
                    }
                    
                }
                
            }
            if (failure) {
                failure(error);
            }
        }
    }];
    
}

/**
 *  类方法 请求协议
 *  @param type 类型
 *  @param success 请求成功回调
 *  @param failure 请求失败回调
 */
+ (void)getAgreementH5WithType:(CNLiveGetAgreementH5Type)type success:(SuccessBlock)success failure:(FailureBlock)failure {
    [[CNLiveUserAgreementManager manager] getAgreementH5WithType:type success:^(NSString * _Nonnull h5, NSString * _Nonnull title, BOOL closeHidden) {
        success?success(h5, title, closeHidden):@"";
        
    } failure:^(NSError * _Nonnull error) {
        failure?failure(error):@"";

    }];
    
}

/**
 *  请求协议并跳转
 *  @param type 类型
 */
+ (void)jumpToAgreementH5WithType:(CNLiveGetAgreementH5Type)type{
    __weak typeof(self) weakSelf = self;
    [CNLiveUserAgreementManager getAgreementH5WithType:type success:^(NSString *h5, NSString *title, BOOL closeHidden) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        if(!strongSelf) return;
        [strongSelf pushToWebControllerUrl:h5 name:title closeHidden:closeHidden];
        
    } failure:^(NSError *error) {
        NSLog(@"点击协议跳转失败");
    }];
    
}

#pragma mark - 类型字符串
/**
 *  请求协议并跳转
 *  @param string 类型字符串
 */
+ (void)jumpToAgreementH5WithString:(NSString *)string {
    __weak typeof(self) weakSelf = self;
    [CNLiveUserAgreementManager getAgreementH5WithString:string success:^(NSString *h5, NSString *title, BOOL closeHidden) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        if(!strongSelf) return;
        [strongSelf pushToWebControllerUrl:h5 name:title closeHidden:closeHidden];
        
    } failure:^(NSError *error) {
        NSLog(@"点击协议跳转失败");
    }];
    
}

/**
 *  类方法 请求协议
 *  @param string 类型字符串
 *  @param success 请求成功回调
 *  @param failure 请求失败回调
 */
+ (void)getAgreementH5WithString:(NSString *)string success:(SuccessBlock)success failure:(FailureBlock)failure{
    [[CNLiveUserAgreementManager manager] getAgreementH5WithString:string success:^(NSString *h5, NSString *title, BOOL closeHidden) {
        success?success(h5, title, closeHidden):@"";
        
    } failure:^(NSError *error) {
        failure?failure(error):@"";

    }];
}

/**
 *  对象方法 请求协议
 *  @param string 类型字符串
 *  @param success 请求成功回调
 *  @param failure 请求失败回调
 */
- (void)getAgreementH5WithString:(NSString *)string success:(SuccessBlock)success failure:(FailureBlock)failure{
    [CNLiveNetworking setAllowRequestDefaultArgument:NO];
    [CNLiveNetworking requestNetworkWithMethod:CNLiveRequestMethodGET URLString:@"https://wjj.ys1.cnliveimg.com/json/wjj_user_terms.json" Param:@{} CacheType:CNLiveNetworkCacheTypeNetworkOnly CompletionBlock:^(NSURLSessionTask *requestTask, id responseObject, NSError *error) {
        if (!error) {
            if ([responseObject isKindOfClass:[NSArray class]]) {
                for (NSDictionary *dic in responseObject) {
                    if ([[NSString stringWithFormat:@"%@",dic[@"type"]] isEqualToString:string]) {
                        success?success(dic[@"detailUrl"], dic[@"title"], NO):@"";
                        return;
                    }
                }
            }
            failure?failure(error):@"";
            
        }else{
            failure?failure(error):@"";

        }
    }];
}

#pragma mark - 跳转控制器
+ (void)pushToWebControllerUrl:(NSString *)url name:(NSString *)name closeHidden:(BOOL)closeHidden{
    CNLiveUserAgreementController *vc = [[CNLiveUserAgreementController alloc] initWithUrl:url title:name closeHidden:closeHidden];
    [CNLivePageJumpManager jumpViewController:vc];
    
}

@end
