//
//  ViewController.h
//  IPadUITableViewBug
//
//  Created by alicia carvalho on 2015-01-27.
//  Copyright (c) 2015 printandpixel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UIPickerViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *table;

@end

