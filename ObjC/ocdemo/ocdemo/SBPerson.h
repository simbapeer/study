//
//  SBPerson.h
//  ccoa
//
//  Created by Simba on 6/15/14.
//  Copyright (c) 2014 ShineMo. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface SBPerson : NSObject
{
    NSString* iVariable;
}
@property NSString* firstName;
@property NSString* lastName;
@property NSString* myControlName;
@property (nonatomic) NSString* synthesizeName;
@property (readonly) NSString* fullName;

+(SBPerson*)perseon;
-(void)sayHello;

@end
