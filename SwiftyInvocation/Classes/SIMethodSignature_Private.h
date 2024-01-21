//
//  SIMethodSignature_Private.h
//  Pods
//
//  Created by Piotr Tobolski on 12.03.2017.
//
//

#import <Foundation/Foundation.h>

@class SIMethodSignature;

NS_ASSUME_NONNULL_BEGIN

@interface SIMethodSignature ()

@property (readonly, nonatomic) NSMethodSignature *underlyingMethodSignature;
- (instancetype)initWithMethodSignature:(NSMethodSignature *)methodSignature;

@end

NS_ASSUME_NONNULL_END
