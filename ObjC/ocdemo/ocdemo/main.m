//
//  main.m
//  ocdemo
//
//  Created by Simba on 6/16/14.
//  Copyright (c) 2014 Simba. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "SBPerson.h"
#import "XXSBPerson.h"

int main(int argc, char * argv[]) {
    SBPerson* p = [XXSBPerson perseon ];
    [p sayHello];
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
