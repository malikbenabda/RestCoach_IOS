//
//  WorkingViewController.m
//  RestCoach_0_1_0
//
//  Created by kass on 12/4/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import "WorkingViewController.h"
#import "MyConstants.h"
#import "Travail.h"

@interface WorkingViewController ()

@end

@implementation WorkingViewController
{
    NSTimeInterval time  ;
    
    int heureAfficher    ;
    int minuteAfficher   ;
    int secondeAfficher  ;
    int restSeconde      ;
    
    NSTimeInterval pausedTime;
    NSTimeInterval resumedTime;
    
    bool pause;
    
    int totalHeure   ;
    int totalMinute  ;
    int totalSeconde ;
    
    
    NSDateFormatter *formatterHour   ;
    NSDateFormatter *formatterMinute ;
    NSString        *currentHour     ;
    NSString        *currentMinute   ;
}


- (void)viewDidLoad {
    
       _DB=[[DBManager alloc]init]; 
    formatterHour = [[NSDateFormatter alloc] init];
    [formatterHour setDateFormat:@"HH"];
    
    formatterMinute = [[NSDateFormatter alloc] init];
    [formatterMinute setDateFormat:@"mm"];
    
    currentHour    =  [formatterHour stringFromDate:[NSDate date]];
    currentMinute  =  [formatterMinute stringFromDate:[NSDate date]];
    
    [travailConstant setDebutHeure:currentHour];
    [travailConstant setDebutMinute:currentMinute];
    
    time = [NSDate timeIntervalSinceReferenceDate];
    
    pause = false;
    pausedTime  = 0;
    resumedTime = 0;
    
    
    totalHeure   = [parametreConstant getTempsTravailHeureInt]  ;
    totalMinute  = [parametreConstant getTempsTravailMinuteInt] ;
    totalSeconde = totalHeure*3600 + totalMinute*60 ;
    // NSLog(@" totalSeconde %d",totalSeconde);
    
    [self update];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) update{
    
    
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate ];
    NSTimeInterval elapsedTime = currentTime - time;
    
    
    if(resumedTime !=0 && pausedTime != 0)
    {
        totalSeconde = totalSeconde + resumedTime - pausedTime;
        resumedTime = 0;
        pausedTime  = 0;
    }
    restSeconde      = totalSeconde - elapsedTime;
   // NSLog(@"restSeconde %d",restSeconde);
    
    heureAfficher    = restSeconde / 3600 ;
    minuteAfficher   = (restSeconde - (heureAfficher*3600)) / 60  ;
    secondeAfficher  = restSeconde - ((heureAfficher*3600 + minuteAfficher*60));
    
    if(heureAfficher < 1 && minuteAfficher < 1 && secondeAfficher <1)
    {
        heureAfficher   = 0;
        minuteAfficher  = 0;
        secondeAfficher = 0;
    }
    
    if(pause == false)
    {
        _labelTimeShow.text = [NSString stringWithFormat:@"%d:%d:%d", heureAfficher , minuteAfficher , secondeAfficher];
    }
    
    
    
    [self performSelector:@selector(update) withObject:self afterDelay:0.1];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonStopClicked:(id)sender {
    formatterHour = [[NSDateFormatter alloc] init];
    [formatterHour setDateFormat:@"HH"];
    
    formatterMinute = [[NSDateFormatter alloc] init];
    [formatterMinute setDateFormat:@"mm"];
    
    currentHour    =  [formatterHour stringFromDate:[NSDate date]];
    currentMinute  =  [formatterMinute stringFromDate:[NSDate date]];
    
    [travailConstant setFinHeure:currentHour];
    [travailConstant setFinMinute:currentMinute];
    NSDateFormatter *formatter;
    NSString        *dateString;
    
    formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd-MM-yyyy"];
    
    dateString = [formatter stringFromDate:[NSDate date]];

    [travailConstant setDate:dateString];
    
    /*
    NSLog(@"Travail :");
    NSLog(@"    Debut heure  %@",[travailConstant getDebutHeure]);
    NSLog(@"    Fin   heure  %@",[travailConstant getFinHeure]);
    NSLog(@"    Debut Minute %@",[travailConstant getDebutMinute]);
    NSLog(@"    Fin   Minute %@",[travailConstant getFinMinte]);
     */
    Travail *t ;
    t = [[Travail alloc]initwithidTravail:[travailConstant getIdTravil] withdebutHeure:[travailConstant getDebutHeure]  withdebutMinute:[travailConstant getFinMinte] withfinHeure:[travailConstant getDebutHeure] withfinMinute:[travailConstant getFinMinte] withdate:[travailConstant getDate] withday:[travailConstant getDays] withbruit:[travailConstant getBruit] withmaison:[travailConstant getMaison] withstresse:[travailConstant getStresse] withsommeil:[travailConstant getSommeil] withsport:[travailConstant getSport] withkiff:[travailConstant getKiff]];
    [travailArrayConstant addObject:t];
    // [arrayTravailConstant addTravail];
    [_DB openDB];
    [_DB saveTravail];
    [travailConstant reset];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)buttonQuitClicked:(id)sender {
    for(int i = 0 ; i< [travailArrayConstant count] ; i++)
    {
        Travail *t = [travailArrayConstant objectAtIndex:i];
        NSLog(@"id travail  : %@" ,[t getIdTravil]);
        NSLog(@"debutHeure  : %@" ,[t getDebutHeure]);
        NSLog(@"finHeure    : %@" ,[t getFinHeure]);
        NSLog(@"debutMinute : %@" ,[t getDebutMinute]);
        NSLog(@"finMinute   : %@" ,[t getFinMinte]);
    }
    
    // [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)buttonPauseClicked:(id)sender {
    if(pause == true)
    {
        resumedTime = [NSDate timeIntervalSinceReferenceDate];
        [_buttonPause setTitle:@"Pause" forState:UIControlStateNormal]; // To set the title
        pause = false;
    }
    else
    {
        pausedTime = [NSDate timeIntervalSinceReferenceDate ];
        [_buttonPause setTitle:@"Resumer" forState:UIControlStateNormal]; // To set the title
        pause = true;
    }
}

/*
-(void) playAlarmSound
{
    // Get the filename of the sound file
    NSString *path = [NSString stringWithFormat:@"%@%@",
                      [[NSBundle mainBundle] resourcePath],
                      @"/alarm.wav"];
    
    // Declare a sound id
    SystemSoundID soundID;
    
    // get a URL for the sound file
    NSURL *filepath = [NSURL fileURLWithPath:path isDirectory:NO];
    
    CFURLRef test = ((__bridge CFURLRef ) filepath);
    
    // Use audio services to create sound
    AudioServicesCreateSystemSoundID(test, &soundID);
    
    // Use audio services to play the sound
    AudioServicesPlaySystemSound(soundID);
}
 */
@end
