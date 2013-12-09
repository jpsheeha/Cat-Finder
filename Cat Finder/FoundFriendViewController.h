//
//  FoundFriendViewController.h
//  Cat Finder
//
//  Created by Jason Sheehan on 12/9/13.
//  Copyright (c) 2013 Jason Sheehan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "FriendCell.h"

@interface FoundFriendViewController : UIViewController <UITableViewDelegate>{
    NSArray *friendArray;
}


@property (weak, nonatomic) IBOutlet UITableView *friendTable;




- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
- (void)didReceiveMemoryWarning;

@end
