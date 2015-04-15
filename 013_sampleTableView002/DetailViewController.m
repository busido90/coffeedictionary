//
//  DetailViewController.m
//  013_sampleTableView002
//
//  Created by 永山 大志 on 2015/04/14.
//  Copyright (c) 2015年 永山 大志. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%d", self.select_num);
    
    NSArray *coffeearray = @[@{@"name":@"ブルマン", @"desc":@"ジャマイカ産。すべてのコーヒーの良さをあわせ持つと言われる、バランスの良いコーヒーです。", @"image":@"bulemountain.jpeg"},
                             @{@"name":@"メキシコ", @"desc":@"メキシコ産。酸味と香りがともに適度で、やわらかい上品な味が特徴的です。", @"image":@"mexico.jpeg"},
                             @{@"name":@"グァテマラ", @"desc":@"グァテマラ産。甘い香り、上品な酸味、芳醇な風味があります。", @"image":@"guatemala.png"},
                             @{@"name":@"クリスタルマウンテン", @"desc":@"キューバ産。酸味と苦みのバランスがとれた上品な味が人気で、最高級品と言われています。", @"image":@"cristalmountain.jpeg"},
                             @{@"name":@"コスタリカ", @"desc":@"コスタリカ産。芳醇な香りと適度な酸味が混ざりあい、上品な味がします。", @"image":@"costalica.jpeg"},
                             @{@"name":@"コロンビア", @"desc":@"コロンビア産。甘い香りとまるい酸味と、まろやかなコクがあります。", @"image":@"colombia.jpeg"},
                             @{@"name":@"ベネズエラ", @"desc":@"ベネズエラ産。軽い酸味とやや独特の苦み、そして適度な香りがあります。", @"image":@"venezuela.jpeg"},
                             @{@"name":@"ブラジル", @"desc":@"ブラジル産。中庸な味、香りが高く適度な酸味と苦味があります。", @"image":@"brazile.jpeg"},
                             @{@"name":@"コナ", @"desc":@"ハワイ産。強い酸味と甘い香りがあります。", @"image":@"cona.jpeg"},
                             @{@"name":@"モカ", @"desc":@"イエメン・エチオピア産。フルーツのような甘酸っぱい香りと、まろやかな酸味とコクがあります。", @"image":@"moca.jpeg"},
                             @{@"name":@"キリマンジャロ", @"desc":@"タンザニア産。強い酸味と甘い香りと豊かなコクがあります。", @"image":@"kirimanjaro.jpeg"},
                             @{@"name":@"ケニア", @"desc":@"ケニア産。強い酸味が大きな特徴。キレがあり、後味もすっきりしています。", @"image":@"kenya.jpeg"},
                             @{@"name":@"ロブスタ", @"desc":@"ベトナム産。強い苦味と特異な香りがあります。", @"image":@"robsta.jpeg"},
                             @{@"name":@"マンデリン", @"desc":@"インドネシア産。コクのあるやわらかな苦味と、上品な風味があります。", @"image":@"manderin.jpeg"},
                             @{@"name":@"ドミニカ", @"desc":@"ドミニカ産。上品な酸味とコク、甘い香りのコーヒーです。 ", @"image":@"dominica.jpeg"},
                             @{@"name":@"ハイチ", @"desc":@"ハイチ産。苦味が少なく、芳醇な香りで後味がさっぱりしているのが特徴です。", @"image":@"haichi.jpeg"},
                             ];
    
    //タイトルを表示
    self.titleLabel.text = [NSString stringWithFormat:@"%@コーヒーとは", coffeearray[self.select_num][@"name"]];
    //説明文表示
    self.explainTextView.text = coffeearray[self.select_num][@"desc"];
    //画像を表示
    self.coffeeImageView.image = [UIImage imageNamed:coffeearray[self.select_num][@"image"]];
    
    
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
