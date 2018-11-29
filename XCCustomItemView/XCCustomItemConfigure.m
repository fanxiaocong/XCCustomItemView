//
//  XCCustomItemConfigure.m
//  Pods-XCCustomItemView_Example
//
//  Created by 樊小聪 on 2017/10/28.
//

#import "XCCustomItemConfigure.h"

@implementation XCCustomItemConfigure

+ (instancetype)defaultConfigure
{
    XCCustomItemConfigure *configure = [[XCCustomItemConfigure alloc] init];
    
    configure.backgroundColor = [UIColor whiteColor];
    configure.titleColor = [UIColor blackColor];
    configure.titleFontSize = 13;
    configure.imageSize = CGSizeMake(60, 60);
    configure.imageCornerRadius = configure.imageSize.width * 0.5;
    configure.imageAndTitleMargin = 15;
    configure.itemInsets = UIEdgeInsetsMake(0, 0, 0, 0);
    configure.column = 3;
    configure.columnMargin = 0;
    configure.rowMargin = 0;
    configure.contentMode = UIViewContentModeScaleAspectFill;
    configure.clipsToBounds = YES;
    
    return configure;
}

@end
