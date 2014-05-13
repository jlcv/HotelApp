//
//  HTLFirstViewController.h
//  HotelApp
//
//  Created by jChavez17 on 4/8/14.
//  Copyright (c) 2014 jChavez17. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FUIButton.h"
#import "UIColor+FlatUI.h"
#import "HTLSecondViewController.h"

@interface HTLFirstViewController : UIViewController <UITextFieldDelegate>


@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet FUIButton *loginEnterBtn;
@property (strong, nonatomic) IBOutlet UIView *loginView;
@property (strong, nonatomic) IBOutlet UILabel *loginTitleLbl;
@property (strong, nonatomic) IBOutlet UILabel *passwordLbl;
- (IBAction)LoginButtonTouchUpInside:(id)sender;

@end
