//
//  CZWAddToDoItemViewController.m
//  ToDoList
//
//  Created by Chen on 14-1-4.
//  Copyright (c) 2014年 iostutorial. All rights reserved.
//

#import "CZWAddToDoItemViewController.h"

@interface CZWAddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;


@end

@implementation CZWAddToDoItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//press the return key and let the keyboard disappear
-(BOOL) textFieldShouldReturn:(UITextField *)theTextField{
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.doneButton) {
        return;
    }
    if (self.textField.text.length>0) {
        self.toDoItem = [[CZWTodoItem alloc] init];
        self.toDoItem.itemName=self.textField.text;
        self.toDoItem.completed=NO;
    }
}
@end
