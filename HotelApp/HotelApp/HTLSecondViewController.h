//
//  HTLSecondViewController.h
//  HotelApp
//
//  Created by jChavez17 on 4/8/14.
//  Copyright (c) 2014 jChavez17. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTLFirstViewController.h"

@interface HTLSecondViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *servicesTitleLbl;

@property (strong, nonatomic) IBOutlet UILabel *labelIRS;
@property (strong, nonatomic) IBOutlet UILabel *labelIFD;
@property (strong, nonatomic) IBOutlet UILabel *labelWUS;
@property (strong, nonatomic) IBOutlet UILabel *labelP;
@property (strong, nonatomic) IBOutlet UILabel *labelVM;
@property (strong, nonatomic) IBOutlet UILabel *labelIM;
@property (strong, nonatomic) IBOutlet UIView *servicesView;


+(void) updateRoomNumber;

@end
