//
//  XYZAddToDoItemViewController.m
//  ToDoList
//
//  Created by Michael Ho on 12/11/2013.
//  Copyright (c) 2013 Michael Ho. All rights reserved.
//

#import "XYZAddToDoItemViewController.h"

@interface XYZAddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@end

@implementation XYZAddToDoItemViewController

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

// Method before segue unwind to store everyting in a toDoItem object
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // If not the DONE button pressed, but the cancel button
    if (sender != self.doneButton) return;
    
    // Check the textfield and add to array
    if (self.textField.text.length > 0){
        self.toDoItem = [[XYZToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
}

@end
