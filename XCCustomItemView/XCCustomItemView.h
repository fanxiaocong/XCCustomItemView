//
//  XCCustomItemView.h
//  Pods-XCCustomItemView_Example
//
//  Created by 樊小聪 on 2017/10/28.
//


/*
 *  备注：自定义 item 视图 🐾
 */

#import <UIKit/UIKit.h>

#import "XCCustomItemConfigure.h"
#import "XCCustomItemModel.h"


@interface XCCustomItemView : UIView

/**
 *  初始化
 */
- (instancetype)initWithFrame:(CGRect)frame
                   itemModels:(NSArray<XCCustomItemModel *> *)itemMs;

/**
 *  更新 item
 */
- (void)updateItem:(void(^)(XCCustomItemConfigure *))configure;

/**
 *  加载网络图片
 */
- (void)configureWebImage:(void(^)(UIButton *button, NSURL *URL))webImgconfig;

@end
