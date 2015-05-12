//
//  BPDtableCoreStore.m
//  TryMapKit
//
//  Created by Pedro Luis Berbel dos Santos on 12/05/15.
//  Copyright (c) 2015 Carlos Philipe Mendes Bahia. All rights reserved.
//

#import "BPDtableCoreStore.h"
#import "BPDtableCore.h"


@implementation BPDtableCoreStore

+ (instancetype)sharedStore {
    static BPDtableCoreStore *sharedStore = nil;
    
    if (!sharedStore) {
        AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        
        sharedStore = [[self alloc] initPrivate];
        sharedStore.managedObjectContext = appDelegate.managedObjectContext;
        
        //apaga toda a tabela e vai cria-la com tudo o que fora predefinido anteriormente
        
        // [sharedStore resetStoredData]; //comando que reseta o banco de dados
    }
    
    return sharedStore;
}

- (instancetype)initPrivate {
    self = [super init];
    return self;
}

- (instancetype)init {
    @throw [NSException exceptionWithName:@"Singleton"
                                   reason:@"Use +[BPDtableCoreStore sharedStore]"
                                 userInfo:nil];
}




@end
