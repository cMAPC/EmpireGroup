//
//  Created by Mihaela Pacalau on 9/29/16.
//  Copyright © 2016 Marcel Spinu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle.h>
#import <AFNetworking.h>

@interface UserData : MTLModel <MTLJSONSerializing>

@property (strong, nonatomic) NSString* email;
@property (strong, nonatomic) NSError* error;
@property (strong, nonatomic) NSString* errormsg;
@property (strong, nonatomic) NSString* _hash;
@property (strong, nonatomic) NSString* password;
@property (strong, nonatomic) NSString* username;
- (void) methodTest;
-(void) postMethod;


@end

