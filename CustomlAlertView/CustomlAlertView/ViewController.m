//
//  ViewController.m
//  CustomlAlertView
//
//  Created by MyMac on 16/2/14.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import "ViewController.h"
#import "CommonAlertView.h"

@interface ViewController ()<CommonAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *launchDialog = [UIButton buttonWithType:UIButtonTypeCustom];
    [launchDialog setFrame:CGRectMake(10, 30, self.view.bounds.size.width-20, 50)];
    [launchDialog addTarget:self action:@selector(launchDialog:) forControlEvents:UIControlEventTouchDown];
    [launchDialog setTitle:@"Launch Dialog" forState:UIControlStateNormal];
    [launchDialog setBackgroundColor:[UIColor whiteColor]];
    [launchDialog setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [launchDialog.layer setBorderWidth:0];
    [launchDialog.layer setCornerRadius:5];
    [self.view addSubview:launchDialog];
    
    
}

- (void)launchDialog:(id)sender {
    CommonAlertView *alertView = [[CommonAlertView alloc] init];
    
    alertView.containerView = [self createDemoView];
    alertView.buttonTitles = @[@"残忍拒绝", @"任性投票", @"123"];
    alertView.buttonBgColors = @[[UIColor redColor],[UIColor blueColor],[UIColor greenColor]];
    alertView.buttonTextFont = [UIFont boldSystemFontOfSize:11.0f];
    alertView.buttonTextColor = [UIColor redColor];
    alertView.delegate = self;
    alertView.topCorner = YES;
//    alertView.time = 1.0f;
//    alertView.clickedBgCloseAlertView = YES;
    [alertView show];
}

- (void)customIOS7dialogButtonTouchUpInside: (CommonAlertView *)alertView clickedButtonAtIndex: (NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        [alertView close];
    }else {
        NSLog(@"任性投票");
    }
}

- (UIView *)createDemoView
{
    UIView *demoView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 290, 200)];
    demoView.backgroundColor = [UIColor redColor];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 270, 180)];
    imageView.backgroundColor = [UIColor grayColor];
    [demoView addSubview:imageView];
    
    return demoView;
}


@end
