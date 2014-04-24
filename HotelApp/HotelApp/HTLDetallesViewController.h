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

@property (strong, nonatomic) IBOutlet UILabel *labelRoom;
@property (strong, nonatomic) IBOutlet UILabel *labelCheckout;
@property (strong, nonatomic) IBOutlet UIView *accountView;
@property (strong, nonatomic) IBOutlet UILabel *labelWifi;
@end
