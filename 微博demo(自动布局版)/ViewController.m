//
//  ViewController.m
//  微博demo(自动布局版)
//
//  Created by subaozi on 16/7/29.
//  Copyright © 2016年 subaozi. All rights reserved.
//

#import "ViewController.h"
#import "GPStatus.h"
#import "GPTableViewCell.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *statuses;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.estimatedRowHeight = 150;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}

//返回有多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.statuses.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GPTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"item"];
    cell.status = self.statuses[indexPath.row];
    return cell;
}







-(NSArray *)statuses{
    if (!_statuses) {
        NSArray *dictArr = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"statuses.plist" ofType:nil]];
        NSMutableArray *arrM = [NSMutableArray arrayWithCapacity:dictArr.count];
        for (NSDictionary *dict in dictArr) {
            GPStatus *model = [GPStatus statusWithDict:dict];
            [arrM addObject:model];
        }
        _statuses = arrM;
    }
    return _statuses;
}
@end




