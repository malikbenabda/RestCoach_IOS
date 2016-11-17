//
//  ArrayTravail.m
//  RestCoach_0_1_0
//
//  Created by kass on 12/5/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import "ArrayTravail.h"
#import "MyConstants.h"
#import "Travail.h"
#import "DBManager.h"

@implementation ArrayTravail

-(ArrayTravail *) initwith
{
    return self;
}

-(void)addTravail
{
    Travail *t ;
    t = [[Travail alloc]initwithidTravail:[travailConstant getIdTravil] withdebutHeure:[travailConstant getDebutHeure]  withdebutMinute:[travailConstant getFinMinte] withfinHeure:[travailConstant getDebutHeure] withfinMinute:[travailConstant getFinMinte] withdate:[travailConstant getDate] withday:[travailConstant getDays] withbruit:[travailConstant getBruit] withmaison:[travailConstant getMaison] withstresse:[travailConstant getStresse] withsommeil:[travailConstant getSommeil] withsport:[travailConstant getSport] withkiff:[travailConstant getKiff]];
    [self.arrayTravail addObject:t];
    
}

-(void)deleteTravailinitwithidTravail:(NSInteger)idTravail
{
    [self.arrayTravail removeObjectAtIndex:idTravail];
}

-(long)number
{
    return [self.arrayTravail count];
}

@end
