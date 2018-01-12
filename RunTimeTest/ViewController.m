//
//  ViewController.m
//  RunTimeTest
//
//  Created by chope on 2018/1/12.
//  Copyright © 2018年 chope. All rights reserved.
//

#import "ViewController.h"
#import "TestTableViewCell.h"

@interface ViewController ()<
UITableViewDelegate,
UITableViewDataSource
>


@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


    self.tableView.estimatedRowHeight = 44.f;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    [self.tableView reloadData];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    
    TestTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"TestTableViewCell"];
    if (cell == nil) {
        NSArray *arr = [[NSBundle mainBundle] loadNibNamed:@"TestTableViewCell" owner:nil options:nil];
        cell = [arr objectAtIndex:0];
    }
    
    cell.contentlbl.text = @"安全区域可帮助您将视图置于整个界面的可见部分。UIKit定义的视图控制器可能会在您的内容上放置特殊的视图。例如，导航控制器在底层视图控制器的内容之上显示导航栏。即使这样的观点是部分透明的，它们仍然遮蔽了它们下面的内容。在tvOS中，安全区域还包括屏幕的过扫描插图，它们代表屏幕覆盖的区域。使用安全区域作为布置内容的辅助工具。每个视图都有自己的布局指南（可从该属性访问），您可以使用该指南为视图内的项目创建约束。如果您不使用“自动布局”定位视图，则可以从视图的属性中获取原始插入值。safeAreaLayoutGuidesafeAreaInsets";
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}



@end
