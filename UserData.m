//
//  Created by Mihaela Pacalau on 9/29/16.
//  Copyright © 2016 Marcel Spinu. All rights reserved.
//

#import "UserData.h"

//#define HOSTNAME @"https://api.github.com/"
#define HOSTNAME @"http://192.168.1.2:8080/socialapp/"

@implementation UserData

+(NSDictionary *)JSONKeyPathsByPropertyKey {

    return @{
             @"email" : @"email",
             @"error" : @"error",
             @"errormsg" : @"errormsg",
             @"hash" : @"_hash",
             @"password" : @"password",
             @"username" : @"username"
             };
    
    
}
- (void) methodTest {
    NSString* service = @"users/cMAPC/repos";
//    NSString *url = [NSString stringWithFormat:@"%@%@", HOSTNAME, service];
    
    NSURL *URL = [NSURL URLWithString:@"https://api.github.com/"];
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    [manager GET:URL.absoluteString parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
//        NSLog(@"JSON: %@", responseObject);
//    } failure:^(NSURLSessionTask *operation, NSError *error) {
//        NSLog(@"Error: %@", error);
//    }];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:[self buildURLForService:service] parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

- (NSString *)buildURLForService:(NSString *)service {
    
    NSString *url = [NSString stringWithFormat:@"%@%@", HOSTNAME, service];
    return [url stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
}

-(void) postMethod {

    
    
    NSDictionary* params = [[NSDictionary alloc] initWithObjectsAndKeys:
                                @"adwad", @"password",
                                @"jdwaio", @"username",
                                nil];

//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    
//    [manager POST:@"http://192.168.1.2:8080/socialapp/swagger-ui.html#!/user-controller/setUserUsingPOST" parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSLog(@"JSON: %@", responseObject);
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        NSLog(@"Error: %@", error);
//    }];
//
    NSString* service = @"registration";
    NSString *url = [NSString stringWithFormat:@"%@%@", HOSTNAME, service];
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    [manager POST:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"success!");
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error: %@", error);
    }];
}


@end
