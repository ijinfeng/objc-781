//
//  Person.m
//  KCObjcBuild
//
//  Created by jinfeng on 2021/5/11.
//

#import "Person.h"

@interface Person ()
@property (nonatomic, copy) NSString *name;
@end

@implementation Person

+ (void)load {
    NSLog(@"Person load");
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _name = @"xxx";
    }
    return self;
}

- (void)sayHi {
    if (self.name) {
        NSLog(@"Hi! xxx");
    } else {
        NSLog(@"Hi!");
    }
}

@end
