//
//  ViewController.m
//  IPadUITableViewBug
//
//  Created by alicia carvalho on 2015-01-27.
//  Copyright (c) 2015 printandpixel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.table.delegate = self;
    self.table.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"MyReuseIdentifier";
    
    UITableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [UITableViewCell new];
        UILabel *labelOne = [[UILabel alloc] initWithFrame:CGRectMake(0,30,200,40)];
        [labelOne setCenter:CGPointMake(self.view.center.x, labelOne.center.y)];
//        [labelOne setCenter:CGPointMake(cell.center.x, labelOne.center.y)];
        [labelOne setBackgroundColor:[UIColor whiteColor]];
        [labelOne setText:@"Label 1"];
        [labelOne setAutoresizingMask:(UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin)];
        [cell.contentView addSubview:labelOne];
        
        UILabel *labelTwo = [[UILabel alloc] initWithFrame:CGRectMake(0,80,200,40)];
        [labelTwo setCenter:CGPointMake(self.view.center.x, labelTwo.center.y)];
//        [labelTwo setCenter:CGPointMake(cell.center.x, labelTwo.center.y)];
        [labelTwo setBackgroundColor:[UIColor whiteColor]];
        [labelTwo setText:@"Label 2"];
        [labelTwo setAutoresizingMask:(UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin)];
        [cell.contentView addSubview:labelTwo];
        
        UILabel *labelThree = [[UILabel alloc]initWithFrame:CGRectMake(0,130,200,40)];
        [labelThree setCenter:CGPointMake(self.view.center.x, labelThree.center.y)];
//        [labelThree setCenter:CGPointMake(cell.center.x, labelThree.center.y)];
        [labelThree setBackgroundColor:[UIColor whiteColor]];
        [labelThree setText:@"Label 3"];
        [labelThree setAutoresizingMask:(UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin)];
        [cell.contentView addSubview:labelThree];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor grayColor];
    
    return cell;
}


@end
