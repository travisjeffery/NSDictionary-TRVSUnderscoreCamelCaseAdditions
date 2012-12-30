//
//  main.m
//  TRVSUnderscoreCamelCaseDictionaryUtil
//
//  Created by Travis Jeffery on 2012-12-30.
//  Copyright (c) 2012 Daft Co. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+TRVSUnderscoreCamelCaseAdditions.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSDictionary *underscore = @{@"user_name": @"travisjeffery"};
        NSDictionary *camelCase = @{@"userName": @"travisjeffery"};
        
        NSLog(@"camelCase: %@", [underscore dictionaryWithCamelCaseKeys]);
        NSLog(@"underscore: %@", [camelCase dictionaryWithUnderscoreKeys]);        
    }
    return 0;
}

