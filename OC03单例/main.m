//
//  main.m
//  OC03单例
//
//  Created by 夏婷 on 16/11/21.
//  Copyright © 2016年 夏婷. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p = [Person sharePerson];
        Person *p1 = [Person defaultPerson];
        Person *p2 = [Person sharePerson1];
        NSLog(@"p = %p,p1 = %p, p2 = %p",p,p1,p2);
        
       
    }
    return 0;
}
