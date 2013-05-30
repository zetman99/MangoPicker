//
//  BenefitListViewController.h
//  MangoPicker
//
//  Created by 김 병찬  on 13. 5. 27..
//  Copyright (c) 2013년 KIM BYEONGCHAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZFDataManager.h"

@interface BenefitListViewController : UITableViewController

@property (weak, nonatomic) ZFDataManager * dataManager;

@property (weak, nonatomic) IBOutlet UINavigationItem *addBenefitBtn;
- (IBAction)onAddBenefit:(id)sender;

@end
