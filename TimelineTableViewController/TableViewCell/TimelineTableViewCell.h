//
//  TimelineTableViewCell.h
//  loginapp
//
//  Created by Mihaela Pacalau on 9/21/16.
//  Copyright © 2016 Marcel Spinu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimelineTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *cellImage;
@property (weak, nonatomic) IBOutlet UILabel *cellText;

-(void) setNewImage:(UIImage*) newImage;

@end
