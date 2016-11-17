//
//  StartViewController.m
//  RestCoach_0_1_0
//
//  Created by kass on 11/10/15.
//  Copyright (c) 2015 kass. All rights reserved.
//
#import "StartViewController.h"
#import "MainViewController.h"
#import "MusicViewController.h"
#import "ProverbeViewController.h"
#import "HistoryViewController.h"
#import "ParametreViewController.h"



@interface StartViewController ()

@end

@implementation StartViewController

MainViewController      *MainVC;
HistoryViewController   *HistoryVC;
MusicViewController     *MusicVC;
ProverbeViewController  *ProverbeVC;
ParametreViewController *ParametreVC;
bool firstUse = true;




- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    if(firstUse == true)
    {
        travailConstant = [[Travail alloc]initwithidTravail:@"" withdebutHeure:@"" withdebutMinute:@"" withfinHeure:@"" withfinMinute:@"" withdate:@"" withday:0 withbruit:false withmaison:false withstresse:false withsommeil:false withsport:false withkiff:false];
        
        parametreConstant = [[Parametre alloc]initwithidParametre:@"" withTempsTravailHeureDefault:@"" withTempsTravailMinuteDefault:@"" withTempsTravailHeure:@"" withTempsTravailMinute:@""];
        // arrayTravailConstant = [[NSMutableArray alloc] init];
        travailArrayConstant = [[NSMutableArray alloc] init];
        // arrayTravailConstant = [[ArrayTravail alloc] initwith];
        firstUse = false;
    }
    
    
   //    [self.historyTableView registerNib:[UINib nibWithNibName:NSStringFromClass([HistoryCustomTableViewCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([HistoryCustomTableViewCell class])];
    _DB=[[DBManager alloc]init];
   // [_DB dropAllTable];
    [_DB createTable];
    [_DB uploadAllTravail];
    
    UISwipeGestureRecognizer *rightRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(rightSwipeHandle:)];
    rightRecognizer.direction = UISwipeGestureRecognizerDirectionRight;
    [rightRecognizer setNumberOfTouchesRequired:1];
    
    //add the your gestureRecognizer , where to detect the touch..
    [self.view addGestureRecognizer:rightRecognizer];
    
    UISwipeGestureRecognizer *leftRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(leftSwipeHandle:)];
    leftRecognizer.direction = UISwipeGestureRecognizerDirectionLeft;
    [leftRecognizer setNumberOfTouchesRequired:1];
    
    [self.ScrollView addGestureRecognizer:leftRecognizer];
    
    
    // main view controller
    MainVC = [[MainViewController alloc] init];
    
    [self addChildViewController:MainVC];
    [self.ScrollView addSubview:MainVC.view];
    
    [MainVC didMoveToParentViewController:(self)];
   
    //history view controller
            HistoryVC = [[HistoryViewController alloc]init];
    
            CGRect frameHistory = HistoryVC.view.frame;
            frameHistory.origin.x = self.view.frame.size.width * 1;
            HistoryVC.view.frame = frameHistory;
            
            [self addChildViewController:HistoryVC];
            [self.ScrollView addSubview:HistoryVC.view];
            [HistoryVC didMoveToParentViewController:(self)];
   
    //Proverbe view controller
            ProverbeVC = [[ProverbeViewController alloc]init];
    
            CGRect frameProverbe = ProverbeVC.view.frame;
            frameProverbe.origin.x = self.view.frame.size.width * 2;
            ProverbeVC.view.frame = frameProverbe;
            
            [self addChildViewController:ProverbeVC];
            [self.ScrollView addSubview:ProverbeVC.view];
            [ProverbeVC didMoveToParentViewController:(self)];
    
    //music view controller
            MusicVC = [[MusicViewController alloc]init];
    
            CGRect frameMusic = MusicVC.view.frame;
            frameMusic.origin.x = self.view.frame.size.width * 3;
            MusicVC.view.frame = frameMusic;
            
            [self addChildViewController:MusicVC];
            [self.ScrollView addSubview:MusicVC.view];
            [MusicVC didMoveToParentViewController:(self)];
            [MusicVC didMoveToParentViewController:(self)];
   
    //Parametre view controller
            ParametreVC = [[ParametreViewController alloc]init];
    
            CGRect frameParametre = ParametreVC.view.frame;
            frameParametre.origin.x = self.view.frame.size.width * 4;
            ParametreVC.view.frame = frameParametre;
            
            [self addChildViewController:ParametreVC];
            [self.ScrollView addSubview:ParametreVC.view];
            [ParametreVC didMoveToParentViewController:(self)];
            [ParametreVC didMoveToParentViewController:(self)];
    
    self.ScrollView.contentSize = CGSizeMake(self.view.frame.size.width * 5, self.view.frame.size.height - 66);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)rightSwipeHandle:(UISwipeGestureRecognizer*)gestureRecognizer
{
    // NSLog(@"test");
}

- (void)leftSwipeHandle:(UISwipeGestureRecognizer*)gestureRecognizer
{
    // NSLog(@"test2");
}




@end
