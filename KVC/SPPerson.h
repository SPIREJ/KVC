//
//  SPPerson.h
//  KVC
//
//  Created by JackMa on 2019/11/11.
//  Copyright © 2019 fire. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SPPerson : NSObject
{
    @public
    NSString *_name;
    NSString *_isName;
    NSString *name;
    NSString *isName;
}

//@property (nonatomic, copy) NSString *name;

@end

NS_ASSUME_NONNULL_END
