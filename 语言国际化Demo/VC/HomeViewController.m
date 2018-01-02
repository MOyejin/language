//
//  HomeViewController.m
//  语言国际化
//
//  Created by mo on 2018/1/2.
//  Copyright © 2018年 momo. All rights reserved.
//

#import "HomeViewController.h"
#import "CeshiViewController.h"

@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong)UITableView *tableView_main;

@end

@implementation HomeViewController

- (UITableView *)tableView_main{
    if (!_tableView_main) {
        _tableView_main = [[UITableView alloc] initWithFrame:self.view.frame];
        _tableView_main.delegate = self;
        _tableView_main.dataSource = self;
        [self.view addSubview:_tableView_main];
    }
    return _tableView_main;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    self.title = Localized(@"home");
    
    UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150)];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 50, 150, 40);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:Localized(@"Button") forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonDid:) forControlEvents:UIControlEventTouchUpInside];
    [headView addSubview:button];
    self.tableView_main.tableHeaderView = headView;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 20;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.textLabel.text = Localized(@"ceshi");
    
    return cell;
    
}

//- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
//
//    return 10;
//}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return  55.0;
    
}

- (void)buttonDid:(UIButton *)button{
    
    [self.navigationController pushViewController:[[CeshiViewController alloc]init] animated:YES];
    
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
