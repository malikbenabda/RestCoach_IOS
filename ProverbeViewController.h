//
//  ProverbeViewController.h
//  RestCoach_0_1_0
//
//  Created by kass on 11/10/15.
//  Copyright (c) 2015 kass. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProverbeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;
- (IBAction)buttonImageDroitClicked:(id)sender;
- (IBAction)buttonImageGaucheClicked:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (copy, nonatomic) NSMutableArray *labelArray;
@property (copy, nonatomic) NSMutableArray *imageArray;
- (IBAction)buttonLableDroitClicked:(id)sender;
- (IBAction)buttonLabelGaucheClicked:(id)sender;

@end
