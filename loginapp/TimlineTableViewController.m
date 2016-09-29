//
//  TimlineTableViewController.m
//  loginapp
//
//  Created by Mihaela Pacalau on 9/23/16.
//  Copyright © 2016 Marcel Spinu. All rights reserved.
//

#import "TimlineTableViewController.h"
#import "TimelineTableViewCell.h"
#import "TimelineCellViewController.h"
#import "MapViewController.h"

@interface TimlineTableViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *timelineTableView;

@end

@implementation TimlineTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTableWithCustomCell];
    
//    self.timelineTableView.estimatedRowHeight = 80;//the estimatedRowHeight but if is more this autoincremented with autolayout
//    self.timelineTableView.rowHeight = UITableViewAutomaticDimension;
//    [self.timelineTableView setNeedsLayout];
//    [self.timelineTableView layoutIfNeeded];
//    self.timelineTableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0) ;
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
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 200;
//    self.timelineTableView.estimatedRowHeight = 500.0; // put max you expect here.
//    self.timelineTableView.rowHeight = UITableViewAutomaticDimension;
//    return tableView.estimatedRowHeight;
    
    
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
    
//    TimelineCellViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"TimelineCellViewControllerID"];
//    [self.navigationController pushViewController:vc animated:YES];
    
//    MapViewController* mapView = [self.storyboard instantiateViewControllerWithIdentifier:@"MapViewController"];
//    CLLocationCoordinate2D testCoordinate = CLLocationCoordinate2DMake(37.332314, -122.055596);
//    [mapView setTouchMapCoordinate:testCoordinate];
//    [self.navigationController pushViewController:mapView animated:YES];
//
    
//    UITabBarController* tabController = self.storyboard.instantiateViewControllerWithIdentifier:@"root" as! UINavigationController;
//    let playVC = storyboard.instantiateViewControllerWithIdentifier("playVC");
//    self.window?.rootViewController?.presentViewController(rootVC, animated: true, completion: { () -> Void in
//        rootVC.pushViewController(playVC, animated: true)
//    })
//     AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
//    
//    UITabBarController* tabController = [self.storyboard instantiateViewControllerWithIdentifier:@"UITabBarController"];
//    
//    MapViewController* mapView = [self.storyboard instantiateViewControllerWithIdentifier:@"MapViewController"];
//    
//    [appDelegate.window.rootViewController presentViewController:tabController animated:YES completion:^{
//        [self.navigationController pushViewController:mapView animated:YES];
//    }];
    
//    MapViewController* mapView = [self.storyboard instantiateViewControllerWithIdentifier:@"MapViewController"];
//    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:mapView];
//    [self presentViewController:navController animated:YES completion:^{
//                NSLog(@"mam presentuit");
//            }];
#pragma mark - Corect
//    CLLocationCoordinate2D testCoordinate = CLLocationCoordinate2DMake(37.332314, -122.055596);
//    
//    UITabBarController* tabController = [self.storyboard instantiateViewControllerWithIdentifier:@"UITabBarControllerID"];
//    tabController.selectedViewController = [tabController.viewControllers objectAtIndex:0];
//    MapViewController* mapView = [tabController.viewControllers objectAtIndex:0];
//    [mapView setTouchMapCoordinate:testCoordinate];
//    [mapView testMethod];
//    [mapView buildPathAction:nil];
////        [self.navigationController pushViewController:tabController animated:YES];
//    [self presentViewController:tabController animated:YES completion:nil];
    
}


@end
