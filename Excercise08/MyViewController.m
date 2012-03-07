//
//  MyViewController.m
//  Excercise08
//
//  Created by TPG on 3/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyViewController.h"

#import "MyTableDelegate.h"
#import "MyTableDataSource.h"

@implementation MyViewController
@synthesize myTableView = _myTableView;

@synthesize myTableDataSource = _myTableDataSource;
@synthesize myTableDelegate = _myTableDelegate;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    
        _myTableDelegate = [[MyTableDelegate alloc] init];
        _myTableDataSource = [[MyTableDataSource alloc] init];
        

        // Custom initialization
    }
    
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _myTableView.delegate = _myTableDelegate;
    _myTableView.dataSource = _myTableDataSource;

    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
