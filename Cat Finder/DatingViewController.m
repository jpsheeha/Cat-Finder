//
//  DatingViewController.m
//  Cat Finder
//
//  Created by Everyone Else on 12/1/13.
//  Copyright (c) 2013 Jason Sheehan. All rights reserved.
//

#import "DatingViewController.h"
#import <Parse/Parse.h>
#import "LoginViewController.h"

@interface DatingViewController ()

@end

@implementation DatingViewController

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


- (IBAction)submitButton:(UIButton*)sender {
    PFObject *newDateObject = [PFObject objectWithClassName:@"FindDate"];
    //current user
    [newDateObject setObject:[PFUser currentUser].objectId forKey: @"userID"];
    //date type
    NSNumber *DType = [NSNumber numberWithInteger:_dateType.selectedSegmentIndex];
    newDateObject[@"type"] = DType;
    //female preference
    NSNumber *dW;
    if(_dateWoman.on){
        dW = [NSNumber numberWithInt:(1)];
    }
    else {
        dW = [NSNumber numberWithInt:(0)];
    }
    newDateObject[@"dateW"] = dW;
    
    //male preference
    NSNumber *dM;
    if(_dateMan.on){
        dM = [NSNumber numberWithInt:(1)];
    }
    else {
        dM = [NSNumber numberWithInt:(0)];
    }
    newDateObject[@"dateM"] = dM;
    
    NSNumber *minAge = [NSNumber numberWithInteger:_sliderMinAge.value];
    newDateObject[@"minAge"] = minAge;
    
    NSNumber *maxAge = [NSNumber numberWithInteger:_sliderMaxAge.value];
    newDateObject[@"maxAge"] = maxAge;
    
    //[newDateObject setObject:_dateType.selectedSegmentIndex forKey:@"type"];
    //ßßßß[newDateObject setObject:_dateType.selectedSegmentIndex forKey:@"type"];
    [newDateObject save];
    
    
    
}
@end
