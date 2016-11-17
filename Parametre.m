//
//  Parametre.m
//  RestCoach_0_1_0
//
//  Created by kass on 12/4/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import "Parametre.h"

@implementation Parametre


-(Parametre*)initwithidParametre:(NSString *)idParametre withTempsTravailHeureDefault:(NSString *)tempsTravailHeureDefault withTempsTravailMinuteDefault:(NSString *)tempsTravailMinuteDefault withTempsTravailHeure:(NSString *)tempsTravailHeure withTempsTravailMinute:(NSString *)tempsTravailMinute
{
    self.idParametre               = idParametre;
    self.tempsTravailHeureDefault  = tempsTravailHeureDefault;
    self.tempsTravailMinuteDefault = tempsTravailMinuteDefault;
    self.tempsTravailHeure         = tempsTravailHeure;
    self.tempsTravailMinute        = tempsTravailMinute;
    
    return self;
}

-(void)setIdParametre:(NSString *)idParametre
{
    _idParametre = idParametre;
}

-(NSString *)getIdParametre
{
    return _idParametre;
}

-(void)setTempsTravailHeureDefault:(NSString *)tempsTravailHeureDefault
{
    _tempsTravailHeureDefault = tempsTravailHeureDefault;
}

-(NSString *)getTempsTravailHeureDefault
{
    return _tempsTravailHeureDefault;
}

-(void)setTempsTravailMinuteDefault:(NSString *)tempsTravailMinuteDefault
{
    _tempsTravailMinuteDefault = tempsTravailMinuteDefault;
}

-(NSString *)getTempsTravailMinuteDefault
{
    return _tempsTravailMinuteDefault;
}

-(void)setTempsTravailHeure:(NSString *)tempsTravailHeure
{
    _tempsTravailHeure = tempsTravailHeure;
}

-(NSString *)getTempsTravailHeure
{
    return _tempsTravailHeure;
}

-(void)setTempsTravailMinute:(NSString *)tempsTravailMinute
{
    _tempsTravailMinute = tempsTravailMinute;
}

-(NSString *)getTempsTravailMinute
{
    return _tempsTravailMinute;
}

-(void)setIdParametreInt:(int)idParametreInt
{
    NSString *idParametreString = [NSString stringWithFormat:@"%d", idParametreInt];
    _idParametre = idParametreString;
}

-(int)getIdParametreInt
{
    int idParametreInt = [_idParametre intValue];
    return idParametreInt;
}

-(void)setTempsTravailHeureDefaultInt:(int)tempsTravailHeureDefaultInt
{
    NSString *tempsTravailHeureDefaultString = [NSString stringWithFormat:@"%d", tempsTravailHeureDefaultInt];
    _tempsTravailHeureDefault = tempsTravailHeureDefaultString;
}

-(int)getTempsTravailHeureDefaultInt
{
    int tempsTravailHeureDefaultInt = [_tempsTravailHeureDefault intValue];
    return tempsTravailHeureDefaultInt;
}

-(void)setTempsTravailMinuteDefaultInt:(int)tempsTravailMinuteDefaultInt
{
    NSString *tempsTravailMinuteDefaultString = [NSString stringWithFormat:@"%d", tempsTravailMinuteDefaultInt];
    _tempsTravailMinuteDefault = tempsTravailMinuteDefaultString;
}

-(int)getTempsTravailMinuteDefaultInt
{
    int tempsTravailMinuteDefaultInt = [_tempsTravailMinuteDefault intValue];
    return tempsTravailMinuteDefaultInt;
}


-(void)setTempsTravailHeureInt:(int)tempsTravailHeureInt
{
    NSString *tempsTravailHeureString = [NSString stringWithFormat:@"%d", tempsTravailHeureInt];
    _tempsTravailHeure = tempsTravailHeureString;
}

-(int)getTempsTravailHeureInt
{
    int tempsTravailHeureInt = [_tempsTravailHeure intValue];
    return tempsTravailHeureInt;
}

-(void)setTempsTravailMinuteInt:(int)tempsTravailMinuteInt
{
    NSString *tempsTravailMinuteString = [NSString stringWithFormat:@"%d", tempsTravailMinuteInt];
    _tempsTravailMinute = tempsTravailMinuteString;
}

-(int)getTempsTravailMinuteInt
{
    int tempsTravailMinuteInt = [_tempsTravailMinute intValue];
    return tempsTravailMinuteInt;
}

@end
