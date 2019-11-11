//
//  ViewController.m
//  KVC
//
//  Created by JackMa on 2019/11/11.
//  Copyright © 2019 fire. All rights reserved.
//

#import "ViewController.h"
#import "SPPerson.h"

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
}


@end
