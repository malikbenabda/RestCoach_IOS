//
//  Travail.h
//  RestCoach_0_1_0
//
//  Created by kass on 12/4/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Travail : NSObject

@property (nonatomic) NSString* idTravail;
@property (nonatomic) NSString* debutHeure;
@property (nonatomic) NSString* debutMinute;
@property (nonatomic) NSString* finHeure;
@property (nonatomic) NSString* finMinute;
@property (nonatomic) NSString* date;
@property (nonatomic) int       days;
@property (nonatomic) bool      bruit;
@property (nonatomic) bool      maison;
@property (nonatomic) bool      stresse;
@property (nonatomic) bool      sommeil;
@property (nonatomic) bool      sport;
@property (nonatomic) bool      kiff;

-(Travail *) initwithidTravail:(NSString*) idTravail withdebutHeure:(NSString*) debutHeure withdebutMinute:(NSString*) debutMinute withfinHeure:(NSString*) finHeure withfinMinute:(NSString*) finMinute withdate:(NSString*) date withday:(int) days withbruit:(bool) bruit withmaison:(bool) maison withstresse:(bool) stresse withsommeil:(bool) sommeil withsport:(bool) sprot withkiff:(bool) kiff;

- (void) setIdTravail:(NSString*)idTravail;
- (NSString *) getIdTravil;

- (void) setDebutHeure:(NSString *)debutHeure;
- (NSString *) getDebutHeure;


- (void) setDebutMinute:(NSString *)debutMinute;
- (NSString *) getDebutMinute;


- (void) setFinHeure:(NSString *)finHeure;
- (NSString *) getFinHeure;


- (void) setFinMinute:(NSString*)finMinute;
- (NSString *) getFinMinte;


- (void) setDate:(NSString*)Date;
- (NSString *) getDate;

- (void) setIdTravailInt:(int)idTravailInt;
- (int) getIdTravilInt;


- (void) setDebutHeureInt:(int)debutHeureInt;
- (int) getDebutHeureInt;


- (void) setDebutMinuteInt:(int)debutMinuteInt;
- (int) getDebutMinuteInt;


- (void) setFinHeureInt:(int)finHeureInt;
- (int) getFinHeureInt;

- (void) setFinMinuteInt:(int)finMinuteInt;
- (int) getFinMinuteInt;


- (void) setDateInt:(int)DateInt;
- (int)  getDateInt;

- (void) setDays:(int)days;
- (int) getDays;

- (void) setBruit:(bool)bruit;
- (bool) getBruit;

- (void) setMaison:(bool)maison;
- (bool) getMaison;

- (void) setStresse:(bool)stresse;
- (bool) getStresse;

- (void) setSommeil:(bool)sommeil;
- (bool) getSommeil;

- (void) setSport:(bool)sport;
- (bool) getSport;

- (void) setKiff:(bool)kiff;
- (bool) getKiff;




- (void) reset;

@end
