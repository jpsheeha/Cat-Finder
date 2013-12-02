//
//  DatingViewController.h
//  Cat Finder
//
//  Created by Everyone Else on 12/1/13.
//  Copyright (c) 2013 Jason Sheehan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface DatingViewController : UIViewController//{
//    BOOL prefMan;
//    BOOL prefW;
//    int dateType;
//    int minAge;
//    int maxAge;
//}

//items in the page
@property (weak, nonatomic) IBOutlet UISegmentedControl *dateType;
@property (weak, nonatomic) IBOutlet UISwitch *dateMan;
@property (weak, nonatomic) IBOutlet UISwitch *dateWoman;
@property (weak, nonatomic) IBOutlet UISlider *sliderMinAge;
@property (weak, nonatomic) IBOutlet UISlider *sliderMaxAge;

@property (weak, nonatomic) IBOutlet UIButton *submitButton;

- (IBAction)submitButton:(UIButton*)sender;


@end
