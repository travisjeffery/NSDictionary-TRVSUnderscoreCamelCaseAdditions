Category on NSDictionary providing some methods for converting the dictionary's keys to/from under_score/camelCase.

``` objective-c
@interface NSDictionary (TRVSUnderscoreCamelCaseAdditions)

- (NSDictionary *)dictionaryWithCamelCaseKeys;
- (NSDictionary *)dictionaryWithUnderscoreKeys;
@end
```

``` objective-c
# E.g.

[@{ @"user_name": @"travisjeffery", @"user_id" : @"Numero Uno" } dictionaryWithCamelCaseKeys];
# =>
@{ @"userName" : @"travisjeffery", @"userId" : @"Numero Uno"};

[@{ @"userName" : @"travisjeffery", @"userId" : @"Numero Uno"} dictionaryWithUnderscoreKeys];
# =>
@{ @"user_name": @"travisjeffery", @"user_id" : @"Numero Uno" };
### Install

Available as the Cocoapod `NSDictionary+TRVSUnderscoreCamelCaseAdditions`, or just use the `NSDictionary+TRVSUnderscoreCamelCaseAdditions.{m,h}` files.

### Self-Promotion

If you're feeling especially charitable or interested in Objective-C, JavaScript, Ruby, and Math, follow [travisjeffery](http://travisjeffery.com) on [Twitter](http://twitter.com/travisjeffery) and [GitHub](http://github.com/travisjeffery).

### License (MIT)

Copyright © Travis Jeffery. See LICENSE for details.
