//
//  CommonAlertView.h
//  CustomlAlertView
//
//  Created by MyMac on 16/2/14.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CommonAlertViewDelegate

- (void)customIOS7dialogButtonTouchUpInside:(id)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;

@end

@interface CommonAlertView : UIView<CommonAlertViewDelegate>


@property (nonatomic,strong) UIView *parentView;    /**< 父视图*/
@property (nonatomic,strong) UIView *dialogView;    /**< 弹窗视图*/
@property (nonatomic,strong) UIView *containerView;  /**< 弹窗中的容器视图 (在这里添加UI)*/
@property (nonatomic,strong) UIView *buttonView;    /**< 添加底部按钮的视图*/


@property (nonatomic,strong) NSArray *buttonTitles; /**< 按钮文字*/
@property (nonatomic,strong) NSArray *buttonBgColors; /**< 按钮背景颜色*/

@property (nonatomic,strong) UIColor *buttonBgViewColor; /**< 按钮底部背景色*/
@property (nonatomic,strong) UIFont *buttonTextFont; /**< 按钮文字字体*/
@property (nonatomic,strong) UIColor *buttonTextColor; /**< 按钮文字颜色*/
@property (nonatomic,assign) BOOL clickedBgCloseAlertView; /**< 点击后面背景关闭弹窗  默认关闭*/
@property (nonatomic,strong) UIColor *lineViewColor; /**< 内容和底部按钮分割线颜色 */
@property (nonatomic,strong) UIColor *verticalLineColor; /**< 竖线颜色*/
@property (nonatomic,assign) BOOL topCorner; /**< 顶部圆角*/


@property (nonatomic,weak) id<CommonAlertViewDelegate> delegate; /**< 代理*/

@property (copy) void (^onButtonTouchUpInside)(CommonAlertView *alertView, int buttonIndex) ;

- (instancetype)init;

- (instancetype)initWithParentView:(UIView *)parentView;

- (void)show;
- (void)close;

//- (void)dialogButtonTouchUpInside:(id)sender;
- (void)setOnButtonTouchUpInside:(void (^)(CommonAlertView *alertView, int buttonIndex))onButtonTouchUpInside;

//- (void)deviceOrientationDidChange: (NSNotification *)notification;
//- (void)dealloc;

@end
