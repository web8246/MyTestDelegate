//
//  MyView.m
//  TestDelegateCallBack
//
//  Created by dean on 2016/11/1.
//  Copyright © 2016年 dean. All rights reserved.
//

#import "MyView.h"

@implementation MyView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        
        
        
    }
    
    return self;
}
//因為是callBack:所以是b（myview）請a（vc）做事情（在 viewController裡面，呼叫這個方法 myViewSetDelegate，請a做事情），這邊做的事情就是塞一個dictionary進去

-(void)myViewSetDelegate
{
    [self.delegate myView:self WillGiveADic:@{@"a":@"abc"}];
}

@end
