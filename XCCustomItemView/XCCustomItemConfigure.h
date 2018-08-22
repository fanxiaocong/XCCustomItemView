//
//  XCCustomItemConfigure.h
//  Pods-XCCustomItemView_Example
//
//  Created by 樊小聪 on 2017/10/28.
//


#import <UIKit/UIKit.h>

@interface XCCustomItemConfigure : NSObject

/// item 背景颜色：默认 白色
@property (strong, nonatomic) UIColor *backgroundColor;
/// 标题文字颜色：默认 黑色
@property (strong, nonatomic) UIColor *titleColor;
/// 标题文字大小：默认 13
@property (assign, nonatomic) CGFloat titleFontSize;
/// 图片大小：默认 60x60
@property (assign, nonatomic) CGSize imageSize;
///圆角半径：默认 30
@property (assign, nonatomic) CGFloat imageCornerRadius;
/// 图片与文字之间的距离：默认 15
@property (assign, nonatomic) CGFloat imageAndTitleMargin;

/// 四周边距：默认 0
@property (assign, nonatomic) UIEdgeInsets itemInsets;
/// 列数：默认 3
@property (assign, nonatomic) NSInteger column;
/// item 之间的列(X)间距：默认 0
@property (assign, nonatomic) CGFloat columnMargin;
/// item 之间的行(Y)间距：默认 0
@property (assign, nonatomic) CGFloat rowMargin;


+ (instancetype)defaultConfigure;

@end
