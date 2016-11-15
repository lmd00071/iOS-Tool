//
//  VoiceViewController.m
//  iOS~Tool
//
//  Created by 李明丹 on 2016/11/15.
//  Copyright © 2016年 李明丹. All rights reserved.
//

#import "VoiceViewController.h"
#import "TTSExample.h"

@interface VoiceViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textContent;

@property (weak, nonatomic) IBOutlet UIButton *play;

@property (nonatomic,strong)TTSExample *player;

@property (nonatomic,copy)NSString *filepath;

@end

@implementation VoiceViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if (self.filepath) {
        self.textContent.text = [NSString stringWithContentsOfFile:self.filepath encoding:NSUTF8StringEncoding error:nil];
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.player = [[TTSExample alloc]init];
    self.filepath =  [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"test.txt"];
    
}
- (IBAction)playVoice:(UIButton *)sender {
    if (!self.textContent.text) {
        return;
    }
    
    [self.player read:self.textContent.text];
    
}
- (IBAction)StopPlay:(UIButton *)sender {
    [self.player stopRead];
}


- (IBAction)textChanged:(UITextField *)sender {
    
   
    BOOL success =  [self.textContent.text writeToFile:self.filepath atomically:YES encoding:NSUTF8StringEncoding error:nil];
    if (success) {
        NSLog(@"归档成功");
    }
}


-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
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
