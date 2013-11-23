//
//  JoinViewController.m
//  Bluetooth
//
//  Created by Jose Luis Rodriguez on 11/04/13.
//  Copyright (c) 2013 Jose Luis Rodriguez. All rights reserved.
//

#import "JoinViewController.h"

@interface JoinViewController ()

@end

@implementation JoinViewController
{
    MatchmakingClient *_matchClient;

}

-(void)viewDidLoad{
    self.Nombre.delegate=self;
    self.Tabla.delegate=self;
    self.Wait.hidden=YES;
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self.Nombre action:@selector(resignFirstResponder)];
	gestureRecognizer.cancelsTouchesInView = NO;
	[self.view addGestureRecognizer:gestureRecognizer];


}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    if(_matchClient==nil){
        _matchClient=[[MatchmakingClient alloc]init];
        [_matchClient startsearchingwithID:SESSION_ID];
        self.Nombre.placeholder=_matchClient.session.displayName;
        [self.Tabla reloadData];
    
    }


}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return NO;


}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    return nil;

}

- (IBAction)Closewait:(UIButton *)sender {
    
}



- (IBAction)Regresa:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)Start:(UIButton *)sender {
    
    
    
}
@end
