//
//  XCCustomItemModel.m
//  Pods-XCCustomItemView_Example
//
//  Created by 樊小聪 on 2017/10/28.
//

#import "XCCustomItemModel.h"

@implementation XCCustomItemModel

- (instancetype)initWithImage:(UIImage *)image
                          URL:(NSString *)url
                        title:(NSString *)title
               didClickHandle:(void(^)(void))didClickHandle
{
    if (self = [super init])
    {
        _image = image;
        _url   = [url copy];
        _title = [title copy];
        _didClickHandle = [didClickHandle copy];
    }
    
    return self;
}

/**
 *  根据图片和标题创建一个 model
 *
 *  @param image           图片
 *  @param title           标题
 *  @param didClickHandle  点击的回调
 */
- (instancetype)initWithImage:(UIImage *)image
                        title:(NSString *)title
               didClickHandle:(void(^)(void))didClickHandle
{
    return [[XCCustomItemModel alloc] initWithImage:image
                                                URL:NULL
                                              title:title
                                     didClickHandle:didClickHandle];
}

/**
 *  根据图片URL和标题创建一个 model
 *
 *  @param url      图片URL地址
 *  @param title    标题
 *  @param didClickHandle  点击的回调
 */
- (instancetype)initWithURL:(NSString *)url
                      title:(NSString *)title
             didClickHandle:(void(^)(void))didClickHandle
{
    return [[XCCustomItemModel alloc] initWithImage:NULL
                                                URL:url
                                              title:title
                                     didClickHandle:didClickHandle];

}

@end
