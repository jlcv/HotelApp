//
//  HTLCandadoViewController.m
//  HotelApp
//
//  Created by jChavez17 on 4/8/14.
//  Copyright (c) 2014 jChavez17. All rights reserved.
//

#import "HTLCandadoViewController.h"
#import "FUIButton.h"
#import "UIColor+FlatUI.h"

@interface HTLCandadoViewController ()

@end

@implementation HTLCandadoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _lockTitleLabel.font = [UIFont fontWithName:@"Lato-Bold" size:36];
    
    _lockEnterBtn.buttonColor = [UIColor peterRiverColor];
    _lockEnterBtn.shadowColor = [UIColor belizeHoleColor];
    _lockEnterBtn.shadowHeight = 3.0f;
    _lockEnterBtn.cornerRadius = 6.0f;
    _lockEnterBtn.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    [_lockEnterBtn setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [_lockEnterBtn setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    self.lockView.backgroundColor = [UIColor cloudsColor];
    self.lockTitleLabel.backgroundColor = [UIColor cloudsColor];
    
    _roomLbl.font = [UIFont fontWithName:@"Lato" size:17];
    _lockPasswordLbl.font = [UIFont fontWithName:@"Lato" size:17];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
