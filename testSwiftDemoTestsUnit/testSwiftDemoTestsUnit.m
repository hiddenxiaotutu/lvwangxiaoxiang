//
//  testSwiftDemoTestsUnit.m
//  testSwiftDemoTestsUnit
//
//  Created by csk on 2020/10/12.
//  Copyright © 2020 csk. All rights reserved.
//

#import <XCTest/XCTest.h>

@class person;



@interface testSwiftDemoTestsUnit : XCTestCase

@end

@implementation testSwiftDemoTestsUnit

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        
        NSTimeInterval start = CACurrentMediaTime();
        for (int i = 0; i < 1000 ; i++) {
            NSLog(@"i = %d",i);
        }
        NSLog(@"%f",CACurrentMediaTime() - start);
        
    }];
}

- (void)testNewPerson {
    [self checkPersionDict:@{@"name":@"test",@"age":@20}];
    [self checkPersionDict:@{@"name":@"Tom"}];
    [self checkPersionDict:@{}];
//    [self checkPersionDict:@{@"name":@"张三",@"age":@20,@"title":@"box"}];
}

- (void)checkPersionDict:(NSDictionary *)dict {
    person *per ;//= [[person alloc] init];
    NSString *name = dict[@"name"];
    NSUInteger age = [dict[@"age"] unsignedIntegerValue];
    
    // 1.检查名称
//    XCTAssert([name isEqualToString:per.name] || per.name == nil, @"不一致");
//    XCTAssert(age == per.age, @"不一致");
}

@end
