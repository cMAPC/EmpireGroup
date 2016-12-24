//
//  TimlineTableViewController.m
//  loginapp
//
//  Created by Mihaela Pacalau on 9/23/16.
//  Copyright © 2016 Marcel Spinu. All rights reserved.
//

#import "TimlineTableViewController.h"
#import "TimelineTableViewCellData.h"
#import "TimelineTableViewCell.h"

@interface TimlineTableViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray* listOfElements;

@end

NSString* indentifier = @"cell";

@implementation TimlineTableViewController

#pragma mark - Navigation Bar

- (void)viewWillAppear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
}









- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTableWithCustomCell];
    [self loadDataForTableView];
    
}

-(void)initTableWithCustomCell {
    
    [self.tableView registerNib:[UINib nibWithNibName:@"TimelineTableViewCell" bundle:nil] forCellReuseIdentifier:indentifier];
}

-(void)loadDataForTableView {
    
    TimelineTableViewCellData* cellData1 = [TimelineTableViewCellData new];
    cellData1.notificationText = @"This is first cell textThis is second cell text";
    cellData1.notificationImage = [UIImage imageNamed:@"image1.jpg"];
    
    TimelineTableViewCellData* cellData2 = [TimelineTableViewCellData new];
    cellData2.notificationText = @"This is second cell textThis is second cell textThis is second cell textThis is second cell textThis is second cell text";
    cellData2.notificationImage = [UIImage imageNamed:@"image4.jpg"];
    
    TimelineTableViewCellData* cellData3 = [TimelineTableViewCellData new];
    cellData3.notificationText = @"If the linebreakmode doesnt work foryou, another option is to actually calculate the length your string is going to take and if it is going to be longer than the label size, add yourself.If the linebreakmode doesnt work foryou, another option is to actually calculate the length your string is going to take and if it is going to be longer than the label size, add yourself.";
    cellData3.notificationImage = [UIImage imageNamed:@"image2.jpg"];
    
    self.listOfElements = [NSArray arrayWithObjects:cellData1, cellData2, cellData3, nil];
    //    [self.tableView reloadData];
}


#pragma mark - UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSLog(@"numberOfRowsInSection");
    return [self.listOfElements count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TimelineTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
    [self configureCell:cell forRowAtIndexPath:indexPath];
    
    NSLog(@"cellForRowAtIndexPath");
//    cell.cellButtonAction.tag = indexPath.row;
//    [cell.cellButtonAction addTarget:self action:@selector(mapAction:) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
    
    //    [self configureCell:self.prototypeCell forRowAtIndexPath:indexPath];
    //
    //    return self.prototypeCell;
}

#pragma mark - UITableViewDelegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    [self configureCell:self.prototypeCell forRowAtIndexPath:indexPath];
    NSLog(@"%@", self.prototypeCell.cellText.text);
    [self.prototypeCell layoutIfNeeded];
    
    CGSize size = [self.prototypeCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    
    CGFloat labelSize = [self getHeightForText:self.prototypeCell.cellText.text withFont:self.prototypeCell.cellText.font andWidth:self.prototypeCell.cellText.frame.size.width];
    
    //    UIImage* img = [self imageWithImage:self.prototypeCell.cellImage.image scaledToWidth:self.prototypeCell.cellImage.image.size.width];
    //    CGSize sizee = self.prototypeCell.cellImage.image.size;
    //    CGRect rect = CGRectMake(0, 0, img.size.width, img.size.height);
    //    self.prototypeCell.cellImage.frame = rect;
    //    NSLog(@"%f", img.size.height);
    
    //    CGFloat ratio = self.prototypeCell.cellImage.image.size.width / self.prototypeCell.cellImage.image.size.height;
    //    CGSize actualSize;
    //    actualSize.width = self.prototypeCell.cellImage.frame.size.width;
    //    actualSize.height = actualSize.width*ratio;
    //
    //    NSLog(@"%f", actualSize.height);
    //
    //    UIGraphicsBeginImageContextWithOptions(CGSizeMake(actualSize.width, actualSize.height), NO, 0.0);
    //    [self.prototypeCell.cellImage.image drawInRect:CGRectMake(0, 0, actualSize.width, actualSize.height)];
    //    UIImage *resizedImage = UIGraphicsGetImageFromCurrentImageContext();
    //    UIGraphicsEndImageContext();
    //    self.prototypeCell.cellImage.image= resizedImage;
    
    
    
    
    //    CGRect frame = self.prototypeCell.cellImage.frame;
    //    frame.size = actualSize;
    //    CGRect newFrame = CGRectMake(self.prototypeCell.cellImage.frame.size.width, 0, actualSize.width, actualSize.height);
    //    [self.prototypeCell remakeFrame:newFrame];
    //
    //    self.prototypeCell.cellImage.image = [self setProfileImage:self.prototypeCell.cellImage.image onImageView:self.prototypeCell.cellImage];
    //
    //    [self.prototypeCell layoutIfNeeded];
    UIImage* image = self.prototypeCell.cellImage.image;
    CGRect imageViewFrame = self.prototypeCell.cellImage.frame;
    //    NSLog(@"%f", imageViewFrame.size.width);
    
    UIImage* testImage = [self imageWithImage:image scaledToWidth:imageViewFrame.size.width];
    //    [self.prototypeCell.cellImage setImage:testImage];
    //    NSLog(@"Width = %f Height = %f", testImage.size.width, testImage.size.height);
    
    //    return  self.prototypeCell.cellImage.image.size.height;
    
    //    if (testImage.size.height + labelSize + 20 > 450) {
    //        return 400;
    //    }
    NSLog(@"heightForRowAtIndexPath");
    return testImage.size.height + labelSize + 60;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(TimelineTableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    UIImage* image = cell.cellImage.image;
    CGRect imageViewFrame = cell.cellImage.frame;
    //    NSLog(@"%f", imageViewFrame.size.width);
    
    UIImage* testImage = [self imageWithImage:image scaledToWidth:imageViewFrame.size.width];
    [cell.cellImage setImage:testImage];
    //    NSLog(@"Width = %f Height = %f", testImage.size.width, testImage.size.height);
    NSLog(@"willDisplayCell");
}


- (void)configureCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    if ([cell isKindOfClass:[TableViewCellController class]])
    //    {
    TimelineTableViewCell *textCell = (TimelineTableViewCell *)cell;
    textCell.cellText.text = [[self.listOfElements objectAtIndex:indexPath.row]notificationText];
    textCell.cellText.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    
    
    textCell.cellImage.image = [[self.listOfElements objectAtIndex:indexPath.row]notificationImage];
    
    //    }
}

- (TimelineTableViewCell *)prototypeCell
{
    if (!_prototypeCell)
    {
        _prototypeCell = [self.tableView dequeueReusableCellWithIdentifier:indentifier];
    }
    return _prototypeCell;
}




- (void) mapAction:(UIButton*) sender {
    
    NSIndexPath *myIP = [NSIndexPath indexPathForRow:sender.tag inSection:0];
    TimelineTableViewCell *cell = (TimelineTableViewCell*)[self.tableView cellForRowAtIndexPath:myIP];
    NSLog(@"%@", cell.cellText.text);
}



#pragma mark - Utilities

-(float) getHeightForText:(NSString*) text withFont:(UIFont*) font andWidth:(float) width{
    CGSize constraint = CGSizeMake(width , 20000.0f);
    CGSize title_size;
    float totalHeight;
    
    SEL selector = @selector(boundingRectWithSize:options:attributes:context:);
    if ([text respondsToSelector:selector]) {
        title_size = [text boundingRectWithSize:constraint
                                        options:NSStringDrawingUsesLineFragmentOrigin
                                     attributes:@{ NSFontAttributeName : font }
                                        context:nil].size;
        
        totalHeight = ceil(title_size.height);
    } else {
        title_size = [text sizeWithFont:font
                      constrainedToSize:constraint
                          lineBreakMode:NSLineBreakByWordWrapping];
        totalHeight = title_size.height ;
    }
    
    CGFloat height = MAX(totalHeight, 40.0f);
    return height;
}


-(UIImage*)imageWithImage: (UIImage*) sourceImage scaledToWidth: (float) i_width
{
    float oldWidth = sourceImage.size.width;
    float scaleFactor = i_width / oldWidth;
    
    float newHeight = sourceImage.size.height * scaleFactor;
    float newWidth = oldWidth * scaleFactor;
    
    UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
    [sourceImage drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}



- (UIImage*)setProfileImage:(UIImage *)imageToResize onImageView:(UIImageView *)imageView
{
    CGFloat width = imageToResize.size.width;
    CGFloat height = imageToResize.size.height;
    float scaleFactor;
    //    if(width > height)
    //    {
    scaleFactor = width / height;
    //    }
    //    else
    //    {
    //        scaleFactor = imageView.frame.size.width / width;
    //    }
    
    CGSize size = [imageView sizeThatFits:imageView.frame.size];
    
    CGSize actualSize;
    actualSize.height = imageView.frame.size.height;
    actualSize.width = size.width;
    
    CGRect frame = imageView.frame;
    frame.size = actualSize;
    [imageView setFrame:frame];
    
    ////////////
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(width * scaleFactor, height * scaleFactor), NO, 0.0);
    [imageToResize drawInRect:CGRectMake(0, 0, width * scaleFactor, height * scaleFactor)];
    UIImage *resizedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return resizedImage;
}
















    
    
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

@end
