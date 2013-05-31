//
//  EditBenefitDelegate.h
//  MangoPicker
//
//  Created by 김 병찬  on 13. 5. 31..
//  Copyright (c) 2013년 KIM BYEONGCHAN. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "EditBenefitViewController.h"
@class EditBenefitViewController;

@protocol EditBenefitDelegate <NSObject>

- (BOOL) saveBenefit:(EditBenefitViewController *)controller;
@end
