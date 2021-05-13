//
//  Person.h
//  KCObjcBuild
//
//  Created by jinfeng on 2021/5/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, strong) NSString *ll;

@property (nonatomic, assign) int t;

@property (nonatomic, assign) CGFloat height;

- (void)sayHi;

@end

NS_ASSUME_NONNULL_END
