//
//  CZWTodoItem.h
//  ToDoList
//
//  Created by Chen on 14-1-6.
//  Copyright (c) 2014年 iostutorial. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZWTodoItem : NSObject
@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
