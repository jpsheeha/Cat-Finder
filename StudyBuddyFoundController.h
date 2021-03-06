//
//  StudyBuddyFoundController.h
//  Cat Finder
//
//  Created by Everyone Else on 12/2/13.
//  Copyright (c) 2013 Jason Sheehan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "StudyBuddyCell.h"

@interface StudyBuddyFoundController : UIViewController <UITableViewDelegate>{
    NSArray *buddyArray;
}

@property (weak, nonatomic) IBOutlet UITableView *buddyTable;



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
- (void)didReceiveMemoryWarning;

@end
