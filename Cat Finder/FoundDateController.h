//
//  FoundDateController.h
//  Cat Finder
//
//  Created by Everyone Else on 12/2/13.
//  Copyright (c) 2013 Jason Sheehan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "DateCell.h"

@interface FoundDateController : UIViewController <UITableViewDelegate>{
    NSArray *matchesArray;
}



@property (weak, nonatomic) IBOutlet UITableView *matchesTable;


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
- (void)didReceiveMemoryWarning;

@end
