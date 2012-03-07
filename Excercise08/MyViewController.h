//
//  MyViewController.h
//  Excercise08
//
//  Created by TPG on 3/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTableDataSource.h"
#import "MyTableDelegate.h"

@interface MyViewController : UIViewController


@property (nonatomic, retain) IBOutlet UITableView *myTableView;

@property (nonatomic, retain) MyTableDelegate *myTableDelegate;
@property (nonatomic, retain) MyTableDataSource *myTableDataSource;

@end
