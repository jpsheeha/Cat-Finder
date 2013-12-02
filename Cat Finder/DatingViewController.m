//
//  DatingViewController.m
//  Cat Finder
//
//  Created by Everyone Else on 12/1/13.
//  Copyright (c) 2013 Jason Sheehan. All rights reserved.
//

#import "DatingViewController.h"

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

- (IBAction)setDateType:(id)sender{
    
}

- (IBAction)submitButton:(id)sender {
    
    
//    PFUser *newUser = [PFUser currentUser];
//    [newUser setObject:_interestedIn.text forKey:@"interestedIn"];
//    [newUser saveInBackground];
    
    
    
    
    
}
@end
