//
//  TestVC.m
//  YbAOPCuttingModule
//
//  Created by 杨少 on 2018/3/30.
//  Copyright © 2018年 杨波. All rights reserved.
//

#import "TestVC.h"
#import "YBAOPManager.h"
#import "TestTableViewDigitConfig.h"
#import "TestTableViewClickConfig.h"
#import "TestTableViewCellConfig.h"

@interface TestVC ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) YBAOPManager *aopManager;
@property (nonatomic, strong) TestTableViewDigitConfig *digitConfig;
@property (nonatomic, strong) TestTableViewClickConfig *clickConfig;
@property (nonatomic, strong) TestTableViewCellConfig *cellConfig;

@end

@implementation TestVC

#pragma mark life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
}

#pragma mark getter
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
        _tableView.tableFooterView = [UIView new];
        
        _digitConfig = [TestTableViewDigitConfig new];
        _clickConfig = [TestTableViewClickConfig new];
        _cellConfig = [TestTableViewCellConfig new];
        
        _aopManager = [YBAOPManager new];
        [_aopManager addTarget:_digitConfig];
        [_aopManager addTarget:_clickConfig];
        [_aopManager addTarget:_cellConfig];
        
        _tableView.delegate = _aopManager;
        _tableView.dataSource = _aopManager;
    }
    return _tableView;
}


@end
