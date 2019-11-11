//
//  Book.h
//  KVC
//
//  Created by JackMa on 2019/11/11.
//  Copyright © 2019 fire. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) CGFloat price;

@end

NS_ASSUME_NONNULL_END
