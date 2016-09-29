//
//  Created by Mihaela Pacalau on 8/24/16.
//  Copyright © 2016 Marcel Spinu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController 

@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

- (IBAction)logInButton:(UIButton *)sender;
- (IBAction)registerButton:(UIButton *)sender;

@end

