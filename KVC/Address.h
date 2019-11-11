//
//  Address.h
//  KVC
//
//  Created by JackMa on 2019/11/11.
//  Copyright © 2019 fire. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Address : NSObject

@property (nonatomic, copy)NSString* country;
@property (nonatomic, copy)NSString* province;
@property (nonatomic, copy)NSString* city;
@property (nonatomic, copy)NSString* district;

@end

NS_ASSUME_NONNULL_END
