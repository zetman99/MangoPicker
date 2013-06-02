//
//  BenefitCell.h
//  MangoPicker
//
//  Created by 김 병찬  on 13. 5. 27..
//  Copyright (c) 2013년 KIM BYEONGCHAN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BenefitCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *count;
@property (weak, nonatomic) IBOutlet UILabel *card;

@end
