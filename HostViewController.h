//
//  HostViewController.h
//  Bluetooth
//
//  Created by Jose Luis Rodriguez on 11/04/13.
//  Copyright (c) 2013 Jose Luis Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Host.h"

@interface HostViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *Campotexto;
@property (weak, nonatomic) IBOutlet UITableView *Tablaclientes;


- (IBAction)Botonstart:(UIButton *)sender;
- (IBAction)Botonregresa:(UIButton *)sender;

@end
