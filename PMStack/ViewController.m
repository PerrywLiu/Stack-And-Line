//
//  ViewController.m
//  PMStack
//
//  Created by LiuPW on 2020/4/10.
//  Copyright © 2020 LiuPW. All rights reserved.
//

#import "ViewController.h"
#import "PMStack.h"
#import "PMLine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self testStack];
    [self testLine];
}

- (void)testStack
{
    PMStack *stack = [[PMStack alloc]init];
    [stack pushElement:@"1"];
    [stack pushElement:@"2"];
    [stack pushElement:@"3"];
    [stack pushElement:@"4"];
    [stack pushElement:@"5"];
    [stack pushElement:@"6"];
    [stack pushElement:@"7"];
    [stack pushElement:@"8"];
    
    [stack print];
    
    [stack popElement];
    
    id topElement = [stack topElement];
    NSLog(@"topElement:%@",topElement);
    [stack print];
}


- (void)testLine
{
    PMLine *line = [[PMLine alloc]init];
    [line addElement:@"0"];
    [line addElement:@"1"];
    [line addElement:@"2"];
    [line addElement:@"3"];
    [line addElement:@"4"];
    [line addElement:@"5"];
    [line addElement:@"6"];
    [line addElement:@"7"];
    [line addElement:@"8"];
    [line addElement:@"9"];
    
    [line print];
    
    id headValue = [line removeHeadElement];
    NSLog(@"head:%@",headValue);
    
    [line print];
}

@end
