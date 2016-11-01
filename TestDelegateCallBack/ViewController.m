//
//  ViewController.m
//  TestDelegateCallBack
//
//  Created by dean on 2016/11/1.
//  Copyright © 2016年 dean. All rights reserved.
//

#import "ViewController.h"
#import "Task.h"
#import "MyView.h"
@interface ViewController ()<TaskDelegate,MyViewDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    Task *task = [[Task alloc] init];
    task.delegate = self;
    [task setTaskDelegate];
    
    //
    MyView *myView = [[MyView alloc] init];
    myView.delegate = self;
    [myView myViewSetDelegate];//流程1當我的Task去工作以後（這邊因為省略，所以直接讓他去呼叫）接下來到myView
    myView.frame = CGRectMake(30, 30, 100, 100);
    [self.view addSubview:myView];
    
}

-(void)testBlock:(Task *)task with:(NSString *)string
{
    NSLog(@"sss: %@",string);
    
}
//流程3，當做完以後，會callback來這邊，讓我知道說，ok他做完事情了，接下來就是代理（我）的事情了，我要代理他，繼續完成接下來要處理的事情
-(void)myView:(MyView *)myView WillGiveADic:(NSDictionary *)dic
{
    
    NSLog(@"dic: %@",dic);
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
