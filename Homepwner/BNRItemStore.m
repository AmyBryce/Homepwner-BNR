//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Amy Bryce on 7/3/13.
//  Copyright (c) 2013 Amy Bryce. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation BNRItemStore

+ (BNRItemStore *)sharedStore
{
/*  Unlike a local variable, a static variable does not live on the stack and is not destroyed when the method returns. Instead, a static variable is only declared once (when the application is loaded into memory), and it is never destroyed. A static variable is like a local variable in that you can only access this variable in the method in which it is declared. Therefore, no other object or method can use the BNRItemStore pointed to by this variable except via the sharedStore method. */  
    static BNRItemStore *sharedStore = nil;
    if (!sharedStore)
        sharedStore = [[super allocWithZone:nil] init];
    return sharedStore;
}

// Override allocWithZone: to return the single BNRItemStore instance
+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

// Override init to create an instance of NSMutableArray and assign it to the instance variable
- (id)init
{
    self = [super init];
    if (self) {
        allItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)allItems
{
    return allItems;
}
- (BNRItem *)createItem
{
    BNRItem *p = [BNRItem randomItem];
    [allItems addObject:p];
    return p;
}

// Remove BNRItem from BNRItemStore
- (void)removeItem:(BNRItem *)p
{
    [allItems removeObjectIdenticalTo:p];
}

// Change the order of the items
- (void)moveItemAtIndex:(int)from
                toIndex:(int)to
{
    if (from == to) {
        return;
    }
    // Get pointer to object being moved so we can re-insert it
    BNRItem *p = [allItems objectAtIndex:from];
    // Remove p from array
    [allItems removeObjectAtIndex:from];
    // Insert p in array at new location
    [allItems insertObject:p atIndex:to];
}

@end
