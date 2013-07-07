//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Amy Bryce on 7/3/13.
//  Copyright (c) 2013 Amy Bryce. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject
{
    NSMutableArray *allItems;
}

// Notice that this is a class method and prefixed with a + instead of a -
// BNRItemStore is a singleton 
+ (BNRItemStore *)sharedStore;

// Remove BNRItem from BNRItemStore
- (void)removeItem:(BNRItem *)p;

- (NSArray *)allItems;
- (BNRItem *)createItem;

@end
