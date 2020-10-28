//
//  ViewController2.h
//  testSwiftDemo
//
//  Created by csk on 2020/10/10.
//  Copyright © 2020 csk. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Delegate <NSObject>

@optional
-(void)click;

@required
-(void)mustPrint;

@end

@interface ViewController2 : UIViewController

@property(nonatomic,weak) id<Delegate>delegate;
@property(nonatomic,weak) void(^blockT)(NSString *);
@end

NS_ASSUME_NONNULL_END
