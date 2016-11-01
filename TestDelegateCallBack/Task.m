//
//  Task.m
//  TestDelegateCallBack
//
//  Created by dean on 2016/11/1.
//  Copyright © 2016年 dean. All rights reserved.
//

#import "Task.h"

@implementation Task


-(instancetype)init
{
    self = [super init];
    if (self != nil) {
        if ([self respondsToSelector:@selector(testBlock:with:)]) {
            
        }
        
        NSLog(@"xgxg");
        
    }
    return self;
}

//testBlock:with:這件事情本來應該Task來做，假設hihi是當處理一些事情之後，我會拿到的參數，例如網路，這時候當網路跑完畢之後，我接到一個參數，這時候我的Task就去做
//[self.delegate testBlock:self with:@"hihi"];

//當我的Task做完這件事情以後，要通知ViewController說：嘿，我做完了歐！！換你來做了！這時候就會在viewcontroller裡面，的這個testBlock:with:方法裡面，接到這個物件，當我接到物件之後，我就可以在viewcontroller裡面去繼續處理接下來要做的事情，

//這就是代理！！依照mvc架構之下，做完事情，通知controller（cllback），誰做完？Task！他做完之後，和viewcontroller簽合約說，我不做了，換你接手做，就是delegate

-(void)setTaskDelegate
{
    [self.delegate testBlock:self with:@"hihi"];

}

@end
