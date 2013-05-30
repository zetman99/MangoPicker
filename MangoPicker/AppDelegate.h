//
//  AppDelegate.h
//  MangoPicker
//
//  Created by 김 병찬  on 13. 5. 22..
//  Copyright (c) 2013년 KIM BYEONGCHAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZFDataManager.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>


@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic, readonly) ZFDataManager *dataManager;

@end
