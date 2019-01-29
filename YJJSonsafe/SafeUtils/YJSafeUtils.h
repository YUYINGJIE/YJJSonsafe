//
//  YJSafeUtils.h
//  YJJSonsafe
//
//  Created by huahaniOSCode on 2019/1/29.
//  Copyright © 2019年 YJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>



@interface NSArray (YJSafeUtils)

- (id)YJ_safeObjectAtIndex:(NSUInteger)index;
- (id)YJ_safeObjectAtIndex:(NSUInteger)index class:(Class)aClass;
- (BOOL)YJ_boolAtIndex:(NSUInteger)index;
- (CGFloat)YJ_floatAtIndex:(NSUInteger)index;
- (NSInteger)YJ_integerAtIndex:(NSUInteger)index;
- (NSString *)YJ_stringAtIndex:(NSUInteger)index;
- (NSDictionary *)YJ_dictionaryAtIndex:(NSUInteger)index;
- (NSArray *)YJ_arrayAtIndex:(NSUInteger)index;

@end


@interface NSMutableArray (YJSafeUtils)

- (void)YJ_safeAddObject:(id)anObject;
- (void)YJ_safeInsertObject:(id)anObject atIndex:(NSUInteger)index;

@end

@interface NSDictionary (YJSafeUtils)

- (id)YJ_safeObjectForKey:(id)key;
- (id)YJ_safeObjectForKey:(id)key class:(Class)aClass;

- (BOOL)YJ_boolForKey:(id)key;
- (CGFloat)YJ_floatForKey:(id)key;
- (NSInteger)YJ_integerForKey:(id)key;
- (NSString *)YJ_stringForKey:(id)key;
- (NSDictionary *)YJ_dictionaryForKey:(id)key;
- (NSArray *)YJ_arrayForKey:(id)key;

- (id)YJ_safeValueForKey:(NSString *)key;
- (void)YJ_safeSetValue:(id)value forKey:(NSString *)key;

@end

@interface NSMutableDictionary (YJSafeUtils)

- (void)YJ_safeSetObject:(id)anObject forKey:(id)key;

@end
