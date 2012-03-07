//
//  MyTableDelegate.m
//  Excercise08
//
//  Created by TPG on 3/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyTableDelegate.h"
#import "ChildUIViewController.h"
@implementation MyTableDelegate





#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    
    ChildUIViewController *detailViewController = [[ChildUIViewController alloc] initWithNibName:@"ChildUIViewController" bundle:nil];
    // ...
    // Pass the selected object to the new view controller.
    detailViewController.title = [NSString stringWithFormat:
                                  @"Child View #%i", indexPath.row];
    
 //   [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
    
}

@end
