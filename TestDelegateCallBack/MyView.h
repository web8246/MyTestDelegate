//
//  MyView.h
//  TestDelegateCallBack
//
//  Created by dean on 2016/11/1.
//  Copyright © 2016年 dean. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyView;
@protocol MyViewDelegate <NSObject>

-(void)myView:(MyView *)myView WillGiveADic:(NSDictionary *)dic;

@end

@interface MyView : UIView
@property (nonatomic ,weak) id<MyViewDelegate>delegate;
-(void)myViewSetDelegate;
@end
