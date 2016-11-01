//
//  Task.h
//  TestDelegateCallBack
//
//  Created by dean on 2016/11/1.
//  Copyright © 2016年 dean. All rights reserved.
//

#import <Foundation/Foundation.h>

//Set
@class Task;
@protocol TaskDelegate <NSObject>

//-(NSString *)testBlock1With:(Task *) task and:(NSString *)string;

-(void) testBlock:(Task *)task with:(NSString *)string;

@end

@interface Task : NSObject

@property (weak,nonatomic) id<TaskDelegate>delegate;

-(void)setTaskDelegate;

@end
