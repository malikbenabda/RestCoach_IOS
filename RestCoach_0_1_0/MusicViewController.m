//
//  MusicViewController.m
//  RestCoach_0_1_0
//
//  Created by kass on 11/10/15.
//  Copyright (c) 2015 kass. All rights reserved.
//

#import "MusicViewController.h"
#import "MyConstants.h"

@interface MusicViewController ()

@end

@implementation MusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString* session = [[NSString alloc] initWithFormat:@"%ld", [travailArrayConstant count] ];
    self.labelSessionEnregistrees.text = session;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
