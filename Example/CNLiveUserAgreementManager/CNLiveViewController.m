//
//  CNLiveViewController.m
//  CNLiveUserAgreementManager
//
//  Created by 153993236@qq.com on 04/13/2019.
//  Copyright (c) 2019 153993236@qq.com. All rights reserved.
//

#import "CNLiveViewController.h"

#import "CNLiveUserAgreementManager.h"
#import "CNLiveUserAgreementController.h"

@interface CNLiveViewController ()

@end

@implementation CNLiveViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn0 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn0.frame = CGRectMake(0, 0, 100, 100);
    btn0.center = self.view.center;
    btn0.backgroundColor = [UIColor redColor];
    [btn0 setTitle:@"进入" forState:UIControlStateNormal];
    [btn0 addTarget:self action:@selector(testButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn0];
    
    
}
- (void)testButtonClicked {
    [CNLiveUserAgreementManager jumpToAgreementH5WithType:CNLiveUserAgreementUnderstand];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
