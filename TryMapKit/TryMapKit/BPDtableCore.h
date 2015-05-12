//
//  BPDtableCore.h
//  TryMapKit
//
//  Created by Pedro Luis Berbel dos Santos on 12/05/15.
//  Copyright (c) 2015 Carlos Philipe Mendes Bahia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface BPDtableCore : NSManagedObject

@property (nonatomic, retain) NSNumber * descricao;
@property (nonatomic, retain) id image;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSNumber * remember;
@property (nonatomic, retain) NSDate * date;

@end
