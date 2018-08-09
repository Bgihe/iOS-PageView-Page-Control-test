//
//  AppDelegate.h
//  PageViewTestCode
//
//  Created by JING on 2018/8/9.
//  Copyright © 2018年 JING. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

