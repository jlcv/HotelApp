//
//  HTLDetallesViewController.m
//  HotelApp
//
//  Created by jChavez17 on 4/8/14.
//  Copyright (c) 2014 jChavez17. All rights reserved.
//

#import "HTLDetallesViewController.h"
#import "UIColor+FlatUI.h"
#import "FUIButton.h"

@interface HTLDetallesViewController ()

@end

@implementation HTLDetallesViewController

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
    self.accountView.backgroundColor = [UIColor cloudsColor];
    self.accountTitleLbl.backgroundColor = [UIColor cloudsColor];
    
    _accountTitleLbl.font = [UIFont fontWithName:@"Lato-Bold" size:36];
    _labelCheckout.font = [UIFont fontWithName:@"Lato" size:17];
    _labelRoom.font = [UIFont fontWithName:@"Lato" size:17];
    _labelWifi.font = [UIFont fontWithName:@"Lato" size:17];
    
}

-(void)didReceiveMemoryWarning
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

- (void)getAccountInformation
{
    _labelRoom.Text = @"1406";
    _labelCheckout.Text = @"12 Apr 2014";
    _labelWifi.Text = @"Free";
}


@end
