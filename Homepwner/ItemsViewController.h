//
//  ItemsViewController.h
//  Homepwner
//
//  Created by Amy Bryce on 7/2/13.
//  Copyright (c) 2013 Amy Bryce. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemsViewController : UITableViewController
{
    IBOutlet UIView *headerView;
}

- (UIView *)headerView;
- (IBAction)addNewItem:(id)sender;
- (IBAction)toggleEditingMode:(id)sender;

@end
