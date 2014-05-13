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
#import "FUIAlertView.h"
#import "HTLSecondViewController.h"
#import "HTLDetallesViewController.h"
#import "HTLCandadoViewController.h"
#import "HTLAppDelegate.h"


@interface HTLFirstViewController ()



@end

@implementation HTLFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[[[[self tabBarController] viewControllers] objectAtIndex:1] tabBarItem] setEnabled:false];
    [[[[[self tabBarController] viewControllers] objectAtIndex:2] tabBarItem] setEnabled:false];
    [[[[[self tabBarController] viewControllers] objectAtIndex:3] tabBarItem] setEnabled:false];
    
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
/*
- (BOOL)textFieldShouldReturn
{
    
    //Get device unique ID
    NSUUID *oNSUUID = [[UIDevice currentDevice] identifierForVendor];
    NSString *uniqueIdentifier;
    uniqueIdentifier = [oNSUUID UUIDString];
    
    NSMutableArray *myDictionaryObject;
    NSDictionary *dictionary;
    //NSString *title;
    //NSString *year;
    
    myDictionaryObject = [[NSMutableArray alloc] init];
    NSData *jsonSource = [NSData dataWithContentsOfURL:
                          [NSURL URLWithString:@"http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=c55u78wscsf8dwjekj5vstt5&q=TERMINAL"]];
    
    id jsonObjects = [NSJSONSerialization JSONObjectWithData: jsonSource options:NSJSONReadingMutableContainers error:nil];
    
    for (NSDictionary *dataDict in jsonObjects) {
        NSString *title_data = [dataDict objectForKey:@"title"];
        NSString *year_data = [dataDict objectForKey:@"year"];
        
        
        NSLog(@"TITLE: %@",title_data);
        NSLog(@"Year: %@", year_data);
        
        
        dictionary = [NSDictionary dictionaryWithObjectsAndKeys:title_data,
                      year_data, nil];
        [myDictionaryObject addObject:dictionary];
    }
    
    //Clear text field
    _password.text = @"";
    

    
    return TRUE;
}
 */

- (NSString *)fetchLoginInfo
{
    NSString *dataForLog = @"false";
    @try{
    //Get device unique ID
    NSUUID *oNSUUID = [[UIDevice currentDevice] identifierForVendor];
    NSString *uniqueIdentifier;
    uniqueIdentifier = [oNSUUID UUIDString];
    
    NSMutableArray *myDictionaryObject;
    //NSDictionary *dictionary;
    //NSString *title;
    //NSString *year;
        NSString *serviceUrl = @"http://jfeuchter-001-site1.smarterasp.net/service1.svc/Login/Jurgen/";
        NSString *fullUrl = [serviceUrl stringByAppendingString: _password.text];
    
    myDictionaryObject = [[NSMutableArray alloc] init];
    NSData *jsonSource = [NSData dataWithContentsOfURL:
                          [NSURL URLWithString:fullUrl]];
        
        //test url: http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=c55u78wscsf8dwjekj5vstt5&q=Toystory
        
        dataForLog = [[NSString alloc] initWithData: jsonSource encoding:NSASCIIStringEncoding];
        //NSLog(@"%@", dataForLog);
        
    //NSDictionary *jsonObjects = [NSJSONSerialization JSONObjectWithData: jsonSource options:NSJSONReadingMutableContainers error:nil];
    
  //  for (NSDictionary *dataDict in jsonObjects) {
        //NSString *language_data = [jsonObjects objectForKey:@"language"];
        //NSString *edition_data = [jsonObjects objectForKey:@"edition"];
        
        
        NSLog(@"Response: %@", dataForLog);
        //NSLog(@"Edition: %@", edition_data);
        
        
       // dictionary = [NSDictionary dictionaryWithObjectsAndKeys:language_data,
                    //  edition_data, nil];
        //[myDictionaryObject addObject:dictionary];
   // }
    
    //Clear text field
    _password.text = @"";
    } @catch(NSException *error)
    {
        NSLog(@"Error: %@",error);
    }
    
    
    return dataForLog;
}


- (IBAction)LoginButtonTouchUpInside:(id)sender
{
    NSString *loginResponse = [self fetchLoginInfo];
    
    NSString *loginMessageTitle = @"Login unsuccesful";
    NSString *loginMessage = @"Your password is incorrect!";
    
    if ([loginResponse isEqualToString:@"true"])
    {
        loginMessageTitle = @"Login Succesful!";
        loginMessage = @"You are logged in";
        
        [[[[[self tabBarController] viewControllers] objectAtIndex:1] tabBarItem] setEnabled:true];
        [[[[[self tabBarController] viewControllers] objectAtIndex:2] tabBarItem] setEnabled:true];
        [[[[[self tabBarController] viewControllers] objectAtIndex:3] tabBarItem] setEnabled:true];
        [self GetUserInfo];
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
    
    //
    
}

- (void) GetUserInfo
{
    [HTLSecondViewController updateRoomNumber];
    //[HTLCandadoViewController readyLock];
    [self getAccountInformation];
    [self getHotelInformation];
    
    
}

- (void) getAccountInformation
{
    @try{
    NSString *serviceUrl = @"http://jfeuchter-001-site1.smarterasp.net/service1.svc/proporcionarhorario/1";
    NSString *fullUrl = [serviceUrl stringByAppendingString: _password.text];

    NSData *jsonSource = [NSData dataWithContentsOfURL:
                          [NSURL URLWithString:fullUrl]];
        
        NSArray *array = [NSJSONSerialization JSONObjectWithData: jsonSource options:NSJSONReadingMutableContainers error:nil];
        NSDictionary *dict = [array objectAtIndex:0];
        
        HTLAppDelegate *app = (HTLAppDelegate *)[[UIApplication sharedApplication] delegate];
        
        app.lblWifi = (NSString *)[dict objectForKey:@"Wifi"];
        app.lblRoom = (NSString *)[[dict objectForKey:@"roomNum"] stringValue];
        app.lblCheckout = (NSString *)[dict objectForKey:@"checkout"];
        
        NSLog(@"%@", app.lblRoom);
        NSLog(@"%@", app.lblCheckout);
        NSLog(@"%@", app.lblRoom);
    }
    @catch (NSException *e)
    {
        NSLog(@"%@",e);
    }
}

- (void) getHotelInformation
{
    @try{
        NSString *serviceUrl = @"http://jfeuchter-001-site1.smarterasp.net/service1.svc/datosHotel/1";
        NSString *fullUrl = [serviceUrl stringByAppendingString: _password.text];
        
        NSData *jsonSource = [NSData dataWithContentsOfURL:
                              [NSURL URLWithString:fullUrl]];
        
        NSArray *array = [NSJSONSerialization JSONObjectWithData: jsonSource options:NSJSONReadingMutableContainers error:nil];
        NSDictionary *dict = [array objectAtIndex:0];
        
        HTLAppDelegate *app = (HTLAppDelegate *)[[UIApplication sharedApplication] delegate];
        
        app.lblNombre = (NSString *)[dict objectForKey:@"Nombre"];
        app.lblPool = (NSString *)[dict objectForKey:@"Pool"];
        app.lblRoomServ = (NSString *)[dict objectForKey:@"RoomServ"];
        NSLog(@"%@", app.lblRoomServ);
        app.lblFrontDesk = (NSString *)[dict objectForKey:@"FrontDesk"];
        app.lblIceM = (NSString *)[dict objectForKey:@"iceM"];
        app.lblVendingM = (NSString *)[dict objectForKey:@"vendingM"];
        app.lblWakeUpService = (NSString *) [dict objectForKey:@"WakeUpService"];
        
        NSLog(@"%@", app.lblNombre);
        NSLog(@"%@", app.lblPool);
        NSLog(@"%@", app.lblRoomServ);
        NSLog(@"%@", app.lblFrontDesk);
        NSLog(@"%@", app.lblIceM);
        NSLog(@"%@", app.lblVendingM);
        NSLog(@"%@", app.lblWakeUpService);
      
    }
    @catch (NSException *e)
    {
        NSLog(@"%@",e);
    }
    
}

- (void) viewDidAppear:(BOOL)animated
{
    FUIAlertView *alertView = [[FUIAlertView alloc] initWithTitle:@"Welcome!"
                                                          message:@"Your Unique ID is JURGEN"
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

@end
