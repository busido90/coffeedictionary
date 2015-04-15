//
//  ViewController.h
//  013_sampleTableView002
//
//  Created by 永山 大志 on 2015/04/14.
//  Copyright (c) 2015年 永山 大志. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "customTableViewCell.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    NSArray *_coffeetype;
}

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

