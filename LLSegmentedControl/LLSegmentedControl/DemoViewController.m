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

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"DemoViewController";
    self.view.backgroundColor = [UIColor whiteColor];
    
    if (self.index == 0) {
        [self segmentedControlDemo0];
    } else if (self.index == 1) {
        [self segmentedControlDemo1];
    } else if (self.index == 2) {
        [self segmentedControlDemo2];
    } else if (self.index == 3) {
        [self segmentedControlDemo3];
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
    LLSegmentedControl *segmentedControl = [[LLSegmentedControl alloc] initWithFrame:CGRectMake(0, 100, kScreenWidth, 64) titleArray:@[@"内舱房", @"海景房", @"阳台房", @"歌诗达邮轮", @"公主邮轮", @"内舱房", @"海景房", @"阳台房", @"歌诗达邮轮", @"公主邮轮"]];
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
