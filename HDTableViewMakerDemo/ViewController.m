//
//  ViewController.m
//  HDTableViewDataSourceDemo
//
//  Created by Abner on 16/7/16.
//  Copyright © 2016年 Abner. All rights reserved.
//

#import "ViewController.h"
#import "HDTableViewCell.h"
#import "HDTableViewMakerHeader.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *mainTable;

@property (nonatomic, strong) NSArray *dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[_mainTable hd_tableViewMaker:^(HDTableViewMaker *tableViewMaker) {
        
        tableViewMaker.hd_sectionCount(1)
        .hd_section(^(HDSectionMaker * sectionMaker){
            
            sectionMaker
            .dataArr(^(){
                return self.dataArr;
            })
            .hd_cell(^(HDCellMaker *cellMaker){
                
                cellMaker
                .cell([HDTableViewCell class])
                .adapter(^(HDTableViewCell *cell,id data,NSIndexPath *indexPath){
                    cell.title = data;
                }).autoHeight();
                
            });
        });
    }] hd_addAllFresh:^(HDFreshType freshType) {
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}
/**
 *  GET
 */

-(NSArray *)dataArr{
    if (!_dataArr) {
        _dataArr = @[@"自动高度aaaaadfdfsdfsdfsdfsdfsd",@"aaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsd",@"aaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdaaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsdfsdfsdfsd",@"aaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsd",@"aaaaadaaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsdfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsd",@"aaaaadfdfsdaaaaadfdfaaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsd",@"aaaaadfaaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsddfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsd",@"aaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsd",@"aaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsd",@"aaaaadfdfsdfsdfsdfsdfsdaaaaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsdaaadfdfsdfsdfsdfsdfsd",@"aaaaadfdfaaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsdsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsd",@"aaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsd",@"aaaaadfdfsdfsdfsdfsdfsaaaaadfdfsdfsdfsdfsdfsdaaaaadfdfsdfsdfsdfsdfsddaaaaadfdfsdfsdfsdfsdfsd"];
    }
    return _dataArr;
}

@end