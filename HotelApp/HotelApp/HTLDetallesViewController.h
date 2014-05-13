//
//  HTLDetallesViewController.h
//  HotelApp
//
//  Created by jChavez17 on 4/8/14.
//  Copyright (c) 2014 jChavez17. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HTLDetallesViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *accountTitleLbl;

@property (weak, nonatomic) IBOutlet UILabel *labelRoom;
@property (weak, nonatomic) IBOutlet UILabel *labelCheckout;
@property (retain, nonatomic) IBOutlet UIView *accountView;
@property (weak, nonatomic) IBOutlet UILabel *labelWifi;

@property (retain, nonatomic) NSString *roomValue;
@property (retain, nonatomic) NSString *checkoutValue;
@property (retain, nonatomic) NSString *Wifi;

@end
