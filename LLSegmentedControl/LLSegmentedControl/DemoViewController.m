//
//  DemoViewController.m
//  LLSegmentedControl
//
//  Created by 雷亮 on 16/8/12.
//  Copyright © 2016年 Leiliang. All rights reserved.
//

#import "DemoViewController.h"
#import "LLSegmentedControl.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface DemoViewController () <UIScrollViewDelegate>

@property (nonatomic, strong) LLSegmentedControl *segmentedControl;

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor whiteColor];
    
    if (self.index == 0) {
        [self segmentedControlDemo0];
    } else if (self.index == 1) {
        [self segmentedControlDemo1];
    } else if (self.index == 2) {
        [self segmentedControlDemo2];
    } else if (self.index == 3) {
        [self segmentedControlDemo3];
    } else if (self.index == 4) {
        [self segmentedControlDemo4];
    }
}

- (void)segmentedControlDemo0 {
    LLSegmentedControl *segmentedControl = [[LLSegmentedControl alloc] initWithFrame:CGRectMake(0, 100, kScreenWidth, 64) titleArray:@[@"内舱房", @"海景房", @"阳台房", @"歌诗达邮轮", @"公主邮轮", @"内舱房", @"海景房", @"阳台房", @"歌诗达邮轮", @"公主邮轮"]];
    segmentedControl.backgroundColor = [UIColor colorWithWhite:0.f alpha:0.1];
    segmentedControl.segmentedControlLineStyle = LLSegmentedControlStyleUnderline;
    segmentedControl.segmentedControlTitleSpacingStyle = LLSegmentedControlTitleSpacingStyleWidthAutoFit;
    // lineWidthEqualToTextWidth 设置为YES, lineWidth 属性则不需设置
    segmentedControl.lineWidthEqualToTextWidth = YES;
    segmentedControl.textColor = [UIColor darkTextColor];
    segmentedControl.selectedTextColor = [UIColor brownColor];
    segmentedControl.font = [UIFont systemFontOfSize:16];
    segmentedControl.selectedFont = [UIFont boldSystemFontOfSize:20];
    segmentedControl.lineColor = [UIColor magentaColor];
    segmentedControl.lineHeight = 4.f;
    // segmentedControlTitleSpacingStyle 设置为 LLSegmentedControlTitleSpacingStyleSpacingFixed
    // 则不需要设置 titleWidth 属性
    segmentedControl.titleSpacing = 30;
    segmentedControl.defaultSelectedIndex = 2;
    [self.view addSubview:segmentedControl];
    
    [segmentedControl segmentedControlSelectedWithBlock:^(LLSegmentedControl *segmentedControl, NSInteger selectedIndex) {
        NSLog(@"selectedIndex : %zd", selectedIndex);
    }];
}

- (void)segmentedControlDemo1 {
    LLSegmentedControl *segmentedControl = [[LLSegmentedControl alloc] initWithFrame:CGRectMake(0, 100, kScreenWidth, 64) titleArray:@[@"内舱房", @"海景房", @"阳台房", @"大床房"]];
    segmentedControl.backgroundColor = [UIColor colorWithWhite:0.f alpha:0.1];
    segmentedControl.segmentedControlLineStyle = LLSegmentedControlStyleUnderline;
    segmentedControl.segmentedControlTitleSpacingStyle = LLSegmentedControlTitleSpacingStyleWidthFixed;
    segmentedControl.lineWidthEqualToTextWidth = YES;
    segmentedControl.textColor = [UIColor darkTextColor];
    segmentedControl.selectedTextColor = [UIColor brownColor];
    segmentedControl.font = [UIFont systemFontOfSize:16];
    segmentedControl.selectedFont = [UIFont boldSystemFontOfSize:20];
    segmentedControl.lineColor = [UIColor magentaColor];
    segmentedControl.lineHeight = 4.f;
    // segmentedControlTitleSpacingStyle 属性设置为 LLSegmentedControlTitleSpacingStyleWidthFixed
    // 则不需要设置titleSpacing，只需要设置titleWidth即可
    segmentedControl.titleWidth = kScreenWidth / 4;
    segmentedControl.defaultSelectedIndex = 2;
    [self.view addSubview:segmentedControl];
    
    [segmentedControl segmentedControlSelectedWithBlock:^(LLSegmentedControl *segmentedControl, NSInteger selectedIndex) {
        NSLog(@"selectedIndex : %zd", selectedIndex);
    }];
}

- (void)segmentedControlDemo2 {
    LLSegmentedControl *segmentedControl = [[LLSegmentedControl alloc] initWithFrame:CGRectMake(0, 100, kScreenWidth, 64) titleArray:@[@"内舱房", @"海景房", @"阳台房", @"歌诗达邮轮", @"公主邮轮", @"内舱房", @"海景房", @"阳台房", @"歌诗达邮轮", @"公主邮轮"]];
    segmentedControl.backgroundColor = [UIColor colorWithWhite:0.f alpha:0.1];
    segmentedControl.segmentedControlLineStyle = LLSegmentedControlStyleTopline;
    segmentedControl.segmentedControlTitleSpacingStyle = LLSegmentedControlTitleSpacingStyleWidthFixed;
    // lineWidthEqualToTextWidth属性设置为NO, 则需要设置lineWidth属性
    segmentedControl.lineWidthEqualToTextWidth = NO;
    segmentedControl.textColor = [UIColor darkTextColor];
    segmentedControl.selectedTextColor = [UIColor brownColor];
    segmentedControl.font = [UIFont systemFontOfSize:16];
    segmentedControl.selectedFont = [UIFont boldSystemFontOfSize:16];
    segmentedControl.lineColor = [UIColor magentaColor];
    segmentedControl.lineHeight = 4.f;
    // segmentedControlTitleSpacingStyle 属性设置为 LLSegmentedControlTitleSpacingStyleWidthFixed
    // 则不需要设置titleSpacing，只需要设置titleWidth即可
    segmentedControl.titleWidth = kScreenWidth / 4;
    segmentedControl.lineWidth = kScreenWidth / 4;
    segmentedControl.defaultSelectedIndex = 2;
    [self.view addSubview:segmentedControl];
    
    [segmentedControl segmentedControlSelectedWithBlock:^(LLSegmentedControl *segmentedControl, NSInteger selectedIndex) {
        NSLog(@"selectedIndex : %zd", selectedIndex);
    }];
}

- (void)segmentedControlDemo3 {
    LLSegmentedControl *segmentedControl = [[LLSegmentedControl alloc] initWithFrame:CGRectMake(0, 100, kScreenWidth, 64) titleArray:@[@"内舱房", @"海景房", @"阳台房", @"歌诗达邮轮", @"公主邮轮", @"内舱房", @"海景房", @"阳台房", @"歌诗达邮轮", @"公主邮轮"]];
    segmentedControl.backgroundColor = [UIColor colorWithWhite:0.f alpha:0.1];
    // segmentedControlLineStyle属性设置为LLSegmentedControlLineStyleHidden
    // 则有关下划线的相关属性不需要设置
    segmentedControl.segmentedControlLineStyle = LLSegmentedControlLineStyleHidden;
    segmentedControl.segmentedControlTitleSpacingStyle = LLSegmentedControlTitleSpacingStyleWidthFixed;
    segmentedControl.textColor = [UIColor darkTextColor];
    segmentedControl.selectedTextColor = [UIColor brownColor];
    segmentedControl.font = [UIFont systemFontOfSize:16];
    segmentedControl.selectedFont = [UIFont boldSystemFontOfSize:19];
    segmentedControl.titleWidth = kScreenWidth / 4;
    segmentedControl.defaultSelectedIndex = 2;
    [self.view addSubview:segmentedControl];
    
    [segmentedControl segmentedControlSelectedWithBlock:^(LLSegmentedControl *segmentedControl, NSInteger selectedIndex) {
        NSLog(@"selectedIndex : %zd", selectedIndex);
    }];
}

- (void)segmentedControlDemo4 {
    CGFloat const kSegmentedControlTop = 64;
    CGFloat const kSegmentedControlHeight = 44;
    
    NSArray *dataArray = @[@"内舱房", @"海景房", @"阳台房", @"歌诗达邮轮", @"公主邮轮", @"内舱房", @"海景房", @"阳台房"];
    self.segmentedControl = [[LLSegmentedControl alloc] initWithFrame:CGRectMake(0, kSegmentedControlTop, kScreenWidth, kSegmentedControlHeight) titleArray:dataArray];
    _segmentedControl.backgroundColor = [UIColor colorWithWhite:0.f alpha:0.1];
    _segmentedControl.segmentedControlLineStyle = LLSegmentedControlStyleUnderline;
    _segmentedControl.segmentedControlTitleSpacingStyle = LLSegmentedControlTitleSpacingStyleWidthAutoFit;
    // lineWidthEqualToTextWidth 设置为YES, lineWidth 属性则不需设置
    _segmentedControl.lineWidthEqualToTextWidth = YES;
    _segmentedControl.textColor = [UIColor darkTextColor];
    _segmentedControl.selectedTextColor = [UIColor brownColor];
    _segmentedControl.font = [UIFont systemFontOfSize:14];
    _segmentedControl.selectedFont = [UIFont boldSystemFontOfSize:16];
    _segmentedControl.lineColor = [UIColor magentaColor];
    _segmentedControl.lineHeight = 2.f;
    // segmentedControlTitleSpacingStyle 设置为 LLSegmentedControlTitleSpacingStyleSpacingFixed
    // 则不需要设置 titleWidth 属性
    _segmentedControl.titleSpacing = 30;
    _segmentedControl.defaultSelectedIndex = 0;
    [self.view addSubview:_segmentedControl];
    
    CGFloat const kScrollViewHeight = kScreenHeight - (kSegmentedControlTop + kSegmentedControlHeight);
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, kSegmentedControlTop + kSegmentedControlHeight, kScreenWidth, kScrollViewHeight)];
    scrollView.contentSize = CGSizeMake(kScreenWidth * dataArray.count, kScrollViewHeight);
    scrollView.delegate = self;
    scrollView.bounces = YES;
    scrollView.backgroundColor = [UIColor whiteColor];
    scrollView.pagingEnabled = YES;
    [self.view addSubview:scrollView];
    
    for (int i = 0; i < dataArray.count; i ++) {
        CGFloat left = i * kScreenWidth;
        UIView *backgroundView = [[UIView alloc] initWithFrame:CGRectMake(left, 0, kScreenWidth, kScrollViewHeight)];
        backgroundView.backgroundColor = [self randomColor];
        [scrollView addSubview:backgroundView];
    }
    
    [_segmentedControl segmentedControlSelectedWithBlock:^(LLSegmentedControl *segmentedControl, NSInteger selectedIndex) {
        NSLog(@"selectedIndex : %zd", selectedIndex);
        [scrollView setContentOffset:CGPointMake(selectedIndex * kScreenWidth, 0) animated:YES];
    }];
}

#pragma mark -
#pragma mark - scrollView protocol methods
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSInteger const kPageIndex = scrollView.contentOffset.x / kScreenWidth;
//    [self.segmentedControl segmentedControlSetSelectedIndexWithSelectedBlock:kPageIndex];
    // 重设选中位置
    [self.segmentedControl segmentedControlSetSelectedIndex:kPageIndex];
}

- (UIColor *)randomColor {
    CGFloat hue = arc4random() % 256 / 256.0;
    CGFloat saturation = arc4random() % 128 / 256.0 + 0.5;
    CGFloat brightness = arc4random() % 128 / 256.0 + 0.5;
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
