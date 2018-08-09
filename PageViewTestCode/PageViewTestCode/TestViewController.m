//
//  TestViewController.m
//  PageViewTestCode
//
//  Created by JING on 2018/8/9.
//  Copyright © 2018年 JING. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];

    [timer_check_notifications invalidate];
    timer_check_notifications = nil;
    
    timer_check_notifications = [NSTimer scheduledTimerWithTimeInterval: 2 target:self selector:@selector(Timer_check_notifications_1:) userInfo:nil repeats:100];
    num = 0;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [timer_check_notifications invalidate];
    timer_check_notifications = nil;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _testLabel.text  = _pageTitle;
    num = 0;
}
-(void)Timer_check_notifications_1:(NSTimer *)theTimer{
    NSLog(@"%@:心跳包:%d",_pageTitle,num);
    num = num+1;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
