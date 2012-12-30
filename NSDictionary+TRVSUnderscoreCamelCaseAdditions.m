//
//  NSDictionary+TRVSUnderscoreCamelCaseAdditions.m
//  TRVSUnderscoreCamelCaseDictionaryUtil
//
//  Created by Travis Jeffery on 2012-12-30.
//  Copyright (c) 2012 Daft Co. All rights reserved.
//

#import "NSDictionary+TRVSUnderscoreCamelCaseAdditions.h"

@implementation NSDictionary (TRVSUnderscoreCamelCaseAdditions)

#pragma mark - Public

- (NSDictionary *)dictionaryWithCamelCaseKeys {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithCapacity:[self count]];
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        [dictionary setObject:obj forKey:[self ___camelCaseString:key]];
    }];
    
    return dictionary;
}

- (NSDictionary *)dictionaryWithUnderscoreKeys {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithCapacity:[self count]];
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        [dictionary setObject:obj forKey:[self ___underscoreString:key]];
    }];

    return dictionary;
}

#pragma mark - Private Helpers

- (NSString *)___underscoreString:(NSString *)camelCaseString {
    NSScanner *scanner = [[NSScanner alloc] initWithString:camelCaseString];
    scanner.caseSensitive = YES;
    NSMutableString *string = [NSMutableString string];
    NSString *buffer = nil;
    
    while (![scanner isAtEnd]){
        if ([scanner scanCharactersFromSet:[NSCharacterSet lowercaseLetterCharacterSet] intoString:&buffer]){
            [string appendString:buffer];

            if ([scanner scanCharactersFromSet:[NSCharacterSet uppercaseLetterCharacterSet] intoString:&buffer]){
                [string appendFormat:@"_%@", [buffer lowercaseString]];
            }
        }
    }
    
    return string;
}

- (NSString *)___camelCaseString:(NSString *)underscoreString {
    NSArray *components = [underscoreString componentsSeparatedByString:@"_"];
    NSMutableString *string = [NSMutableString string];    

    [string appendString:[components objectAtIndex:0]];
    
    for (NSString *component in [components objectsAtIndexes:[[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(1, [components count]-1)]]){
        NSString *head = [component substringToIndex:1];
        NSString *tail = [component substringFromIndex:1];
        [string appendFormat:@"%@%@", [head uppercaseString], tail];
    }
    
    return string;        
}

@end
