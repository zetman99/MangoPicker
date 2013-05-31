//
//  EditBenefitViewController.h
//  MangoPicker
//
//  Created by 김 병찬  on 13. 5. 30..
//  Copyright (c) 2013년 KIM BYEONGCHAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZFDataManager.h"
#import "Benefit.h"
//#import "EditBenefitDelegate.h"
@protocol EditBenefitDelegate;

@interface EditBenefitViewController : UITableViewController
{
    BOOL _isAddMode;    // Add Mode
}

#pragma mark - property declare
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) Benefit *benefit;
@property (weak, nonatomic) id <EditBenefitDelegate> delegate;

#pragma mark - IBOutlet declare
@property (weak, nonatomic) IBOutlet UITextField *titleEdit;
@property (weak, nonatomic) IBOutlet UITextField *cardEdit;
@property (weak, nonatomic) IBOutlet UITextField *conditionEdit;
@property (weak, nonatomic) IBOutlet UITextView *detailEdit;
@property (weak, nonatomic) IBOutlet UILabel *countEdit;
@property (weak, nonatomic) IBOutlet UIStepper *countStepper;

#pragma mark - IBAction declare
- (IBAction)onChangeValueStepper:(id)sender;
- (IBAction)onSave:(id)sender;
- (IBAction)onCancel:(id)sender;

#pragma mark - public method
- (void) setAddMode:(BOOL)mode;

@end
