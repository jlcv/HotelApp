//
//  HTLCandadoViewController.h
//  HotelApp
//
//  Created by jChavez17 on 4/8/14.
//  Copyright (c) 2014 jChavez17. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FUIButton.h"
#import "UIColor+FlatUI.h"
#import "UIFont+FlatUI.h"

@interface HTLCandadoViewController : UIViewController
@property (strong, nonatomic) IBOutlet FUIButton *lockEnterBtn;
@property (strong, nonatomic) IBOutlet UIView *lockView;
@property (strong, nonatomic) IBOutlet UILabel *lockTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *roomLbl;
@property (strong, nonatomic) IBOutlet UILabel *lockPasswordLbl;

@end
