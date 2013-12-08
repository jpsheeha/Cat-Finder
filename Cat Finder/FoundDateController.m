//
//  FoundDateController.m
//  Cat Finder
//
//  Created by Everyone Else on 12/2/13.
//  Copyright (c) 2013 Jason Sheehan. All rights reserved.
//

#import "FoundDateController.h"

@interface FoundDateController ()

@end

@implementation FoundDateController

@synthesize matchTable;

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
    // Do any additional setup after loading the view from its nib.
    
    
    
    
    [self performSelector:@selector(retrieveFromParse)];
}


- (void) retrieveFromParse { PFQuery *retrieveMatches = [PFQuery queryWithClassName:@"FindDate"];
    [retrieveMatches findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error)
    { if (!error) { matchArray = [[NSArray alloc] initWithArray:objects];}
        [matchTable reloadData]; }];
    
}

//get number of sections in tableView from cats array
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //Return the number of sections.
    return 1;
}

//get number of rows by counting number of cats
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return matchArray.count;
}


//setup cells in tableView
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //setup cell
    static NSString *CellIdentifier = @"dateListCell";
    DateCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSDictionary *tempObject = [matchArray objectAtIndex:indexPath.row];
    cell.dateMatch.text = [tempObject objectForKey:@"userID"];
    
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
