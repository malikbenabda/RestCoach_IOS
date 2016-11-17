//
//  MainViewController.h
//  RestCoach_0_1_0
//
//  Created by kass on 11/11/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"

@interface MainViewController : UIViewController


@property(strong,nonatomic) DBManager* DB;







@property (weak, nonatomic) IBOutlet UIButton *buttonBruit;
@property (weak, nonatomic) IBOutlet UIButton *buttonMaison;
@property (weak, nonatomic) IBOutlet UIButton *buttonStresse;
@property (weak, nonatomic) IBOutlet UIButton *buttonSommeil;
@property (weak, nonatomic) IBOutlet UIButton *buttonSport;
@property (weak, nonatomic) IBOutlet UIButton *buttonKiff;
@property (weak, nonatomic) IBOutlet UIButton *buttonShowTime;
- (IBAction)buttonShowTimeClicked:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *labelTravail;


@property (weak, nonatomic) IBOutlet UIButton *buttonStart;

- (IBAction)buttonBruitClicked:(id)sender;

- (IBAction)butttonMaisonClicked:(id)sender;
- (IBAction)buttonStresseClicked:(id)sender;
- (IBAction)buttonSommeilClicked:(id)sender;
- (IBAction)buttonSportClicked:(id)sender;
- (IBAction)buttonKiffClicked:(id)sender;

- (IBAction)buttonStartClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePickedTime;
- (IBAction)datePickedTimeValueChanged:(id)sender;

@end
