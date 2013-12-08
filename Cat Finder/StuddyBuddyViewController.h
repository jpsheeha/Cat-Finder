//
//  StuddyBuddyViewController.h
//  Cat Finder
//
//  Created by Everyone Else on 12/7/13.
//  Copyright (c) 2013 Jason Sheehan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StuddyBuddyViewController : UIViewController{
    NSArray *studyBuddyArray;
}
@property (weak, nonatomic) IBOutlet UITextField *c;
@property (weak, nonatomic) IBOutlet UITextField *cN;


-(IBAction)submit:(id)sender;


@end

