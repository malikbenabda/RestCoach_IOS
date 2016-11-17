//
//  WorkingViewController.h
//  RestCoach_0_1_0
//
//  Created by kass on 12/4/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"

@interface WorkingViewController : UIViewController

@property(strong,nonatomic) DBManager* DB;

@property (weak, nonatomic) IBOutlet UIButton *buttonStop;
@property (weak, nonatomic) IBOutlet UIButton *buttonQuit;
@property (weak, nonatomic) IBOutlet UIButton *buttonPause;

- (IBAction)buttonStopClicked:(id)sender;
- (IBAction)buttonQuitClicked:(id)sender;
- (IBAction)buttonPauseClicked:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *labelTimeShow;

@end
