//
//  XCCustomItem.m
//  Pods-XCCustomItemView_Example
//
//  Created by 樊小聪 on 2017/10/28.
//

#import "XCCustomItem.h"

#import "UIView+XCCustomItem.h"


@implementation XCCustomItem

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat titleH = self.titleLabel.font.pointSize;
    
    self.imageView.size = self.imageSize;
    self.imageView.centerX = self.width * 0.5;
    self.imageView.top = (self.height - titleH - self.imageSize.height - self.imageAndTitleMargin) * 0.5;
    
    self.titleLabel.left = 0;
    self.titleLabel.top = CGRectGetMaxY(self.imageView.frame) + self.imageAndTitleMargin;
    self.titleLabel.width  = self.width;
    self.titleLabel.height = titleH;
}

- (void)setHighlighted:(BOOL)highlighted {}

@end
