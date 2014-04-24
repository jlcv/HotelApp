//
//  HTLFirstViewController.m
//  HotelApp
//
//  Created by jChavez17 on 4/8/14.
//  Copyright (c) 2014 jChavez17. All rights reserved.
//

#import "HTLFirstViewController.h"
#import "JSONKit.h"
#import "UIColor+FlatUI.h"
#import "FUIButton.h"
#import "UIFont+FlatUI.h"


@interface HTLFirstViewController ()
{
    
}

@end

@implementation HTLFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _loginEnterBtn.buttonColor = [UIColor peterRiverColor];
    _loginEnterBtn.shadowColor = [UIColor belizeHoleColor];
    _loginEnterBtn.shadowHeight = 3.0f;
    _loginEnterBtn.cornerRadius = 6.0f;
    _loginEnterBtn.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    [_loginEnterBtn setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [_loginEnterBtn setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    self.loginView.backgroundColor = [UIColor cloudsColor];
    self.loginTitleLbl.backgroundColor = [UIColor cloudsColor];
    
    
    [[UITabBar appearance] setTintColor:[UIColor belizeHoleColor]];
    [[UITabBar appearance] setBarTintColor:[UIColor cloudsColor]];
    
    _passwordLbl.font = [UIFont fontWithName:@"Lato" size:17];
    _loginTitleLbl.font = [UIFont fontWithName:@"Lato-Bold" size: 36];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"Want to redeem: %@", textField.text);
    
    //Get device unique ID
    NSUUID *oNSUUID = [[UIDevice currentDevice] identifierForVendor];
    NSString *uniqueIdentifier;
    uniqueIdentifier = [oNSUUID UUIDString];
    
    
    //Start request
    NSString *code = _password.text;
    NSURL *url = [NSURL URLWithString:@"http:google.com"]; ///IMPORTANT STUFF
   
    
    //Hide keyword
    [textField resignFirstResponder];
    
    //Clear text field
    _password.text = @"";
    
    return TRUE;
}

- (BOOL)fetchLoginInfo:(UITextField *)textField
{
    return true;
}



@end
