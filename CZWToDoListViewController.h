//
//  CZWToDoListViewController.h
//  ToDoList
//
//  Created by Chen on 14-1-4.
//  Copyright (c) 2014年 iostutorial. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CZWTodoItem.h"
#import "CZWAddToDoItemViewController.h"

@interface CZWToDoListViewController : UITableViewController
//- (IBAction)ToDoList:(UIStoryboardSegue *)sender;

@property NSMutableArray *toDoItems;

@end
