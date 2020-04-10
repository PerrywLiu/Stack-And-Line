//
//  PMLinkList.m
//  PMLinkList
//
//  Created by LiuPW on 2020/4/8.
//  Copyright © 2020 LiuPW. All rights reserved.
//

#import "PMLinkList.h"

#define ELEMENT_NOT_FOUND -1

@interface PMLinkList()
{
    NSUInteger _size;
    PMNode *first;
}
@end

@implementation PMLinkList

- (instancetype)init
{
    self = [super init];
    if (self) {
//        _size = 0;
//        first = [[PMNode alloc]init];
    }
    return self;
}

- (void)addValue:(id)value atIndex:(NSUInteger)index
{
    if (index == 0) {
        first = [[PMNode alloc] init];
        first.value = value;
        first.next = nil;
    }
    else
    {
        PMNode *node = [self nodeAtIndex:index-1];
        PMNode *newNode = [[PMNode alloc]initWithElement:value nextPtr:node.next];
        node.next = newNode;
    }
    _size++;
}

- (PMNode *)setValue:(id)value atIndex:(NSUInteger)index
{
    PMNode *node = [self nodeAtIndex:index];
    node.value = value;
    return node;
}

- (id)getNodeAtIndex:(NSUInteger)index
{
    return [[self nodeAtIndex:index] value];
}

- (NSUInteger)indexOfObject:(id)value
{
    if (value == nil) {
        PMNode *node = first;
        for (int i = 0; i < _size; i++) {
            if (node.value == nil) {
                return i;
            }
            node = node.next;
        }
    }
    else
    {
       PMNode *node = first;
        for (int i = 0; i < _size; i++) {
            if ([node.value isEqual:value]) {
                return i;
            }
            node = node.next;
        }
    }
    
    return ELEMENT_NOT_FOUND;
}

- (id)removeNodeAtIndex:(NSUInteger)index
{
    PMNode *node = first;
    if (index == 0) {
        first = first.next;
    }
    else
    {
        PMNode *preNode = [self nodeAtIndex:index-1];
        node = preNode.next;
        preNode.next = preNode.next.next;
    }
    _size--;
    return node.value;
}

- (id)objectAtIndex:(NSUInteger)index
{
    PMNode *node = [self nodeAtIndex:index];
    return node.value;
}

- (NSUInteger)countOfNode
{
    return _size;
}

- (void)print
{
    PMNode *node = first;
    for (int i = 0; i < _size; i++) {
        NSLog(@"%@",node.value);
        node = node.next;
    }
    printf("\n");
}

#pragma mark - private Method
- (BOOL)rangCheckIndex:(NSUInteger)index
{
    if (index < 0 || index > _size) {
        NSLog(@"索引 -- %ld --越界",index);
        return NO;
    }
    return YES;
}

/// 获取index位置对应的节点对象
/// @param index 索引值
- (PMNode *)nodeAtIndex:(NSUInteger)index
{
    if (![self rangCheckIndex:index]) {
        return nil;
    }
    
    PMNode *node = first;
    for (int i = 0; i < index; i++) {
        node = node.next;
    }
    
    return node;
}

@end
