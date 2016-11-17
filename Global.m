//
//  Global.m
//  RestCoach_0_1_0
//
//  Created by kass on 12/5/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import "Global.h"

@implementation Global

Global *_instance = nil;



+(Global *)instance
{
    // skip everything
    if(_instance) return _instance;
    
    // Singleton
    @synchronized([Global class])
    {
        if(!_instance)
        {
            _instance = [[self alloc] init];
        }
        
        return _instance;
    }
    
    return nil;
}

-(id) init
{
    if( (self=[super init] ))
    {
        Global *global = [Global instance];
        global._diffculty = 1;
        global._useAccelerometer = YES;
    }
    if([Global instance]._useAccelerometer == YES)
    {
        
    }
    return self;
}

@end
// @synthesize _difficulty, _useAccelerometer;

