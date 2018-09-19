//
//  jieyijie.m
//  HuiLvRNN
//
//  Created by Developer on 2018/9/19.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "jieyijie.h"
#import "LL_SaveTool.h"
@implementation jieyijie
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(addEvent:(NSString *)namen)
{
  [LL_SaveTool setObject:namen forKey:@"lalala"];
  
  NSLog(@"---------------------------------------------%@",namen);
}


@end
