//
//  ZFDataManager.h
//  MangoPicker
//
//  Created by 김 병찬  on 13. 5. 27..
//  Copyright (c) 2013년 KIM BYEONGCHAN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZFDataManager : NSObject

@property (strong, nonatomic, readonly) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic, readonly) NSManagedObjectModel *managedObjectModel;
@property (strong, nonatomic, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
