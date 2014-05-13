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
#import "FUIAlertView.h"
#import "HTLAppDelegate.h"

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
    _roomNumberLbl.font = [UIFont fontWithName:@"Lato" size: 17];
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
- (IBAction)abrirCandado:(id)sender
{
    NSString *lockResponse = [self fetchLockResponse];
    
    NSString *loginMessageTitle = @"Login unsuccesful";
    NSString *loginMessage = @"Your password is incorrect!";
    
    if ([lockResponse isEqualToString:@"true"])
    {
        loginMessageTitle = @"Unlocked!";
        loginMessage = @"Your room is now open.";
        
     //   [self GetUserInfo];
    }
    
    FUIAlertView *alertView = [[FUIAlertView alloc] initWithTitle:loginMessageTitle
                                                          message:loginMessage
                                                         delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:nil, nil];
    alertView.titleLabel.textColor = [UIColor cloudsColor];
    alertView.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    alertView.messageLabel.textColor = [UIColor cloudsColor];
    alertView.messageLabel.font = [UIFont flatFontOfSize:14];
    alertView.backgroundOverlay.backgroundColor = [[UIColor cloudsColor] colorWithAlphaComponent:0.8];
    alertView.alertContainer.backgroundColor = [UIColor midnightBlueColor];
    alertView.defaultButtonColor = [UIColor cloudsColor];
    alertView.defaultButtonShadowColor = [UIColor asbestosColor];
    alertView.defaultButtonFont = [UIFont boldFlatFontOfSize:16];
    alertView.defaultButtonTitleColor = [UIColor asbestosColor];
    [alertView show];
}


- (NSString *) fetchLockResponse
{
    NSString *dataForLog;
@try
{
    
    NSString *serviceUrl = [NSString stringWithFormat:@"http://jfeuchter-001-site1.smarterasp.net/service1.svc/AbrirPuerta/?idlock=%@&idusuario=1",_passwordTxt.text];

    NSData *jsonSource = [NSData dataWithContentsOfURL:
                          [NSURL URLWithString:serviceUrl]];
    
    dataForLog = [[NSString alloc] initWithData: jsonSource encoding:NSASCIIStringEncoding];
    
    NSLog(@"Response: %@", dataForLog);
    
} @catch(NSException *error)
{
    NSLog(@"Error: %@",error);
}


return dataForLog;
}

- (void) viewDidAppear:(BOOL)animated
{
    HTLAppDelegate *appDel = (HTLAppDelegate *)[[UIApplication sharedApplication] delegate];
    _roomNumberLbl.text = appDel.lblRoom;
}

@end
