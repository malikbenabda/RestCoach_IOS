//
//  DBManager.m
//  RestCoach_0_1_0
//
//  Created by kass on 12/4/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import "DBManager.h"


@implementation DBManager

-(DBManager *)init
{
    return self;
}

-(NSString *)filePath;
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains
    (NSDocumentDirectory, NSUserDomainMask, YES);
    return [[paths objectAtIndex:0] stringByAppendingPathComponent:@"bp.sql"];
}

-(void)openDB{
    if (sqlite3_open([[self filePath] UTF8String],&db)!= SQLITE_OK)
    {
        sqlite3_close(db);
        NSAssert(0,@"Database filed to open");
    }
    else
    {
        NSLog(@"database opned");
    }
}

-(void)closeDB{
    
}

-(void)createTable
{
    [self openDB];
    char *err;
    NSString *sql = @"CREATE TABLE IF NOT EXISTS travail( idTravail INTEGER PRIMARY KEY AUTOINCREMENT, debutHeure INTEGER , debutMinute INTEGER, finHeure INTEGER ,finMinute INTEGER ,date TEXT , days INTEGER);" ;
                     
    if(sqlite3_exec(db, [sql UTF8String], NULL, NULL, &err) != SQLITE_OK)
    {
        sqlite3_close(db);
        NSLog(@"Could not create table travail");
    }
    else
    {
        NSLog(@"table travail created");
    }
    
    
    sql = @"CREATE TABLE IF NOT EXISTS parametre(idParametre INTEGER PRIMARY KEY , tempsTravailHeureDefault INTEGER , tempsTravailMinuteDefault INTEGER, tempsTravailHeure INTEGER ,tempsTravailMinute INTEGER );";
    if(sqlite3_exec(db, [sql UTF8String], NULL, NULL, &err) != SQLITE_OK)
    {
        sqlite3_close(db);
        NSLog(@"Could not create table parametre");
    }
    else
    {
        NSLog(@"table parametre created");
    }
    
    
    sql = [NSString stringWithFormat:@"INSERT INTO parametre ('idParametre','tempsTravailHeureDefault','tempsTravailMinuteDefault' , 'tempsTravailHeure','tempsTravailMinute') VALUES (1,0,0,0,0) "];
    
    if(sqlite3_exec(db, [sql UTF8String], NULL, NULL, &err) != SQLITE_OK)
    {
        sqlite3_close(db);
        NSLog(@"Could not insert start table parametre");
    }
    else
    {
        NSLog(@"insert start table parametre created");
    }
    
}

-(bool)uploadParametre
{
    [self openDB];
    NSString* selectQuery = @"SELECT tempsTravailHeureDefault tempsTravailMinuteDefault tempsTravailHeure TempsTravailMinute FROM parametre where idParametre=1";
    sqlite3_stmt* sqlStatement;

    if(sqlite3_prepare_v2(db, [selectQuery UTF8String], -1, &sqlStatement, NULL) == SQLITE_OK)
    {
        while(sqlite3_step(sqlStatement)==SQLITE_ROW)
        {
            NSLog(@"hedhi temchi labes a3liha");
           NSString *tempsTravailHeureDefault   = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement,0)];
           NSString *tempsTravailMinuteDefault  = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement,1)];
           NSString *tempsTravailHeure          = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement,2)];
           NSString *tempsTravailMinute         = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement,3)];
           [parametreConstant initwithidParametre:@"1" withTempsTravailHeureDefault: tempsTravailHeureDefault withTempsTravailMinuteDefault: tempsTravailMinuteDefault withTempsTravailHeure: tempsTravailHeure withTempsTravailMinute: tempsTravailMinute];
            
        }
    return true;
    }
    return false;
}

-(bool)updateParametre
{
    [self openDB];
    char *err;
    NSString *sql = [NSString stringWithFormat:@"update parametre set tempsTravailHeureDefault='%d' , tempsTravailMinuteDefault='%d' , tempsTravailHeure='%d' , tempsTravailMinute = '%d' " , [parametreConstant getTempsTravailHeureDefaultInt] , [parametreConstant getTempsTravailMinuteDefaultInt] , [parametreConstant getTempsTravailHeureInt] , [parametreConstant getTempsTravailMinuteInt] ];
    
    if(sqlite3_exec(db, [sql UTF8String], NULL, NULL, &err) != SQLITE_OK)
    {
        sqlite3_close(db);
        NSLog(@"Could not insert to update parametre");
        return false;
    }
    else
    {
        NSLog(@"update to table parametre ");
        return true;
    }
}


-(void)saveTravail
{
    NSLog(@"ti yod5el men aslou howa");
    [self openDB];
    char *err;
    NSString *sql = [NSString stringWithFormat:@"INSERT INTO travail ('debutHeure','debutMinute' , 'finHeure' , 'finMinute' , 'date' , 'days' ) VALUES ('%d','%d','%d','%d','%@','%d') " ,[travailConstant getDebutHeureInt] , [travailConstant getDebutMinuteInt] , [travailConstant getFinHeureInt] , [travailConstant getFinMinuteInt], [travailConstant getDate] , [travailConstant getDays]];
    
    if(sqlite3_exec(db, [sql UTF8String], NULL, NULL, &err) != SQLITE_OK)
    {
        sqlite3_close(db);
        NSLog(@"Could not insert to table travail");
    }
    else
    {
        [travailConstant reset];
        NSLog(@"insert to table travail ");
    }
    
    
}

-(void)dropAllTable
{
    [self openDB];
     char *err;
     NSString *sql = [NSString stringWithFormat:@"DROP TABLE travail" ];
     if(sqlite3_exec(db, [sql UTF8String], NULL, NULL, &err) != SQLITE_OK)
     {
         sqlite3_close(db);
         NSAssert(0,@"Could not Drop table travail");
     }
     else
     {
         NSLog(@"table travail droped");
     }
    
     sql = [NSString stringWithFormat:@"DROP TABLE parametre" ];
     if(sqlite3_exec(db, [sql UTF8String], NULL, NULL, &err) != SQLITE_OK)
     {
         sqlite3_close(db);
         NSLog(@"Could not Drop table parametre");
     }
     else
     {
         NSLog(@"table parametre droped");
     }
}

-(void)uploadAllTravail
{
    [self openDB];
    
   // NSString *sql = @"CREATE TABLE IF NOT EXISTS travail( idTravail INTEGER PRIMARY KEY AUTOINCREMENT, debutHeure INTEGER , debutMinute INTEGER, finHeure INTEGER ,finMinute INTEGER ,date TEXT , days INTEGER);" ;
     NSString* selectQuery = @"SELECT * FROM travail ";
    sqlite3_stmt* sqlStatement;
    if(sqlite3_prepare_v2(db, [selectQuery UTF8String], -1, &sqlStatement, NULL) == SQLITE_OK)
    {
        while(sqlite3_step(sqlStatement)==SQLITE_ROW)
        {
            NSLog(@"sanfara");
           NSString *idTravail    = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement,0)];
           NSString *debutHeure   = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement,1)];
           NSString *debutMinute  = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement,2)];
           NSString *finHeure     = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement,3)];
           NSString *finMinute    = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement,4)];
           NSString *date         = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement,5)];
            [travailConstant setIdTravail:idTravail ];
            [travailConstant setDebutHeure:debutHeure];
            [travailConstant setDebutMinute:debutMinute];
            [travailConstant setFinHeure:finHeure];
            [travailConstant setFinMinute:finMinute];
            [travailConstant setDate:date];
           NSLog(@"idTravail : %@",idTravail);
           NSLog(@"debutHeure : %@",debutHeure);
           NSLog(@"debutMinute:  %@",debutMinute);
           NSLog(@"finHeure :   %@",finHeure);
            
            Travail *t ;
            t = [[Travail alloc]initwithidTravail:[travailConstant getIdTravil] withdebutHeure:[travailConstant getDebutHeure]  withdebutMinute:[travailConstant getFinMinte] withfinHeure:[travailConstant getDebutHeure] withfinMinute:[travailConstant getFinMinte] withdate:[travailConstant getDate] withday:1 withbruit:true withmaison:true withstresse:true withsommeil:true withsport:true withkiff:true];
                [travailArrayConstant addObject:t];
            
            
           [travailConstant reset];
        }
    }
}

@end
