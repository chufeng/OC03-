//
//  Person.h
//  OC03单例
//
//  Created by 夏婷 on 16/11/21.
//  Copyright © 2016年 夏婷. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;
//单例:指的是某个类的对象，在整个程序运行期间，只被创建一次，并且在整个程序运行期间都不会被销毁，使用单例的优点：不用多次创建对象、整个工程都可以访问这个对象的数据，实现数据共享
//缺点：单例对象在程序运行期间都不会被销毁，很多时候都占用内存，内存泄露问题（在工程中谨慎使用单例模式）

+(instancetype)sharePerson;

+(instancetype)defaultPerson;

+(instancetype)sharePerson1;


@end
