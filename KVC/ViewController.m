//
//  ViewController.m
//  KVC
//
//  Created by JackMa on 2019/11/11.
//  Copyright © 2019 fire. All rights reserved.
//

#import "ViewController.h"
#import "SPPerson.h"
#import "Book.h"
#import "Address.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    SPPerson *p = [[SPPerson alloc] init];
    [p setValue:@"李泽尧" forKey:@"name"];
//    [p setValue:@"邓丽君" forKey:@"nickName"];
    
    NSLog(@"%@",p->isName);
    NSLog(@"%@-%@",p->name,p->isName);
    NSLog(@"%@-%@-%@",p->name,p->isName,p->_isName);
    NSLog(@"%@-%@-%@-%@",p->name,p->isName,p->_name,p->_isName);
    
    NSLog(@"%@", [p valueForKey:@"name"]);
    
    NSString *value = nil;
    NSError *error;
    BOOL validate =  [p validateValue:&value forKey:@"password" error:&error];
    if (validate) {
        [p setValue:value forKey:@"password"];
    }
    
    [self bookTest];
    
    [self AddressTest];
}

- (void)bookTest {
    Book *book1 = [Book new];
    book1.name = @"The Great Gastby";
    book1.price = 30;
    Book *book2 = [Book new];
    book2.name = @"Time History";
    book2.price = 20;
    Book *book3 = [Book new];
    book3.name = @"Wrong Hole";
    book3.price = 30;
   
    Book *book4 = [Book new];
    book4.name = @"Wrong Hole";
    book4.price = 40;
   
    NSArray* arrBooks = @[book1,book2,book3,book4];
    NSNumber* sum = [arrBooks valueForKeyPath:@"@sum.price"];
    NSLog(@"sum:%f",sum.floatValue);
    NSNumber* avg = [arrBooks valueForKeyPath:@"@avg.price"];
    NSLog(@"avg:%f",avg.floatValue);
    NSNumber* count = [arrBooks valueForKeyPath:@"@count"];
    NSLog(@"count:%f",count.floatValue);
    NSNumber* min = [arrBooks valueForKeyPath:@"@min.price"];
    NSLog(@"min:%f",min.floatValue);
    NSNumber* max = [arrBooks valueForKeyPath:@"@max.price"];
    NSLog(@"max:%f",max.floatValue);
    
    NSLog(@"distinctUnionOfObjects");
    NSArray* arrDistinct = [arrBooks valueForKeyPath:@"@distinctUnionOfObjects.price"];
    for (NSNumber *price in arrDistinct) {
        NSLog(@"%f",price.floatValue);
    }

    NSLog(@"unionOfObjects");
    NSArray* arrUnion = [arrBooks valueForKeyPath:@"@unionOfObjects.price"];
    for (NSNumber *price in arrUnion) {
        NSLog(@"%f",price.floatValue);
    }
}

- (void)AddressTest {
    
    //模型转字典
    Address* add = [Address new];
    add.country = @"China";
    add.province = @"Guang Dong";
    add.city = @"Shen Zhen";
    add.district = @"Nan Shan";
    NSArray* arr = @[@"country",@"province",@"city",@"district"];
    //把对应key所有的属性全部取出来
    NSDictionary* dict = [add dictionaryWithValuesForKeys:arr];
    NSLog(@"%@",dict);
    
    //字典转模型
    NSDictionary* modifyDict = @{@"country":@"USA",@"province":@"california",@"city":@"Los angle"};
    //用key Value来修改Model的属性
    [add setValuesForKeysWithDictionary:modifyDict];
    NSLog(@"country:%@  province:%@ city:%@",add.country,add.province,add.city);
}

@end
