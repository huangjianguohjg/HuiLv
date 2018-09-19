//
//  LL_SaveTool.m
//  HuiLvRNN
//
//  Created by Developer on 2018/9/19.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "LL_SaveTool.h"

@implementation LL_SaveTool
+ (void)setObject:(id)value forKey:(NSString *)defaultName{
  [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
  [[NSUserDefaults standardUserDefaults] synchronize];
  
}

+ (id)objectForKey:(NSString *)defaultName
{
  return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}

+(void)setValue:(id)value forKey:(NSString *)defaultName
{
  [[NSUserDefaults standardUserDefaults] setValue:value forKey:defaultName];
  [[NSUserDefaults standardUserDefaults] synchronize];
}

+(id)valueForKey:(NSString *)defaultName
{
  return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}

+(void)removeObjectForKey:(NSString *)key
{
  [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
  [[NSUserDefaults standardUserDefaults] synchronize];
}

+(void)clearAll {
  NSUserDefaults *userDefatluts = [NSUserDefaults standardUserDefaults];
  NSDictionary *dictionary = userDefatluts.dictionaryRepresentation;;
  for(NSString* key in [dictionary allKeys]){
    [userDefatluts removeObjectForKey:key];
    [userDefatluts synchronize];
  }
}

@end
