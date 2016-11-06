//
//  Contact.m
//  TableView_test
//
//  Created by 鹏 刘 on 2016/11/4.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (Contact *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber
{
    if (self = [super init]) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.phoneNumber = phoneNumber;
    }
    return self;
}

+ (Contact *)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andPhoneNumber:(NSString *)phoneNumber
{
    Contact *contact = [[Contact alloc] initWithFirstName:firstName andLastName:lastName andPhoneNumber:phoneNumber];
    return contact;
}

- (NSString *)getName
{
    return [NSString stringWithFormat:@"%@,%@",self.firstName,self.lastName];
}

@end
