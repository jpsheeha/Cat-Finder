//
//  DatingViewController.h
//  Cat Finder
//
//  Created by Everyone Else on 12/1/13.
//  Copyright (c) 2013 Jason Sheehan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface DatingViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *interestedIn;


- (IBAction)submitButton:(id)sender;
@end
