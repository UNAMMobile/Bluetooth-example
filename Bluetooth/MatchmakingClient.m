//
//  MatchmakingClient.m
//  Bluetooth
//
//  Created by Jose Luis Rodriguez on 11/04/13.
//  Copyright (c) 2013 Jose Luis Rodriguez. All rights reserved.
//

#import "MatchmakingClient.h"

@implementation MatchmakingClient
{
    NSMutableArray *_availableservers;

}
@synthesize session=_session;

-(void)startsearchingwithID:(NSString *)sessionID{
    _availableservers=[NSMutableArray arrayWithCapacity:10];
    _session=[[GKSession alloc]initWithSessionID:sessionID displayName:nil sessionMode:GKSessionModeClient];
    _session.delegate=self;
    _session.available=YES;


}


#pragma mark - GKSessionDelegate

- (void)session:(GKSession *)session peer:(NSString *)peerID didChangeState:(GKPeerConnectionState)state
{
#ifdef DEBUG
	NSLog(@"MatchmakingClient: peer %@ changed state %d", peerID, state);
#endif
}

- (void)session:(GKSession *)session didReceiveConnectionRequestFromPeer:(NSString *)peerID
{
#ifdef DEBUG
	NSLog(@"MatchmakingClient: connection request from peer %@", peerID);
#endif
}

- (void)session:(GKSession *)session connectionWithPeerFailed:(NSString *)peerID withError:(NSError *)error
{
#ifdef DEBUG
	NSLog(@"MatchmakingClient: connection with peer %@ failed %@", peerID, error);
#endif
}

- (void)session:(GKSession *)session didFailWithError:(NSError *)error
{
#ifdef DEBUG
	NSLog(@"MatchmakingClient: session failed %@", error);
#endif
}

@end
