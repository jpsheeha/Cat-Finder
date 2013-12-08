//
//  StuddyBuddyViewController.m
//  Cat Finder
//
//  Created by Everyone Else on 12/7/13.
//  Copyright (c) 2013 Jason Sheehan. All rights reserved.
//

#import "StuddyBuddyViewController.h"
#import <Parse/Parse.h>

@interface StuddyBuddyViewController ()

@end

@implementation StuddyBuddyViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)ReturnKeyButton:(id)sender {
    
    [sender resignFirstResponder];
    
}

-(IBAction)submit:(id)sender{
    PFObject *newStuddyBuddyObject = [PFObject objectWithClassName:@"FindStudyBuddy"];
    //current user
    PFUser *currentUser = [PFUser currentUser];
    [newStuddyBuddyObject setObject:currentUser.objectId forKey: @"userID"];
    newStuddyBuddyObject[@"usrName"] = currentUser.username;
    
    NSString *course = _c.text;
    newStuddyBuddyObject[@"course"] = course;
    
    
    NSString *courseNum = _cN.text;
    [courseNum intValue];
    newStuddyBuddyObject[@"courseNumber"] = courseNum;

    
    [newStuddyBuddyObject save];
    
    PFQuery *studyBuddyquery = [PFQuery queryWithClassName:@"FindStudyBuddy"];
    [studyBuddyquery whereKey:@"course" equalTo:course];
    [studyBuddyquery whereKey:@"courseNumber" equalTo:courseNum];
    [studyBuddyquery findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            studyBuddyArray = [[NSArray alloc] initWithArray:objects];
        }

    }];


    
    
}

@end
















