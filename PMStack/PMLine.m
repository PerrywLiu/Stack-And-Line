//
//  PMLine.m
//  PMStack
//
//  Created by LiuPW on 2020/4/10.
//  Copyright © 2020 LiuPW. All rights reserved.
//

#import "PMLine.h"
#import "PMTwoWayLinkList.h"
@interface PMLine()
{
    PMTwoWayLinkList *_twoWayList;
}
@end

@implementation PMLine

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

- (void)print
{
    [_twoWayList print];
}

@end
