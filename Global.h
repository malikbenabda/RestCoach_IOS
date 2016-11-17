//
//  Global.h
//  RestCoach_0_1_0
//
//  Created by kass on 12/5/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Global : NSObject
{
    int _difficulty; // [Edit] - '0' typo removed - Thanks Greg
    BOOL _useAccelerometer;
};

@property(nonatomic) int  _diffculty;
@property(nonatomic) BOOL _useAccelerometer;

@end

