//
//  ViewController.m
//  XCCustomItemViewExample
//
//  Created by 樊小聪 on 2018/8/22.
//  Copyright © 2018年 樊小聪. All rights reserved.
//

#import "ViewController.h"
#import "XCCustomItemView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImage *img = [UIImage imageNamed:@"test_icon"];
    
    XCCustomItemModel *itemM1 = [[XCCustomItemModel alloc] initWithImage:img title:@"第一个" didClickHandle:^{
        
        NSLog(@"1111111111");
    }];
    
    XCCustomItemModel *itemM2 = [[XCCustomItemModel alloc] initWithImage:img title:@"第二个" didClickHandle:^{
        
        NSLog(@"2222222222");
    }];
    
    XCCustomItemModel *itemM3 = [[XCCustomItemModel alloc] initWithImage:img title:@"第三个" didClickHandle:^{
        
        NSLog(@"3333333333");
    }];
    
    XCCustomItemModel *itemM4 = [[XCCustomItemModel alloc] initWithImage:img title:@"第四个" didClickHandle:^{
        
        NSLog(@"444444444");
    }];
    
    XCCustomItemModel *itemM5 = [[XCCustomItemModel alloc] initWithImage:img title:@"第四个" didClickHandle:^{
        
        NSLog(@"55555555555");
    }];
    
    XCCustomItemView *itemView = [[XCCustomItemView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 240) itemModels:@[itemM1, itemM2, itemM3, itemM4, itemM5]];
    
    [itemView updateItem:^(XCCustomItemConfigure *configure) {
        configure.column = 4;
        configure.backgroundColor = [UIColor whiteColor];
    }];
    
    [self.view addSubview:itemView];
}


@end
