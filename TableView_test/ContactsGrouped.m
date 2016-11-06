//
//  ContactsGrouped.m
//  TableView_test
//
//  Created by 鹏 刘 on 2016/11/4.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "ContactsGrouped.h"

@implementation ContactsGrouped

- (ContactsGrouped *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts
{
    if (self = [super init]) {
        self.name = name;
        self.detail = detail;
        self.contacts = contacts;
    }
    return self;
}

+ (ContactsGrouped *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts
{
    ContactsGrouped *group = [[ContactsGrouped alloc] initWithName:name andDetail:detail andContacts:contacts];
    return group;
}

@end
