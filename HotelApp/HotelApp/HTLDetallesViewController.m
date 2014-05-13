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
#import "HTLAppDelegate.h"

@interface HTLDetallesViewController ()


//@property HTLAppDelegate *app;


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
    
    //_app = (HTLAppDelegate *)[[UIApplication sharedApplication] delegate];
    
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


- (void)updateAccountInformation
{
    @try
    {
    HTLAppDelegate *appDel = (HTLAppDelegate *)[[UIApplication sharedApplication] delegate];
        NSLog(@"what");
        NSString *roomString = appDel.lblRoom;
        NSLog(@"%@",roomString);
        NSString *checkoutString = appDel.lblCheckout;
        NSLog(@"%@", checkoutString);
        NSString *wifiString = appDel.lblWifi;
        NSLog(@"%@", wifiString);
    _labelRoom.Text = roomString;
    _labelCheckout.Text = checkoutString;
    _labelWifi.Text = wifiString;
    }
    @catch (NSException *exc)
    {
        NSLog(@"%@", exc);
    }
    
}

- (void) viewDidAppear:(BOOL)animated
{
    [self updateAccountInformation];
    
    //NSLog(@"%@", roomValue);
    //_labelRoom.text = roomValue;
}

@synthesize roomValue;
@synthesize Wifi;
@synthesize checkoutValue;

@end
