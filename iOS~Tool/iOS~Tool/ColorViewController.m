//
//  ColorViewController.m
//  iOS~Tool
//
//  Created by 李明丹 on 2016/11/15.
//  Copyright © 2016年 李明丹. All rights reserved.
//

#import "ColorViewController.h"
#import "UIColor+HexColor.h"

@interface ColorViewController ()
@property (weak, nonatomic) IBOutlet UITextField *hexText;

@property (weak, nonatomic) IBOutlet UILabel *resultLable;
@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor colorWithHexString:@"333333"];
    
    
    
}
- (IBAction)changeColor:(UIButton *)sender {
    
    NSArray *rgbArr = [UIColor RgbWithHexString:self.hexText.text];
    self.resultLable.text = [NSString stringWithFormat:@"R:%@, G:%@, B:%@",rgbArr[0],rgbArr[1],rgbArr[2]];
    
    self.resultLable.backgroundColor = [UIColor colorWithHexString:self.hexText.text];
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
