//
//  Parametre.h
//  RestCoach_0_1_0
//
//  Created by kass on 12/4/15.
//  Copyright © 2015 kass. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Parametre : NSObject


@property (nonatomic) NSString* idParametre;
@property (nonatomic) NSString* tempsTravailHeureDefault;
@property (nonatomic) NSString* tempsTravailMinuteDefault;
@property (nonatomic) NSString* tempsTravailHeure;
@property (nonatomic) NSString* tempsTravailMinute;

-(Parametre *) initwithidParametre:(NSString*) idParametre withTempsTravailHeureDefault:(NSString*) tempsTravailHeureDefault withTempsTravailMinuteDefault:(NSString*) tempsTravailMinuteDefault withTempsTravailHeure:(NSString*) tempsTravailHeure withTempsTravailMinute:(NSString*) tempsTravailMinute ;

- (void) setIdParametre:(NSString*)idParametre;
- (NSString *) getIdParametre;

- (void) setTempsTravailHeureDefault:(NSString *)tempsTravailHeureDefault;
- (NSString *) getTempsTravailHeureDefault;

- (void) setTempsTravailMinuteDefault:(NSString*)tempsTravailMinuteDefault;
- (NSString *) getTempsTravailMinuteDefault;

- (void) setTempsTravailHeure:(NSString*)tempsTravailHeure;
- (NSString *) getTempsTravailHeure;

- (void) setTempsTravailMinute:(NSString*)tempsTravailMinute;
- (NSString *) getTempsTravailMinute;


- (void) setIdParametreInt:(int)idParametreInt;
- (int) getIdParametreInt;

- (void) setTempsTravailHeureDefaultInt:(int)tempsTravailHeureDefaultInt;
- (int) getTempsTravailHeureDefaultInt;

- (void) setTempsTravailMinuteDefaultInt:(int)tempsTravailMinuteDefaultInt;
- (int) getTempsTravailMinuteDefaultInt;

- (void) setTempsTravailHeureInt:(int)tempsTravailHeureInt;
- (int) getTempsTravailHeureInt;

- (void) setTempsTravailMinuteInt:(int)tempsTravailMinuteInt;
- (int) getTempsTravailMinuteInt;

@end
