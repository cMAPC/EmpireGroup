//  Utilities.m
//  loginapp

#import "Utilities.h"

@implementation Utilities

 CAGradientLayer *gradientLayer;

+ (void)setGradientForImage:(UIImageView *)imageView
{
    gradientLayer.frame = imageView.bounds;
    gradientLayer = [CAGradientLayer layer];
   
    gradientLayer.colors = @[
                             (id)[[UIColor colorWithRed:(151/255.0) green:(157/255.0) blue:(183/255.0) alpha:0.9] CGColor],
                             (id)[[UIColor colorWithRed:(146/255.0) green:(159/255.0) blue:(182/255.0) alpha:0.9] CGColor],
                             (id)[[UIColor colorWithRed:(145/255.0) green:(170/255.0) blue:(194/255.0) alpha:0.9] CGColor]
                             ];
    [imageView.layer addSublayer:gradientLayer];
    
}

@end


