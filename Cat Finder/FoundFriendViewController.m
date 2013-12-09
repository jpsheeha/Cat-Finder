//
//  FoundFriendViewController.m
//  Cat Finder
//
//  Created by Jason Sheehan on 12/9/13.
//  Copyright (c) 2013 Jason Sheehan. All rights reserved.
//

#import "FoundFriendViewController.h"

@interface FoundFriendViewController ()

@end

@implementation FoundFriendViewController

@synthesize friendTable;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self performSelector:@selector(retrieveFromParse)];
}

- (void) retrieveFromParse {
    PFQuery *retrieveCatLocation = [PFQuery queryWithClassName:@"FriendMatches"];
    
    [retrieveCatLocation findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            friendArray = [[NSArray alloc] initWithArray:objects];
        }
        //catsTable is the name of the table in the found cat page.
        [friendTable reloadData];
    }];
    
}

//get number of sections in tableView from cats array
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //Return the number of sections.
    return 1;
}

//get number of rows by counting number of cats
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return friendArray.count;
}

//setup cells in tableView
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //setup cell
    static NSString *CellIdentifier = @"friendListCell";
    FriendCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSDictionary *tempObject = [friendArray objectAtIndex:indexPath.row];
    cell.friendTitle.text = [tempObject objectForKey:@"email"];
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
