//
//  MatchmakingClient.h
//  Bluetooth
//
//  Created by Jose Luis Rodriguez on 11/04/13.
//  Copyright (c) 2013 Jose Luis Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MatchmakingClient : NSObject<GKSessionDelegate>

@property(nonatomic,strong,readonly)NSArray *availableservers;
@property(nonatomic,strong,readonly)GKSession *session;

-(void)startsearchingwithID:(NSString *)sessionID;
@end
