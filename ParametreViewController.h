//
//  ParametreViewController.h
//  RestCoach_0_1_0
//
//  Created by kass on 11/11/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParametreViewController : UIViewController <UITableViewDataSource , UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableViewParametre;

@property (copy, nonatomic) NSMutableArray *arrayNotifies;
@end
