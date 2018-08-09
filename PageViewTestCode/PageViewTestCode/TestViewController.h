//
//  TestViewController.h
//  PageViewTestCode
//
//  Created by JING on 2018/8/9.
//  Copyright © 2018年 JING. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController{
    NSTimer * timer_check_notifications;
    int num;
}
@property (weak, nonatomic) IBOutlet UILabel *testLabel;
@property(nonatomic,strong)NSString * pageTitle;
@end
