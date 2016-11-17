//
//  MainViewController.m
//  RestCoach_0_1_0
//
//  Created by kass on 11/11/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import "MainViewController.h"
#import "WorkingViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
{
    bool start;
    bool boolButtonBruit;
    bool boolButtonStresse;
    bool boolButtonMaison;
    bool boolButtonKiff;
    bool boolButtonSommeil;
    bool boolButtonSport;
    
    NSTimeInterval time;
    
    NSString *minuteString ;
    NSString *heureString  ;
    int *idLast;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    /*
    UIImage *Home      = [UIImage imageNamed:@"home.png"];
    UIImage *History   = [UIImage imageNamed:@"history.png"];
    UIImage *Music     = [UIImage imageNamed:@"music.png"];
    UIImage *Parametre = [UIImage imageNamed:@"parametre.png"];
    UIImage *stat      = [UIImage imageNamed:@"stat.png"];
    
    _buttonHome.imageView.image      = Home;
    _buttonHistory.imageView.image   = History;
    _buttonProverbe.imageView.image  = Music;
    _buttonStat.imageView.image      = stat;
    _buttonParametre.imageView.image = Parametre;
     */
    
    
    _labelTravail.hidden = YES;
    
    _buttonBruit.backgroundColor   = [UIColor colorWithRed:196 green:212 blue:216 alpha:0.4];
    _buttonMaison.backgroundColor  = [UIColor colorWithRed:196 green:212 blue:216 alpha:0.4];
    _buttonSommeil.backgroundColor = [UIColor colorWithRed:196 green:212 blue:216 alpha:0.4];
    _buttonSport.backgroundColor   = [UIColor colorWithRed:196 green:212 blue:216 alpha:0.4];
    _buttonStresse.backgroundColor = [UIColor colorWithRed:196 green:212 blue:216 alpha:0.4];
    _buttonKiff.backgroundColor    = [UIColor colorWithRed:196 green:212 blue:216 alpha:0.4];
    
    boolButtonStresse = false ;
    boolButtonSport   = false ;
    boolButtonSommeil = false ;
    boolButtonMaison  = false ;
    boolButtonKiff    = false ;
    boolButtonBruit   = false ;
    
    
    _buttonShowTime.hidden  = NO ;
    _datePickedTime.hidden  = YES ;
    
    start = false;
    
    
    
    
    _DB=[[DBManager alloc]init];
    [_DB openDB];
}


- (void) update{
    if (start == false)
    {
        return;
    }
    
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate ];
    NSTimeInterval elapsedTime = currentTime - time;
    
    int heure   = (int)(elapsedTime / 360.0 );
    int minute  = (int)((elapsedTime - (heure * 360))/60.0);
    
    NSInteger heureTotal  = [heureString integerValue];
    NSInteger minuteTotal = [minuteString integerValue];
   
    NSInteger restHeure  = heureTotal  - heure;
    NSInteger restMinute = minuteTotal - minute ;
    
    int restMinuteInt = (int) restMinute;
    int restHeureInt  = (int) restHeure;
    
    
    
//   _labelTimeChrono.text = [NSString stringWithFormat:@"%d:%d", restHeureInt , restMinuteInt ];
    
    [self performSelector:@selector(update) withObject:self afterDelay:0.1];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonBruitClicked:(id)sender {
    if(boolButtonBruit == false)
    {
        [travailConstant setBruit:true];
        _buttonBruit.backgroundColor   = [UIColor colorWithRed:186 green:202 blue:207 alpha:0.5];
        boolButtonBruit = true;
    }
    else
    {
        [travailConstant setBruit:false];
        _buttonBruit.backgroundColor   = [UIColor colorWithRed:196 green:212 blue:216 alpha:0.4];
        boolButtonBruit = false;
    }
}

- (IBAction)butttonMaisonClicked:(id)sender {
    if(boolButtonMaison  == false)
    {
        [travailConstant setMaison:true];
        _buttonMaison.backgroundColor   = [UIColor colorWithRed:186 green:202 blue:207 alpha:0.5];
        boolButtonMaison = true;
    }
    else
    {
        [travailConstant setMaison:false];
        _buttonMaison.backgroundColor   = [UIColor colorWithRed:196 green:212 blue:216 alpha:0.4];
        boolButtonMaison = false;
    }
    
}

- (IBAction)buttonStresseClicked:(id)sender {
    if(boolButtonStresse == false)
    {
        [travailConstant setStresse:true];
        _buttonStresse.backgroundColor   = [UIColor colorWithRed:186 green:202 blue:207 alpha:0.5];
        boolButtonStresse = true;
    }
    else
    {
        [travailConstant setStresse:false];
        _buttonStresse.backgroundColor   = [UIColor colorWithRed:196 green:212 blue:216 alpha:0.4];
        boolButtonStresse = false;
    }
}

- (IBAction)buttonSommeilClicked:(id)sender {
    if(boolButtonSommeil == false)
    {
        [travailConstant setSommeil:true];
        _buttonSommeil.backgroundColor   = [UIColor colorWithRed:186 green:202 blue:207 alpha:0.5];
        boolButtonSommeil = true;
    }
    else
    {
        [travailConstant setSommeil:false];
        _buttonSommeil.backgroundColor   = [UIColor colorWithRed:196 green:212 blue:216 alpha:0.4];
        boolButtonSommeil = false;
    }
}

- (IBAction)buttonSportClicked:(id)sender {
    if(boolButtonSport == false)
    {
        [travailConstant setSport:true];
        _buttonSport.backgroundColor   = [UIColor colorWithRed:186 green:202 blue:207 alpha:0.5];
        boolButtonSport = true;
    }
    else
    {
        [travailConstant setSport:false];
        _buttonSport.backgroundColor   = [UIColor colorWithRed:196 green:212 blue:216 alpha:0.4];
        boolButtonSport = false;
    }
}

- (IBAction)buttonKiffClicked:(id)sender {
    if(boolButtonKiff == false)
    {
        [travailConstant setKiff:true];
        _buttonKiff.backgroundColor   = [UIColor colorWithRed:186 green:202 blue:207 alpha:0.5];
        boolButtonKiff = true;
    }
    else
    {
        [travailConstant setKiff:false];    
        _buttonKiff.backgroundColor   = [UIColor colorWithRed:196 green:212 blue:216 alpha:0.4];
        boolButtonKiff = false;
    }
}





- (IBAction)buttonStartClicked:(id)sender {
    WorkingViewController *sampleView = [[WorkingViewController alloc] init];
    [self presentModalViewController:sampleView animated:YES];
    
    /*
    WorkingViewController *myViewController0 = [[WorkingViewController alloc] initWithNibName:nil bundle:nil];
    UINavigationController *navigationController0 = [[UINavigationController alloc] initWithRootViewController:myViewController0];
    [self presentViewController:navigationController0
                       animated:YES
                     completion:^{
                         
                     }];
     */
    
    [self update];
}


- (IBAction)datePickedTimeValueChanged:(id)sender {
    
    
    NSDateFormatter *minuteFromatter = [[NSDateFormatter alloc]init];
    NSDateFormatter *heureFromatter  = [[NSDateFormatter alloc]init];
    
    [minuteFromatter setDateFormat:@"mm"];
    [heureFromatter  setDateFormat:@"HH"];
    
    
    minuteString = [minuteFromatter stringFromDate:self.datePickedTime.date];
    heureString  = [heureFromatter stringFromDate:self.datePickedTime.date];
    
    int heureInt     = [heureString  intValue];
    int minuteInt    = [minuteString intValue];
    
    [_buttonShowTime setTitle: [NSString stringWithFormat:@"%u:%02u", heureInt ,minuteInt ] forState:UIControlStateNormal];
    
    _datePickedTime.hidden = YES ;
    _buttonShowTime.hidden     = NO  ;
    
    
    NSDateFormatter *formatterHour;
    NSDateFormatter *formatterMinute;
    NSString        *currentHour;
    NSString        *currentMinute;
    
    formatterHour = [[NSDateFormatter alloc] init];
    [formatterHour setDateFormat:@"HH"];
    
    formatterMinute = [[NSDateFormatter alloc] init];
    [formatterMinute setDateFormat:@"mm"];
    currentHour    =  [formatterHour stringFromDate:[NSDate date]];
    currentMinute  =  [formatterMinute stringFromDate:[NSDate date]];
    
    
    [parametreConstant setTempsTravailHeure:heureString];
    [parametreConstant setTempsTravailMinute:heureString];
    
    
    int currentHourInt = [currentHour intValue];
    int currentMinuteInt = [currentMinute intValue];
   // NSLog(@"currentHourInt : %d",currentHourInt);
   // NSLog(@"currentMinuteInt : %d",currentMinuteInt);
    
    currentHourInt    = currentHourInt   +   heureInt;
    currentMinuteInt  = currentMinuteInt +   minuteInt;
    if(currentHourInt > 23 )
    {
        currentHourInt = currentHourInt - 24;
    }
    if(currentMinuteInt > 59)
    {
        currentHourInt   = currentHourInt   + 1  ;
        currentMinuteInt = currentMinuteInt - 59 ;
    }
    
    NSString *currentHourString = [NSString stringWithFormat:@"%d", currentHourInt];
    NSString *currentMinuteString = [NSString stringWithFormat:@"%d", currentMinuteInt];
    _labelTravail.text = [NSString stringWithFormat:@"Travail %@ : %@ --> %@ : %@", currentHour , currentMinute , currentHourString , currentMinuteString];
    
    _labelTravail.hidden = NO;
}
- (IBAction)buttonShowTimeClicked:(id)sender {
    _datePickedTime.hidden = NO  ;
    _buttonShowTime.hidden     = YES ;
}
@end
