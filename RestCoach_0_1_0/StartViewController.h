//
//  StartViewController.h
//  RestCoach_0_1_0
//
//  Created by kass on 11/10/15.
//  Copyright (c) 2015 kass. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"

@interface StartViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView;
@property(strong,nonatomic) DBManager* DB;
@end
