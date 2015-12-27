//
//  PlistReader.m
//  naluhodoPT
//
//  Created by cookie on 12/27/15.
//  Copyright © 2015 cookie. All rights reserved.
//

#import "PlistReader.h"

@implementation PlistReader

+ (NSArray*)getArrayFromPlist:(NSString *)fileName{
    NSString* plistPath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"plist"];
    return [NSArray arrayWithContentsOfFile:plistPath];
}

@end
