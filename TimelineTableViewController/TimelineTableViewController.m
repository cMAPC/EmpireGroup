//
//  TimelineTableViewController.m
//  loginapp
//
//  Created by Mihaela Pacalau on 9/21/16.
//  Copyright © 2016 Marcel Spinu. All rights reserved.
//

#import "TimelineTableViewController.h"
#import "TimelineTableViewCell.h"
#import "TestViewController.h"

@interface TimelineTableViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *timelineTableView;
@property (weak, nonatomic) IBOutlet UINavigationController* navContrl;
@end

@implementation TimelineTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTableWithCustomCell];

}


- (void) initTableWithCustomCell {
    
    [self.timelineTableView registerNib:[UINib nibWithNibName:@"TimelineTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TimelineTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        NSLog(@"not cell");
    } else {
        NSLog(@"is resused");
    }
    
    cell.textLabel.text= @"marcel";

    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 200;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    TestViewController* newView = [self.storyboard instantiateViewControllerWithIdentifier:@"TestViewController"];
//aaaaa stai, da iaca dapustim ca sa fac push apoi deam fac ebbede sa am navigation controller sap deam in loc de present fac self.navigationController push ..da. ?daokms
//    [self.navigationController presentViewController:newView animated:YES completion:nil];
    //inca intrebari ? vrode nu , ms
    
    
    
//    TestViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"TestViewController"];
//    [self presentViewController:vc animated:YES completion:^{
//        NSLog(@"mam presentuit");
//    }];
    
    TestViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"TestViewController"];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
