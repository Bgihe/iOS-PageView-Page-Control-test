//
//  ViewController.m
//  PageViewTestCode
//
//  Created by JING on 2018/8/9.
//  Copyright © 2018年 JING. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) CAPSPageMenu *pageMenu;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
/*
    TestViewController *controller1 = [[TestViewController alloc]initWithNibName:@"TestTableViewController" bundle:nil];
    controller1.title = @"FRIENDS";
    TestViewController *controller2 = [[TestViewController alloc]initWithNibName:@"TestCollectionViewController" bundle:nil];
    controller2.title = @"MOOD";
    */
    
    
    TestViewController *controller1 = [[TestViewController alloc] initWithNibName:@"TestViewController" bundle:nil];
    controller1.title = @"FRIENDS";
    controller1.pageTitle = @"FRIENDS";
    controller1.view.backgroundColor = [UIColor grayColor];
    TestViewController *controller2 = [[TestViewController alloc] initWithNibName:@"TestViewController" bundle:nil];
    controller2.title = @"MOOD";
    controller2.pageTitle = @"MOOD";
    controller2.view.backgroundColor = [UIColor blueColor];
    TestViewController *controller3 = [[TestViewController alloc] initWithNibName:@"TestViewController" bundle:nil];
    controller3.title = @"MUSIC";
    controller3.pageTitle = @"MUSIC";
    controller3.view.backgroundColor = [UIColor brownColor];
    TestViewController *controller4 = [[TestViewController alloc] initWithNibName:@"TestViewController" bundle:nil];
    controller4.title = @"FAVORITES";
    controller4.pageTitle = @"FAVORITES";
    controller4.view.backgroundColor = [UIColor purpleColor];
    
    NSArray *controllerArray = @[controller1, controller2, controller3, controller4];
    NSDictionary *parameters = @{
                                 CAPSPageMenuOptionScrollMenuBackgroundColor: [UIColor colorWithRed:30.0/255.0 green:30.0/255.0 blue:30.0/255.0 alpha:1.0],
                                 CAPSPageMenuOptionViewBackgroundColor: [UIColor colorWithRed:20.0/255.0 green:20.0/255.0 blue:20.0/255.0 alpha:1.0],
                                 CAPSPageMenuOptionSelectionIndicatorColor: [UIColor orangeColor],
                                 CAPSPageMenuOptionBottomMenuHairlineColor: [UIColor colorWithRed:70.0/255.0 green:70.0/255.0 blue:70.0/255.0 alpha:1.0],
                                 CAPSPageMenuOptionMenuItemFont: [UIFont fontWithName:@"HelveticaNeue" size:13.0],
                                 CAPSPageMenuOptionMenuHeight: @(40.0),
                                 CAPSPageMenuOptionMenuItemWidth: @(90.0),
                                 CAPSPageMenuOptionCenterMenuItems: @(YES)
                                 };
    
    _pageMenu = [[CAPSPageMenu alloc] initWithViewControllers:controllerArray frame:CGRectMake(0.0, 0.0+20, self.view.frame.size.width, self.view.frame.size.height-30-20) options:parameters];
    [self.view addSubview:_pageMenu.view];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)didTapGoToLeft {
    NSInteger currentIndex = self.pageMenu.currentPageIndex;
    
    if (currentIndex > 0) {
        [_pageMenu moveToPage:currentIndex - 1];
    }
}

- (void)didTapGoToRight {
    NSInteger currentIndex = self.pageMenu.currentPageIndex;
    
    if (currentIndex < self.pageMenu.controllerArray.count) {
        [self.pageMenu moveToPage:currentIndex + 1];
    }
}
- (IBAction)test1:(id)sender {
    [self.pageMenu moveToPage:0];
    
}
- (IBAction)test2:(id)sender {
    [self.pageMenu moveToPage:2];
}

@end
