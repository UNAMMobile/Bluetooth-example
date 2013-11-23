//
//  Host.m
//  Bluetooth
//
//  Created by Jose Luis Rodriguez on 11/04/13.
//  Copyright (c) 2013 Jose Luis Rodriguez. All rights reserved.
//

#import "Host.h"

@implementation Host
{NSMutableArray *_conectados;}
@synthesize maxClients=_maxClients;
@synthesize session=_session;

-(void)aceptarconexionesparalasesion:(NSString *)sessionID{
    _conectados=[NSMutableArray arrayWithCapacity:self.maxClients];
    
    _session=[[GKSession alloc]initWithSessionID:sessionID displayName:nil sessionMode:GKSessionModeServer];
    _session.delegate=self;
    _session.available=YES;
}

-(NSArray *)clientesconectados{

    return _conectados;
}

#pragma mark - GKSessionDelegate

-(void)session:(GKSession *)session peer:(NSString *)peerID didChangeState:(GKPeerConnectionState)state{
    #ifdef DEBUG
    NSLog(@"Matchmaking server: peer %@ changed state: %d", peerID,state);
    #endif

}

-(void)session:(GKSession *)session didReceiveConnectionRequestFromPeer:(NSString *)peerID{
    #ifdef DEBUG
    NSLog(@"MatchmakingServer: connection request from peer %@", peerID);
    #endif
}

-(void)session:(GKSession *)session connectionWithPeerFailed:(NSString *)peerID withError:(NSError *)error{
    #ifdef DEBUG
	NSLog(@"MatchmakingServer: connection with peer %@ failed %@", peerID, error);
    #endif


}

-(void)session:(GKSession *)session didFailWithError:(NSError *)error{
    #ifdef DEBUG
	NSLog(@"MatchmakingServer: session failed %@", error);
    #endif
}

@end
