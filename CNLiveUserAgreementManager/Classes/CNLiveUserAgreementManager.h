//
//  CNLiveUserAgreementManager.h
//  CNLiveUserAgreementManager
//
//  Created by 153993236@qq.com on 04/13/2019.
//  Copyright (c) 2019 153993236@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, CNLiveGetAgreementH5Type) {
   CNLiveUserAgreementUser                       = 1001,//用户协议
   CNLiveUserAgreementPrivacy                    = 1002,//隐私政策
   CNLiveUserAgreementHelp                       = 1003,//帮助与反馈
   CNLiveUserAgreementUnderstand                 = 1004,//使用手册
   CNLiveUserAgreementIntroduction               = 1005,//应用简介
   CNLiveUserAgreementCopyright                  = 1006,//版权信息
   CNLiveUserAgreementPermission                 = 1007,//软件许可及服务协议
   CNLiveUserAgreementIntegralRules              = 1008,//积分规则
   CNLiveUserAgreementSigninRules                = 1009,//签到奖励规则
   CNLiveUserAgreementReviewApply                = 1010,//复核申请
   CNLiveUserAgreementCancellation               = 1011,//注销协议
   CNLiveUserAgreementEmojiService               = 1012,//表情包服务说明
   CNLiveUserAgreementEmojiComplaints            = 1013,//表情包投诉说明
   CNLiveUserAgreementEnterpriseQualification    = 1014,//企业资质
   CNLiveUserAgreementBuyAudio                   = 1015 //购买音频协议

};

typedef void(^SuccessBlock)(NSString *h5, NSString *title, BOOL closeHidden);
typedef void(^FailureBlock)(NSError *error);

@interface CNLiveUserAgreementManager : NSObject

+ (instancetype)manager;

/**
 *  请求协议并跳转
 *  @param string 类型字符串
 */
+ (void)jumpToAgreementH5WithString:(NSString *)string;

/**
 *  类方法 请求协议
 *  @param string 类型字符串
 *  @param success 请求成功回调
 *  @param failure 请求失败回调
 */
+ (void)getAgreementH5WithString:(NSString *)string success:(SuccessBlock)success failure:(FailureBlock)failure;

/**
 *  对象方法 请求协议
 *  @param string 类型字符串
 *  @param success 请求成功回调
 *  @param failure 请求失败回调
 */
- (void)getAgreementH5WithString:(NSString *)string success:(SuccessBlock)success failure:(FailureBlock)failure;

/**
 *  请求协议并跳转
 *  @param type 类型
 */
+ (void)jumpToAgreementH5WithType:(CNLiveGetAgreementH5Type)type;

/**
 *  类方法 请求协议
 *  @param type 类型
 *  @param success 请求成功回调
 *  @param failure 请求失败回调
 */
+ (void)getAgreementH5WithType:(CNLiveGetAgreementH5Type)type success:(SuccessBlock)success failure:(FailureBlock)failure;

/**
 *  对象方法 请求协议
 *  @param type 类型
 *  @param success 请求成功回调
 *  @param failure 请求失败回调
 */
- (void)getAgreementH5WithType:(CNLiveGetAgreementH5Type)type success:(SuccessBlock)success failure:(FailureBlock)failure;

@end

NS_ASSUME_NONNULL_END
