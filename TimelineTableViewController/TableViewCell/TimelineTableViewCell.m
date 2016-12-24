//
//  TimelineTableViewCell.m
//  loginapp
//
//  Created by Mihaela Pacalau on 9/21/16.
//  Copyright © 2016 Marcel Spinu. All rights reserved.
//

#import "TimelineTableViewCell.h"

@implementation TimelineTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void) setNewImage:(UIImage*) newImage {
    
    self.cellImage.image = newImage;
}

@end
