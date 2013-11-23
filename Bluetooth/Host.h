//
//  Host.h
//  Bluetooth
//
//  Created by Jose Luis Rodriguez on 11/04/13.
//  Copyright (c) 2013 Jose Luis Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Host : NSObject<GKSessionDelegate>
@property (nonatomic,assign) int maxClients;
@property (nonatomic,strong,readonly) NSArray *conectados;
@property(nonatomic,strong,readonly)GKSession *session;

-(void)aceptarconexionesparalasesion:(NSString *)sessionID;


@end
