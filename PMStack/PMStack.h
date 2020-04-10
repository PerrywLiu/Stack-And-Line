//
//  PMStack.h
//  PMStack
//
//  Created by LiuPW on 2020/4/10.
//  Copyright © 2020 LiuPW. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PMStack : NSObject

- (void)pushElement:(id)element;

- (id)popElement;

- (id)topElement;

- (void)print;

@end

NS_ASSUME_NONNULL_END
