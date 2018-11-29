//
//  XCCustomItemView.m
//  Pods-XCCustomItemView_Example
//
//  Created by 樊小聪 on 2017/10/28.
//


/*
 *  备注：自定义 item 视图 🐾
 */

#import "XCCustomItemView.h"
#import "XCCustomItem.h"
#import "UIView+XCCustomItem.h"


@interface XCCustomItemView ()

@property (strong, nonatomic) XCCustomItemConfigure *configure;
@property (strong, nonatomic) NSArray<XCCustomItemModel *> *itemMs;

@end


@implementation XCCustomItemView

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    /// 设置子视图 frame
    NSInteger column     = self.configure.column;
    CGFloat rowMargin    = self.configure.rowMargin;
    CGFloat columnMargin = self.configure.columnMargin;
    UIEdgeInsets insets  = self.configure.itemInsets;
    
    NSInteger count = self.subviews.count;
    NSInteger rows  = (self.subviews.count + column - 1) / column;
    
    CGFloat itemW = (self.width - (insets.left + insets.right)
                     - columnMargin * (column - 1)) / column;
    CGFloat itemH = (self.height - (insets.top + insets.bottom)
                     - rowMargin * (rows - 1)) / rows;
    
    for (NSInteger i = 0; i < count; i ++)
    {
        CGFloat itemX = insets.left + (i % column) * (itemW + columnMargin);
        CGFloat itemY = insets.top + (i / column) * (itemH + rowMargin);
        
        XCCustomItem *item = self.subviews[i];
        
        item.frame = CGRectMake(itemX, itemY, itemW, itemH);
    }
}

#pragma mark - 🎬 👀 Action Method 👀

/**
 *  点击某个 item 的回调
 */
- (void)didClickItemAction:(XCCustomItem *)item
{
    NSInteger index = item.tag - 100;
    
    XCCustomItemModel *itemM = self.itemMs[index];
    
    if (itemM.didClickHandle)
    {
        itemM.didClickHandle();
    }
}

#pragma mark - 🔒 👀 Privite Method 👀

/**
 *  配置默认参数
 */
- (void)setupDefault
{
    /// 添加子视图
    __weak typeof(self)weakSelf = self;
    
    [self.itemMs enumerateObjectsUsingBlock:^(XCCustomItemModel * _Nonnull itemM, NSUInteger idx, BOOL * _Nonnull stop) {
        
        XCCustomItem *item = [XCCustomItem buttonWithType:UIButtonTypeCustom];
        
        item.tag = 100 + idx;
        
        [item setTitle:itemM.title forState:UIControlStateNormal];
        [item setBackgroundColor:self.configure.backgroundColor];
        item.titleLabel.textAlignment = NSTextAlignmentCenter;
        [item addTarget:self action:@selector(didClickItemAction:) forControlEvents:UIControlEventTouchUpInside];
        
        if (itemM.image)    /// 本地图片
        {
            [item setImage:itemM.image forState:UIControlStateNormal];
        }
        
        /// 更新配置
        [weakSelf updateConfigureInItem:item];
        
        [weakSelf addSubview:item];
    }];
}

/**
 *  更新 item 配置
 */
- (void)updateConfigureInItem:(XCCustomItem *)item
{
    [item setTitleColor:self.configure.titleColor forState:UIControlStateNormal];
    item.titleLabel.font = [UIFont systemFontOfSize:self.configure.titleFontSize];
    item.imageSize = self.configure.imageSize;
    item.imageAndTitleMargin = self.configure.imageAndTitleMargin;
    item.backgroundColor = self.configure.backgroundColor;
    
    item.imageView.layer.cornerRadius  = self.configure.imageCornerRadius;
    item.imageView.layer.masksToBounds = self.configure.clipsToBounds;
    item.imageView.contentMode = self.configure.contentMode;
    
    [item setNeedsLayout];
}

#pragma mark - 🔓 👀 Public Method 👀

/**
 *  初始化
 */
- (instancetype)initWithFrame:(CGRect)frame
                   itemModels:(NSArray<XCCustomItemModel *> *)itemMs
{
    if (self = [super initWithFrame:frame])
    {
        self.itemMs = itemMs;
        self.configure = [XCCustomItemConfigure defaultConfigure];
        
        /// 配置默认参数
        [self setupDefault];
    }
    
    return self;
}

/**
 *  更新 item
 */
- (void)updateItem:(void(^)(XCCustomItemConfigure *))configure
{
    if (configure)
    {
        configure(self.configure);
    }
    
    for (XCCustomItem *item in self.subviews)
    {
        /// 更新配置
        [self updateConfigureInItem:item];
    }
}

/**
 *  加载网络图片
 */
- (void)configureWebImage:(void(^)(UIButton *button, NSURL *URL))webImgconfig
{
    /// 加载网页图片
    for (NSInteger i = 0; i < self.subviews.count; i ++)
    {
        XCCustomItem *item = self.subviews[i];
        XCCustomItemModel *itemM = self.itemMs[i];
        
        if (itemM.image)    continue;
        
        if (webImgconfig) {
            webImgconfig(item, [NSURL URLWithString:itemM.url]);
        }
    }
}

@end

