//
//  Travail.m
//  RestCoach_0_1_0
//
//  Created by kass on 12/4/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import "Travail.h"

@implementation Travail
-(Travail*)initwithidTravail:(NSString *)idTravail withdebutHeure:(NSString *)debutHeure withdebutMinute:(NSString *)debutMinute withfinHeure:(NSString *)finHeure withfinMinute:(NSString *)finMinute withdate:(NSString *)date withday:(int)days withbruit:(bool)bruit withmaison:(bool)maison withstresse:(bool)stresse withsommeil:(bool)sommeil withsport:(bool)sprot withkiff:(bool)kiff
{
    self.idTravail   = idTravail;
    self.debutHeure  = debutHeure;
    self.debutMinute = debutMinute;
    self.finHeure    = finHeure;
    self.finMinute   = finMinute;
    self.date        = date;
    self.days        = days;
    self.bruit       = bruit;
    self.maison      = maison;
    self.stresse     = stresse;
    self.sommeil     = sommeil;
    self.sport       = sprot;
    self.kiff        = kiff;
    return self;
}



-(void)setIdTravail:(NSString *)idTravail
{
    _idTravail = idTravail;
}

-(NSString *)getIdTravil
{
    return _idTravail;
}

-(void)setDebutHeure:(NSString *)debutHeure
{
    _debutHeure = debutHeure;
}

-(NSString *)getDebutHeure
{
    return _debutHeure;
}

-(void)setDebutMinute:(NSString *)debutMinute
{
    _debutMinute = debutMinute;
}

-(NSString *)getDebutMinute
{
    return _debutMinute;
}

-(void)setFinHeure:(NSString *)finHeure
{
    _finHeure = finHeure;
}

-(NSString *)getFinHeure
{
    return _finHeure;
}

-(void)setFinMinute:(NSString *)finMinute
{
    _finMinute = finMinute;
}

-(NSString *)getFinMinte
{
    return _finMinute;
}


-(void)setDate:(NSString *)Date
{
    _date = Date;
}

-(NSString *)getDate
{
    return _date;
}


-(void)setIdTravailInt:(int)idTravailInt
{
    NSString *idTravailString = [NSString stringWithFormat:@"%d", idTravailInt];
    _idTravail = idTravailString;
}

-(int)getIdTravilInt
{
    int idTravailInt = [_idTravail intValue];
    return idTravailInt;
}

-(void)setDebutHeureInt:(int)debutHeureInt
{
    NSString *debutHeureString = [NSString stringWithFormat:@"%d", debutHeureInt];
    _debutHeure = debutHeureString;
}

-(int)getDebutHeureInt
{
    int debutHeureInt = [_debutHeure intValue];
    return debutHeureInt;
}

-(void)setFinHeureInt:(int)finHeureInt
{
    NSString *finHeureString = [NSString stringWithFormat:@"%d", finHeureInt];
    _finHeure= finHeureString;
}

-(int)getFinHeureInt
{
    int finHeureInt = [_finHeure intValue];
    return finHeureInt;
}

-(void)setDebutMinuteInt:(int)debutMinuteInt
{
    NSString *debutMinuteString = [NSString stringWithFormat:@"%d", debutMinuteInt];
    _debutMinute = debutMinuteString;
}

-(int)getDebutMinuteInt
{
    int finMinteInt = [_finMinute intValue];
    return finMinteInt;
}


-(void)setFinMinuteInt:(int)finMinuteInt
{
    NSString *finMinuteString = [NSString stringWithFormat:@"%d", finMinuteInt];
    _finMinute = finMinuteString;
}

-(int)getFinMinuteInt
{
    int finMinuteInt = [_finMinute intValue];
    return finMinuteInt;
}

-(void)setDateInt:(int)dateInt
{
    NSString *dateString = [NSString stringWithFormat:@"%d", dateInt];
    _date = dateString;
}

-(int)getDateInt
{
    int dateInt = [_date intValue];
    return dateInt;
}


- (void)setBruit:(bool)bruit
{
    _bruit = bruit;
}

- (bool)getBruit
{
    return self.bruit;
}

- (void)setMaison:(bool)maison
{
    _maison = maison;
}

- (bool)getMaison
{
    return self.maison;
}

- (void)setStresse:(bool)stresse
{
    _stresse = stresse;
}

- (bool)getStresse
{
    return self.stresse;
}

- (void)setSommeil:(bool)sommeil
{
    _sommeil = sommeil;
}

- (bool)getSommeil
{
    return self.sommeil;
}

-(void)setSport:(bool)sport
{
    _sport = sport;
}

- (bool)getSport
{
    return self.sport;
}

- (void)setKiff:(bool)kiff
{
    _kiff = kiff;
}

- (bool)getKiff
{
    return self.kiff;
}

- (void)setDays:(int)days
{
    _days = days;
}

- (int)getDays
{
    return self.days;
}

// bruit; maison; stresse; sommeil; sport; kiff;



-(void)reset
{
    self.idTravail   = @"1" ;
    self.debutHeure  = @"0" ;
    self.finHeure    = @"0" ;
    self.debutMinute = @"0" ;
    self.finMinute   = @"0" ;
    self.date        = @" " ;
    self.bruit       = false;
    self.maison      = false;
    self.stresse     = false;
    self.sommeil     = false;
    self.sport       = false;
    self.kiff        = false;
    self.days        = 0 ;
}
@end
