//
//  DBManager.h
//  RestCoach_0_1_0
//
//  Created by kass on 12/4/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
#import "MyConstants.h"

@interface DBManager : NSObject
{
    sqlite3 *db;
}

-(DBManager *)init;

-(NSString *)filePath;
-(void)openDB;
-(void)closeDB;

-(void)createTable;

-(bool)uploadParametre;

-(bool)updateParametre;


-(void)saveTravail ;

-(void)dropAllTable;

-(void)uploadAllTravail;
@end
