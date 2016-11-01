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
    [myView myViewSetDelegate];
    myView.frame = CGRectMake(30, 30, 100, 100);
    [self.view addSubview:myView];
    
}

-(void)testBlock:(Task *)task with:(NSString *)string
{
    NSLog(@"sss: %@",string);
    
}

-(void)myView:(MyView *)myView WillGiveADic:(NSDictionary *)dic
{
    
    NSLog(@"dic: %@",dic);
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
