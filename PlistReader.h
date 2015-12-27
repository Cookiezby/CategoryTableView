//
//  PlistReader.h
//  naluhodoPT
//
//  Created by cookie on 12/27/15.
//  Copyright © 2015 cookie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlistReader : NSObject

+ (NSArray*)getArrayFromPlist:(NSString*)fileName;

@end
