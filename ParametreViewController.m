//
//  ParametreViewController.m
//  RestCoach_0_1_0
//
//  Created by kass on 11/11/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import "ParametreViewController.h"
#import "MyConstants.h"
#import "customParametreTableViewCell.h"


@interface ParametreViewController ()

@end

@implementation ParametreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // _buttonConnexion.layer.cornerRadius = 5 ;
    
    [self.tableViewParametre registerNib:[UINib nibWithNibName:NSStringFromClass([customParametreTableViewCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([customParametreTableViewCell class])];
    
    // self.title = @"parametre";
    
    // Do any additional setup after loading the view from its nib.
    /*
    [self.tableViewParametre registerNib:[UINib nibWithNibName:NSStringFromClass([customTableViewCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([customTableViewCell class])];
     */
    
   self.arrayNotifies = [[NSMutableArray alloc] initWithObjects:@"Generale ",@"Visite guidée",@"RestCoach" , @"Partage réseaux soc", @"Plus de nos apps",  nil];
   //     self.arrayNotifies = [[NSMutableArray alloc] initWithObjects:@"Gee nos apps",  nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.arrayNotifies count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    customParametreTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([customParametreTableViewCell class])forIndexPath:indexPath];
    
    
    
      UIImage *imageVisiteGuidée = [UIImage imageNamed:@"VisiteGuidée"];
      UIImage *flech = [UIImage imageNamed:@"flech_100x100"];
      cell.imageViewLeft.image = imageVisiteGuidée;
      cell.labelCenter.text = [self.arrayNotifies objectAtIndex:indexPath.row];
      cell.imageViewRight.image = flech;
    
    
  //  cell.textLabel.text = [self.arrayNotifies objectAtIndex:indexPath.row];
    
    return cell;
}

/*
- (nullable NSString *)tableView:(nonnull UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Notification";
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

@end
