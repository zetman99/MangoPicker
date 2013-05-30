//
//  Benefit.h
//  MangoPicker
//
//  Created by 김 병찬  on 13. 5. 27..
//  Copyright (c) 2013년 KIM BYEONGCHAN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Benefit : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * condition;
@property (nonatomic, retain) NSString * content;
@property (nonatomic, retain) NSString * card;
@property (nonatomic, retain) NSNumber * category;
@property (nonatomic, retain) NSData * image;
@property (nonatomic, retain) NSNumber * used;
@property (nonatomic, retain) NSNumber * favorite;

@end
