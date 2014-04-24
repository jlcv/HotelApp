//
//  HTLSecondViewController.m
//  HotelApp
//
//  Created by jChavez17 on 4/8/14.
//  Copyright (c) 2014 jChavez17. All rights reserved.
//

#import "HTLSecondViewController.h"
#import "UIColor+FlatUI.h"
#import "UIFont+FlatUI.h"

@interface HTLSecondViewController ()

@end

@implementation HTLSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.servicesView.backgroundColor = [UIColor cloudsColor];
    self.servicesTitleLbl.backgroundColor = [UIColor cloudsColor];
    
    _servicesTitleLbl.font = [UIFont fontWithName:@"Lato-Bold" size:36];
    
    _labelIFD.font = [UIFont fontWithName:@"Lato" size:17];
    _labelIM.font = [UIFont fontWithName:@"Lato" size:17];
    _labelIRS.font = [UIFont fontWithName:@"Lato" size:17];
    _labelP.font = [UIFont fontWithName:@"Lato" size:17];
    _labelVM.font = [UIFont fontWithName:@"Lato" size:17];
    _labelWUS.font = [UIFont fontWithName:@"Lato" size:17];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
