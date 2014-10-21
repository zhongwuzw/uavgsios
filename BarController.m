//
//  BarController.m
//  UAVGS
//
//  Created by apple on 9/23/14.
//  Copyright (c) 2014 mousebird consulting. All rights reserved.
//

#import "BarController.h"
#import "TestViewController.h"
@interface BarController ()

@end

@implementation BarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
- (void)AutoSetViewPos:(CGRect)windowSize{
    float hig = windowSize.size.height;
    float wid = windowSize.size.width;
    NSLog(@"hig=%lf",hig);
    NSLog(@"wide=%lf",wid);
    [self.Note setFrame:CGRectMake(     wid/2 - hig/16,     hig/64, hig/8, hig/8)];
    [self.Photos setFrame:CGRectMake(   wid/3 + hig/16,     hig/64, hig/8, hig/8)];
    [self.Setting setFrame:CGRectMake(  2*wid/3 - 3*hig/16, hig/64, hig/8, hig/8)];
    [self.Camera setFrame:CGRectMake(   wid/50,             hig/64, hig/16,hig/16)];
    [self.Distance setFrame:CGRectMake( wid/12,             hig/64, hig/8, hig/16)];
    [self.Hights setFrame:CGRectMake(   13*wid/84,          hig/64, hig/8, hig/16)];
    [self.Timer setFrame:CGRectMake(    9*wid/40,           hig/64, hig/8, hig/16)];
    [self.getli_1 setFrame:CGRectMake(0, 0, wid, 72*(hig/4/210))];
    [self.getli_1 setBackgroundColor:[UIColor clearColor]];
   }
- (IBAction)GoButtonCliced:(UIButton *)sender {
    NSLog(@"GoButtonClicked");
}

- (IBAction)SwitchButtonClicked:(UIButton *)sender {
    [[TestViewController shared] swithMode];
}
- (IBAction)TestButtonDown:(UIButton *)sender {
    NSLog(@"TestButtonDownClicked");
}
- (IBAction)handleGPPhoto:(UIButton *)sender {
}
@end
