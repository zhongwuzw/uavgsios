//
//  BarController.h
//  UAVGS
//
//  Created by apple on 9/23/14.
//  Copyright (c) 2014 mousebird consulting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BarController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *getli_1;

@property (strong, nonatomic) IBOutlet UIView *topBar;
@property (strong, nonatomic) IBOutlet UIView *mapBar;
@property (strong, nonatomic) IBOutlet UIView *warningBar;

@property (strong, nonatomic) IBOutlet UIButton *Photos;
@property (strong, nonatomic) IBOutlet UIButton *Note;
@property (strong, nonatomic) IBOutlet UIButton *Setting;
@property (strong, nonatomic) IBOutlet UIButton *Camera;
@property (strong, nonatomic) IBOutlet UILabel *Timer;
@property (strong, nonatomic) IBOutlet UILabel *Hights;
@property (strong, nonatomic) IBOutlet UILabel *Distance;

- (IBAction)TestButtonDown:(UIButton *)sender;
- (IBAction)GoButtonCliced:(UIButton *)sender;
- (void)AutoSetViewPos:(CGRect) windowSize;
- (IBAction)SwitchButtonClicked:(UIButton *)sender;
@end
