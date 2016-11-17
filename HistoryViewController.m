//
//  HistoryViewController.m
//  RestCoach_0_1_0
//
//  Created by kass on 11/10/15.
//  Copyright (c) 2015 kass. All rights reserved.

#import "HistoryViewController.h"
#import "HistoryCustomTableViewCell.h"
#import "MyConstants.h"

@interface HistoryViewController ()
@end

@implementation HistoryViewController
{
    NSMutableArray *middleArray ;
    NSMutableArray *leftDownArray ;
    NSMutableArray *leftArray ;
    NSMutableArray *image1 ;
    NSMutableArray *image2 ;
    NSMutableArray *image3 ;
    NSMutableArray *image4 ;
    NSMutableArray *image5 ;
    NSMutableArray *image6 ;
    NSMutableArray *idTravail;
}

- (void)didMoveToParentViewController:(UIViewController *)parent
{
    
    long count = [travailArrayConstant count];
    middleArray      = [[NSMutableArray alloc] initWithCapacity:count];
    leftDownArray    = [[NSMutableArray alloc] initWithCapacity:count];
    leftArray        = [[NSMutableArray alloc] initWithCapacity:count];
    image1           = [[NSMutableArray alloc] initWithCapacity:count];
    image2           = [[NSMutableArray alloc] initWithCapacity:count];
    image3           = [[NSMutableArray alloc] initWithCapacity:count];
    image4           = [[NSMutableArray alloc] initWithCapacity:count];
    image5           = [[NSMutableArray alloc] initWithCapacity:count];
    image6           = [[NSMutableArray alloc] initWithCapacity:count];
    idTravail        = [[NSMutableArray alloc] initWithCapacity:count];
        NSLog(@" ");
        NSLog(@" ");
        NSLog(@" ");
        NSLog(@" ");
    for(int i = 0 ; i< [travailArrayConstant count] ; i++)
    {
        
        Travail *t = [travailArrayConstant objectAtIndex:i];
        int heure  = [t getFinHeureInt]  - [ t getDebutHeureInt ];
        int minute = [t getFinMinuteInt] - [ t getDebutMinuteInt];
        NSString* time1 = [[NSString alloc] initWithFormat:@"%@ : %@",[ t getDebutHeure ], [t getDebutMinute ]];
        [leftDownArray    addObject: time1 ];
        NSString* time = [[NSString alloc] initWithFormat:@"%d : %d",heure , minute];
        [middleArray      addObject: time];
        NSString* id = [t getIdTravil];
        [idTravail        addObject: id];
        if([t getBruit]==true)
        {
            [image1  addObject:@"1"];
            NSLog(@"111111111111");
        }else{
            [image1 addObject:@"0"];
            NSLog(@"000000000000");
        }
        
        if([t getMaison]==true)
        {
            NSLog(@"111111111111");
            [image2  addObject:@"1"];
        }else{
            NSLog(@"000000000000");
            [image2 addObject:@"0"];
        }
        
        if([t getStresse]==true)
        {
            [image3  addObject:@"1"];
        }else{
            [image3 addObject:@"0"];
        }
        
        if([t getSport]==true)
        {
            [image4  addObject:@"1"];
        }else{
            [image4 addObject:@"0"];
        }
        
        if([t getSommeil]==true)
        {
            [image5  addObject:@"1"];
        }else{
            [image5 addObject:@"0"];
        }
        
        if([t getKiff]==true)
        {
            [image6  addObject:@"1"];
        }else{
            [image6  addObject:@"0"];
        }
        
        
        [leftArray      addObject: [t getDate]];
        
        
        NSLog(@" || Travail ||");
        NSLog(@" ");
        NSLog(@"    idTravail   %@" ,t.getIdTravil);
        NSLog(@"    debutHeure  %@" ,t.getDebutHeure);
        NSLog(@"    debutMinute %@" ,t.getDebutMinute);
        NSLog(@"    finHeure    %@" ,t.getFinHeure);
        NSLog(@"    finMinute   %@" ,t.getFinMinte);
        NSLog(@"    date        %@" ,t.getDate);
    }
        NSLog(@" ");
        NSLog(@" ");
        NSLog(@" ");
        NSLog(@" ");
   // self.middleArray = [[NSMutableArray alloc] initWithObjects:@"1h 50min"   ,@"0h 20min "  , @"1h 21min",@"2h 40min" , @"0h 30min"   ,  nil];
   //     [self.middleArray addObject: @"test"];
  //   [self.historyTableView reloadData];
}

/*
-(void)willMoveToParentViewController:(UIViewController *)parent
{
    NSLog(@"FirstViewController moving to or from parent view controller");
    self.view.backgroundColor=[UIColor blueColor];
}

-(void)didMoveToParentViewController:(UIViewController *)parent
{
    NSLog(@"FirstViewController did move to parent view controller");
    self.view.frame = CGRectMake(0,0,768, 1024);
}
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.historyTableView registerNib:[UINib nibWithNibName:NSStringFromClass([HistoryCustomTableViewCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([HistoryCustomTableViewCell class])];
    
    
   // self.leftDownArray = [[NSMutableArray alloc] init];
   // self.middleArray   = [[NSMutableArray alloc] init];
    /*
    self.leftDownArray   = [[NSMutableArray alloc] initWithObjects:@"12:30" ,@"13:21", @"00:12" ,@"04:14", @"03:12",  nil];
    
    self.leftArray   = [[NSMutableArray alloc] initWithObjects:@"lun.7 dec." ,@"dim.6 dec", @"dim.6 dec" ,@"sam.5 dec", @"sam.5 dec",  nil];
    self.middleArray = [[NSMutableArray alloc] initWithObjects:@"1h 50min"   ,@"0h 20min "  , @"1h 21min",@"2h 40min" , @"0h 30min"   ,  nil];
    self.image1      = [[NSMutableArray alloc] initWithObjects:@"1"           ,@"1"       , @"0"         ,@"1"        , @"0"        ,  nil];
    self.image2      = [[NSMutableArray alloc] initWithObjects:@"0"           ,@"1"       , @"1"         ,@"0"        , @"0"        ,  nil];
    self.image3      = [[NSMutableArray alloc] initWithObjects:@"1"           ,@"1"       , @"0"         ,@"1"        , @"1"        ,  nil];
    self.image4      = [[NSMutableArray alloc] initWithObjects:@"0"           ,@"0"       , @"1"         ,@"1"        , @"1"        ,  nil];
    self.image5      = [[NSMutableArray alloc] initWithObjects:@"0"           ,@"1"       , @"0"         ,@"1"        , @"1"        ,  nil];
    self.image6      = [[NSMutableArray alloc] initWithObjects:@"1"           ,@"0"       , @"0"         ,@"1"        , @"1"        ,  nil];
    
     */
    NSString *a = @"a";
    NSMutableArray *array = [[NSMutableArray alloc]init];
    [array addObject:a];
    
   
    /*
    NSLog(@"behichi taw");
    for(int i = 0 ; i< [travailArrayConstant count] ; i++)
    {
        NSLog(@"i = %d",i);
        Travail *t = [travailArrayConstant objectAtIndex:i];
        int heure  = [t getFinHeureInt]  - [ t getDebutHeureInt ];
        int minute = [t getFinMinuteInt] - [ t getDebutMinuteInt];
        NSString* time = [[NSString alloc] initWithFormat:@"%d : %d",heure , minute];
        NSLog(@"time  time time time %@",time);
       // [self.middleArray addObject: time];
        [self.leftArray addObject:@"test"];
    }
   // NSLog(@"number : %ld ", [self.middleArray count]);
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
     //return [travailArrayConstant count];
    //return (0 == cnt)? cnt+1 : cnt;
   //  return [middleArray1 count];
   //  return 5;
    // return 13;
     return [middleArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    HistoryCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([HistoryCustomTableViewCell class])forIndexPath:indexPath];
    
    // cell.labelLeftDown.text = [self.leftArray objectAtIndex:indexPath.row];
    cell.labelMiddle.text   = [middleArray objectAtIndex:indexPath.row];
    cell.labelLeft.text     = [leftArray objectAtIndex:indexPath.row];
    cell.labelLeftDown.text = [leftDownArray objectAtIndex:indexPath.row];
    
    UIImage *bruit   = [UIImage imageNamed:@"bruit.png"];
    UIImage *maison  = [UIImage imageNamed:@"maison.png"];
    UIImage *sleep   = [UIImage imageNamed:@"sleep.png"];
    UIImage *stresse = [UIImage imageNamed:@"stresse.png"];
    UIImage *sport   = [UIImage imageNamed:@"sport.png"];
    UIImage *kiff    = [UIImage imageNamed:@"kiff.png"];
    
    if([[image1 objectAtIndex:indexPath.row]  isEqual: @"1"])
    {
        cell.imageView1.image = bruit;
    }
    if([[image2 objectAtIndex:indexPath.row] isEqual: @"1"])
    {
        cell.imageView2.image = maison;
    }
    if([[image3 objectAtIndex:indexPath.row] isEqual: @"1"])
    {
        cell.imageView3.image = sleep;
    }
    if([[image4 objectAtIndex:indexPath.row] isEqual: @"1"])
    {
        cell.imageView4.image = stresse;
    }
    if([[image5 objectAtIndex:indexPath.row] isEqual: @"1"])
    {
        cell.imageView5.image = sport;
    }
    if([[image6 objectAtIndex:indexPath.row] isEqual: @"1"])
    {
        cell.imageView6.image = kiff;
    }
    
    /*
     NSString *SimpleIdentifier =@"MainCell";
     
     UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleIdentifier];
     
     if (cell == nil)
     {
     cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainCell"];
     }
     
     UIImage *imageVisiteGuidée = [UIImage imageNamed:@"VisiteGuidée"];
     cell.imageView.image = imageVisiteGuidée;
     
     cell.textLabel.text = [self.parametreArray objectAtIndex:indexPath.row];
     
     cell.imageView.image = imageVisiteGuidée;
     */
    
    return cell;
}

/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonRafrechClicked:(id)sender {
    /*
    NSLog(@"behichi taw");
    for(int i = 0 ; i< [travailArrayConstant count] ; i++)
    {
        Travail *t = [travailArrayConstant objectAtIndex:i];
        int heure  = [t getFinHeureInt]  - [ t getDebutHeureInt ];
        int minute = [t getFinMinuteInt] - [ t getDebutMinuteInt];
        NSString* time = [[NSString alloc] initWithFormat:@"%d : %d",heure , minute];
        NSLog(@"time  time time time %@",time);
        [self.middleArray addObject: @"test"];
        NSLog(@"longeur %ld", [self.middleArray count] );
    }
     */
   //     [self.middleArray addObject: @"test"];
   // [self.historyTableView reloadData];
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        [_historyTableView beginUpdates];
        
        
        [middleArray   removeObjectAtIndex:indexPath.row ];
        [leftDownArray removeObjectAtIndex:indexPath.row ];
        [leftArray     removeObjectAtIndex:indexPath.row ];
        [image1        removeObjectAtIndex:indexPath.row ];
        [image2        removeObjectAtIndex:indexPath.row ];
        [image3        removeObjectAtIndex:indexPath.row ];
        [image4        removeObjectAtIndex:indexPath.row ];
        [image5        removeObjectAtIndex:indexPath.row ];
        [image6        removeObjectAtIndex:indexPath.row ];
        int idInt = [[idTravail objectAtIndex:indexPath.row] intValue];
        [arrayTravailConstant deleteTravailinitwithidTravail:idInt];
        [idTravail     removeObjectAtIndex:indexPath.row ];
        [_historyTableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObjects:indexPath, nil ] withRowAnimation: UITableViewRowAnimationFade];
      /*
        if (indexPath.row < [self tableView:self.historyTableView numberOfRowsInSection:indexPath.section]) {
            [_historyTableView reloadRowsAtIndexPaths:@[indexPath]
                        withRowAnimation:UITableViewRowAnimationFade];
        } else {
            [_historyTableView deleteRowsAtIndexPaths:@[indexPath]
                        withRowAnimation:UITableViewRowAnimationFade];
        }
       */
        [_historyTableView endUpdates];
    }
}

@end
