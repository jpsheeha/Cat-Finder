//
//  FindFriendViewController.h
//  Cat Finder
//
//  Created by Everyone Else on 12/7/13.
//  Copyright (c) 2013 Jason Sheehan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FindFriendViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *pickType;

@property (weak, nonatomic) IBOutlet UISwitch *ManPref;

@property (weak, nonatomic) IBOutlet UISwitch *WomanPref;


@property (weak, nonatomic) IBOutlet UISlider *MinAge;


@property (weak, nonatomic) IBOutlet UISlider *MaxAge;


@property (weak, nonatomic) IBOutlet UIButton *submit; //this might be useless

- (IBAction)submit:(id)sender;






@end
