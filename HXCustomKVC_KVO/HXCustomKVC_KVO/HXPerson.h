//
//  HXPerson.h
//  HXCustomKVC_KVO
//
//  Created by han xiao on 2020/11/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HXPerson : NSObject{
    @public
    //    NSString *_isName;
    //    NSString *name;
    //    NSString *isName;
    //    NSString *_name;
}
@property(nonatomic,copy) NSString* nickName;
@property(nonatomic,copy) NSString* name;

@end

NS_ASSUME_NONNULL_END
