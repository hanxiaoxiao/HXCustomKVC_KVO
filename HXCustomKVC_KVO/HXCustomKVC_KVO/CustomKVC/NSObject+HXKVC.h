//
//  NSObject+HXKVC.h
//  HXCustomKVC_KVO
//
//  Created by han xiao on 2020/11/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (HXKVC)

//设值
-(void)hx_setValue:(nullable id)value forKey:(NSString*)key;

//取值
-(nullable id)hx_valueForKey:(NSString*)key;

@end

NS_ASSUME_NONNULL_END
