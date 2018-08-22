//
//  XCCustomItemModel.h
//  Pods-XCCustomItemView_Example
//
//  Created by 樊小聪 on 2017/10/28.
//

#import <UIKit/UIKit.h>

@interface XCCustomItemModel : NSObject

/** 👀 图片：本地图片 👀 */
@property (strong, nonatomic, readonly) UIImage *image;
/** 👀 图片URL 👀 */
@property (copy, nonatomic, readonly) NSString *url;
/** 👀 标题 👀 */
@property (copy, nonatomic, readonly) NSString *title;
/** 👀 点击的回调 👀 */
@property (copy, nonatomic, readonly) void(^didClickHandle)(void);

/**
 *  根据图片和标题创建一个 model
 *
 *  @param image           图片
 *  @param title           标题
 *  @param didClickHandle  点击的回调
 */
- (instancetype)initWithImage:(UIImage *)image
                        title:(NSString *)title
               didClickHandle:(void(^)(void))didClickHandle;

/**
 *  根据图片URL和标题创建一个 model
 *
 *  @param url      图片URL地址
 *  @param title    标题
 *  @param didClickHandle  点击的回调
 */
- (instancetype)initWithURL:(NSString *)url
                      title:(NSString *)title
             didClickHandle:(void(^)(void))didClickHandle;


@end
