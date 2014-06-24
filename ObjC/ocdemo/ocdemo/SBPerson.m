//
//  SBPerson.m
//  ccoa
//
//  Created by Simba on 6/15/14.
//  Copyright (c) 2014 ShineMo. All rights reserved.
//

#import "SBPerson.h"


@implementation SBPerson

@synthesize firstName; //NOT recommended
@synthesize myControlName = _myControlName; // 实现了setter 和 getter所以必须 @synthesize

-(void)sayHello{
    NSLog(@"hello world!");
}

-(id)init
{
    self = [super init];
    if (self) {
        //    _firstName = @"Simba"; //Error
        firstName = @"Simba";
        _lastName = @"Yu";  //recommended
        iVariable = @"iVariable";
    }
    return self;
}

-(NSString*)synthesizeName{
    return _synthesizeName;
}

-(void)setMyControlName:(NSString *)myControlName   {
    _lastName = myControlName;
    _myControlName = myControlName;
}

-(NSString*)myControlName{
    return _lastName;
}

-(NSString*)fullName{
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

+(SBPerson*)perseon
{
    return [[self alloc]init];
}

+(id)alloc{
    NSLog(@"SBPerson alloc");
    return [super alloc];
}

@end
