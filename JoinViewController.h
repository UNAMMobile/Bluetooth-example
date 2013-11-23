//
//  JoinViewController.h
//  Bluetooth
//
//  Created by Jose Luis Rodriguez on 11/04/13.
//  Copyright (c) 2013 Jose Luis Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MatchmakingClient.h"
@class JoinViewController;

@protocol JoinViewControllerDelegate <NSObject>

- (void)joinViewControllerDidCancel:(JoinViewController *)controller;

@end


@interface JoinViewController : UIViewController<UITableViewDataSource,UITableViewDelegate, UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UIView *Wait;
@property (nonatomic, weak) id <JoinViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *Nombre;
@property (weak, nonatomic) IBOutlet UITableView *Tabla;


- (IBAction)Closewait:(UIButton *)sender;

- (IBAction)Regresa:(UIButton *)sender;

- (IBAction)Start:(UIButton *)sender;
@end
