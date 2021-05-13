//
//  main.m
//  KCObjcBuild
//
//  Created by cooci on 2021/1/5.


// KC 重磅提示 调试工程很重要 源码直观就是爽
// ⚠️编译调试不能过: 请你检查以下几小点⚠️
// ①: enable hardened runtime -> NO
// ②: build phase -> denpendenice -> objc
// 爽了之后,还来一个 👍

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Person *objc2 = [Person new];
        [objc2 sayHi];
        
        NSLog(@"objc对象类型占用的内存大小：%lu",sizeof(objc2));
        NSLog(@"objc对象实际占用的内存大小：%lu",class_getInstanceSize([objc2 class]));
        NSLog(@"objc对象实际分配的内存大小：%lu",malloc_size((__bridge const void*)(objc2)));
        
        
    }
    return 0;
}
