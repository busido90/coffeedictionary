//
//  ViewController.m
//  013_sampleTableView002
//
//  Created by 永山 大志 on 2015/04/14.
//  Copyright (c) 2015年 永山 大志. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myTableView.dataSource = self;
    self.myTableView.delegate = self;
    
    //カスタマイズしたセルをテーブルビューにセット
    UINib *nib = [UINib nibWithNibName:@"customCell" bundle:nil];
    
    [self.myTableView registerNib:nib forCellReuseIdentifier:@"Cell"];

    _coffeetype = @[@"ブルーマウンテン", @"メキシコ", @"グァテマラ", @"クリスタルマウンテン", @"コスタリカ", @"コロンビア", @"ベネズエラ", @"ブラジル", @"コナ", @"モカ", @"キリマンジャロ", @"ケニア", @"ロブスタ", @"マンデリン", @"ドミニカ", @"ハイチ"];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _coffeetype.count;
}

//20回実行されてる
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //定数を宣言 static
    static NSString *CellIdentifier = @"Cell";
    
    //再利用している(２回目以降で使用)
    customTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
//    if (cell == nil) {
//        //見た目をセット
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//    }
    //indexPathで今実行している行を表示
    cell.textLabel.text = [NSString stringWithFormat:@"豆：%@", _coffeetype[indexPath.row]];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"Tap: %ld", (long)indexPath.row);
    
    DetailViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];

    dvc.select_num = indexPath.row;
                                 
    [[self navigationController] pushViewController:dvc animated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
