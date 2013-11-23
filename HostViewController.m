//
//  HostViewController.m
//  Bluetooth
//
//  Created by Jose Luis Rodriguez on 11/04/13.
//  Copyright (c) 2013 Jose Luis Rodriguez. All rights reserved.
//

#import "HostViewController.h"

@interface HostViewController ()

@end

@implementation HostViewController
{
    Host *_host;
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    if(_host==nil){
        _host=[[Host alloc]init];
        _host.maxClients=1;
        [_host aceptarconexionesparalasesion:SESSION_ID];
        self.Campotexto.placeholder=_host.session.displayName;
        [self.Tablaclientes reloadData];
    }
    
}

-(void)viewDidLoad{
    _Tablaclientes.delegate=self;
    _Tablaclientes.dataSource=self;
    _Campotexto.delegate=self;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    return nil;

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.Campotexto resignFirstResponder];
    return YES;

}

- (IBAction)Botonstart:(UIButton *)sender {
}

- (IBAction)Botonregresa:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
