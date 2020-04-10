//
//  PMLine.m
//  PMStack
//
//  Created by LiuPW on 2020/4/10.
//  Copyright © 2020 LiuPW. All rights reserved.
//

#import "PMQUEUE.h"
#import "PMTwoWayLinkList.h"
@interface PMQUEUE()
{
    PMTwoWayLinkList *_twoWayList;
}
@end

@implementation PMQUEUE

- (instancetype)init
{
    self = [super init];
    if (self) {
        _twoWayList = [[PMTwoWayLinkList alloc]init];
    }
    return self;
}

- (void)addElement:(id)element
{
    [_twoWayList addValue:element atIndex:[_twoWayList countOfNode]];
}

- (id)removeHeadElement
{
    if ([_twoWayList countOfNode] <= 0) {
        return nil;
    }
    
    return [_twoWayList removeNodeAtIndex:0];
}

- (id)frontElement
{
    return [_twoWayList getNodeAtIndex:0];
}

- (void)clear
{
    [_twoWayList clear];
}

- (BOOL)isEmpty
{
    return [_twoWayList countOfNode] == 0;
}

- (void)print
{
    [_twoWayList print];
}

@end
