//
//  XCCustomItem.h
//  Pods-XCCustomItemView_Example
//
//  Created by 樊小聪 on 2017/10/28.
//

#import <UIKit/UIKit.h>

@interface XCCustomItem : UIButton

/// 图片大小
@property (assign, nonatomic) CGSize imageSize;
/// 图片与文字之间的距离
@property (assign, nonatomic) CGFloat imageAndTitleMargin;

@end
