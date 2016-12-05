//
//  Person.m
//  OC03单例
//
//  Created by 夏婷 on 16/11/21.
//  Copyright © 2016年 夏婷. All rights reserved.
//

#import "Person.h"

static Person * p = nil;

@implementation Person

//OC中最简单的单例实现方式，但是并不推荐这样去写，多线程环境下，这样是不能保证线程安全
+(instancetype)sharePerson{
    
    if(!p){
        p = [[self alloc]init];
    }
    return p;
}

+(instancetype)defaultPerson
{
    //使用关键字对对象加锁，保证线程安全，这是苹果推荐的单例实现方法之一
    @synchronized (p) {
        if(p == nil){
            p = [[Person alloc]init];
        }
    }
    return p;
}

+(instancetype)sharePerson1{
    //采用GCD dispatch_once 保证创建对象的代码在整个程序运行期间只被执行一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if(p == nil){
            p = [[Person alloc]init];
        }
    });
    return p;
}



@end
