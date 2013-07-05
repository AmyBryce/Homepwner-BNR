//
//  ItemsViewController.m
//  Homepwner
//
//  Created by Amy Bryce on 7/2/13.
//  Copyright (c) 2013 Amy Bryce. All rights reserved.
//

#import "ItemsViewController.h"
#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation ItemsViewController

- (id)init
{
    // Call the superclass's designated initializer
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        // Add 5 random items to the BNRItemStore
        for (int i = 0; i < 5; i++) {
            [[BNRItemStore sharedStore] createItem];
        }
    }
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

// For ItemsViewController to conform to UITableViewDataSource, it must implement
// tableView:numberOfRowsInSection: and tableView:cellForRowAtIndexPath:
// These methods tell the table view how many rows it should display
// and what content to display in each row
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [[[BNRItemStore sharedStore] allItems] count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Create an instance of UITableViewCell, with default appearance
    UITableViewCell *cell =
    [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                           reuseIdentifier:@"UITableViewCell"];
    
    // Set the text on the cell with the description of the item
    // that is at the nth index of items, where n = row this cell
    // will appear in on the tableview
    BNRItem *p = [[[BNRItemStore sharedStore] allItems] objectAtIndex:[indexPath row]];
    [[cell textLabel] setText:[p description]];
    return cell;
}
    


@end


