//
//  ArrayTravail.h
//  RestCoach_0_1_0
//
//  Created by kass on 12/5/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArrayTravail : NSObject

    @property (nonatomic) NSMutableArray *  arrayTravail;
    -(ArrayTravail *) initwith;
    -(void) addTravail;
    -(void)deleteTravailinitwithidTravail:(NSInteger)idTravail;
    -(long) number;
@end
