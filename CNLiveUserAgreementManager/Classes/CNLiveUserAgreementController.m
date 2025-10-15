//
//  CNLiveUserAgreementController.h
//  CNLiveUserAgreementManager
//
//  Created by 153993236@qq.com on 04/13/2019.
//  Copyright (c) 2019 153993236@qq.com. All rights reserved.
//

#import "CNLiveUserAgreementController.h"
#import "WKWebViewJavascriptBridge.h"

#import "CNLiveWebView.h"

@interface CNLiveUserAgreementController ()

@end

@implementation CNLiveUserAgreementController
- (void)createSubViews {
    [super createSubViews];
    UIColor *color = [UIColor colorWithRed:72/255.0 green:168/255.0 blue:249/255.0 alpha:1.0];
    self.webView.progressViewColor = color;
}
#pragma mark - 交互
- (void)interaction {
    [super interaction];
}

#pragma mark - Setter方法
- (void)setUrl:(NSString *)url{
    if(!url||[url isEqualToString:@""]) return;
    [super setUrl:[NSString stringWithFormat:@"%@",url]];
}

#pragma mark - CNLiveWebViewDelegate
- (void)webView:(CNLiveWebView *)webView didFinishLoadWithURL:(NSURL *)url {
    NSLog(@"CNLiveUserAgreementController - didFinishLoad");
    if(self.title.length == 0){
        self.title = webView.title;
    }
}

- (void)webView:(CNLiveWebView *)webView didFailLoadWithError:(NSError *)error {
    
}

@end
