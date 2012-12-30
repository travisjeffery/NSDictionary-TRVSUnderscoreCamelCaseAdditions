//
//  NSDictionary+TRVSUnderscoreCamelCaseAdditions.h
//  TRVSUnderscoreCamelCaseDictionaryUtil
//
//  Created by Travis Jeffery on 2012-12-30.
//  Copyright (c) 2012 Daft Co. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (TRVSUnderscoreCamelCaseAdditions)

- (NSDictionary *)dictionaryWithCamelCaseKeys;
- (NSDictionary *)dictionaryWithUnderscoreKeys;

@end
