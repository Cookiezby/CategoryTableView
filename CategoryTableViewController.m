//
//  CategroyTableViewController.m
//  naluhodoPT
//
//  Created by cookie on 12/27/15.
//  Copyright © 2015 cookie. All rights reserved.
//

#import "CategoryTableViewController.h"

@interface CategoryTableViewController ()

@property(nonatomic)UITableView* tableView;
@property(nonatomic)NSArray* categroyArray;


@end

@implementation CategoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    self.navigationItem.title = self.navigationTitle;
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setPlist:(NSString *)fileName{
    
}


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary* dic = self.categroyArray[indexPath.row];
    NSArray* subcat = dic[@"subcat"];
    if(subcat.count > 0){
        CategoryTableViewController* categoryVC = [[CategoryTableViewController alloc]init];
        categoryVC.delegate = self.delegate;
        categoryVC.navigationTitle = dic[@"name"];
        [categoryVC setCategroyArray:subcat];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        [self.navigationController pushViewController:categoryVC animated:YES];
    }else{
        [self.delegate setCategroy:dic[@"name"]];
        [self.navigationController popToViewController:(UIViewController*)self.delegate animated:YES];
    }
    
}


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.categroyArray.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary* dic = self.categroyArray[indexPath.row];
    UITableViewCell* cell = [[UITableViewCell alloc]init];
    cell.textLabel.text = dic[@"name"];
    return cell;
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
