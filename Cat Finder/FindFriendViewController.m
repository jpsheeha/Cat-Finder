//
//  FindFriendViewController.m
//  Cat Finder
//
//  Created by Everyone Else on 12/7/13.
//  Copyright (c) 2013 Jason Sheehan. All rights reserved.
//

#import "FindFriendViewController.h"
#import <Parse/Parse.h>

@interface FindFriendViewController ()

@end

@implementation FindFriendViewController

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

- (IBAction)submit:(id)sender {
    
    //change the thing after the star and rename everything else
    //change the thing in quotes to the table you want to connect to
    PFObject *newFriendObject = [PFObject objectWithClassName:@"FindFriend"];
    //current user - don't change this
    PFUser *currentUser = [PFUser currentUser];
    [newFriendObject setObject:currentUser.objectId forKey: @"userId"];

    //hangouttype type
    NSNumber *type = [NSNumber numberWithInteger:_pickType.selectedSegmentIndex];
    newFriendObject[@"type"] = type;
    //female preference
    NSNumber *M;
    if(_ManPref.on){
        M = [NSNumber numberWithInt:(1)];
    }
    else {
        M = [NSNumber numberWithInt:(0)];
    }
    newFriendObject[@"M"] = M;
    
    //male preference
    NSNumber *W;
    if(_WomanPref.on){
        W = [NSNumber numberWithInt:(1)];
    }
    else {
        W = [NSNumber numberWithInt:(0)];
    }
    newFriendObject[@"W"] = W;
    
    NSNumber *minAge = [NSNumber numberWithInteger:_MinAge.value];
    newFriendObject[@"minAge"] = minAge;
    
    NSNumber *maxAge = [NSNumber numberWithInteger:_MaxAge.value];
    newFriendObject[@"maxAge"] = maxAge;
    
    [newFriendObject save];
    
}
@end
