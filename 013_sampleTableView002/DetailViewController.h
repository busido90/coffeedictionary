//
//  DetailViewController.h
//  013_sampleTableView002
//
//  Created by 永山 大志 on 2015/04/14.
//  Copyright (c) 2015年 永山 大志. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (nonatomic, assign) int select_num;


@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *explainTextView;
@property (weak, nonatomic) IBOutlet UIImageView *coffeeImageView;

@end
