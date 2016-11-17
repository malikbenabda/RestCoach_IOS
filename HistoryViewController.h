//
//  HistoryViewController.h
//  RestCoach_0_1_0
//
//  Created by kass on 11/10/15.
//  Copyright (c) 2015 kass. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HistoryViewController : UIViewController <UITableViewDataSource , UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *historyTableView;
- (IBAction)buttonRafrechClicked:(id)sender;

@end
