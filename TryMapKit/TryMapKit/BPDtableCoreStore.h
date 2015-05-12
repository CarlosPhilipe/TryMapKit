//
//  BPDtableCoreStore.h
//  TryMapKit
//
//  Created by Pedro Luis Berbel dos Santos on 12/05/15.
//  Copyright (c) 2015 Carlos Philipe Mendes Bahia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "BPDtableCore.h"
#import "AppDelegate.h"




@interface BPDtableCoreStore : NSObject

@property (nonatomic, readonly) NSFetchedResultsController *moment;

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

// + (instancetype)sharedStore; //dando erro ainda nao implementado.

- (BPDtableCore *)addNewMomentByDate:(NSDate *)date andImage:(UIImage *)image andTitle:(NSArray *)title andDescricao:(NSArray *)descricao andLatitude:(double *)latitude andLongitude:(double *)longitude andRemember:(BOOL *)remember;

@end
