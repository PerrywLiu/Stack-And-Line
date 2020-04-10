//
//  PMStack.m
//  PMStack
//
//  Created by LiuPW on 2020/4/10.
//  Copyright © 2020 LiuPW. All rights reserved.
//

#import "PMStack.h"
#import "PMLinkList.h"

@implementation PMStack
{
    PMLinkList *_linkList ;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _linkList = [[PMLinkList alloc]init];
    }
    return self;
}

- (void)pushElement:(id)element
{
    if (element == nil) {
        return;
    }
    
    [_linkList addValue:element atIndex:[_linkList countOfNode]];
}

- (id)popElement
{
    return [_linkList removeNodeAtIndex:[_linkList countOfNode]-1];
}

- (id)topElement
{
    return [_linkList getNodeAtIndex:[_linkList countOfNode]-1];
}

- (void)print
{
    [_linkList print];
}

@end
