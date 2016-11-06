//
//  ContactsGrouped.h
//  TableView_test
//
//  Created by 鹏 刘 on 2016/11/4.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContactsGrouped : NSObject
@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *detail;
@property (nonatomic,strong) NSMutableArray *contacts;

- (ContactsGrouped *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts;
+ (ContactsGrouped *)initWithName:(NSString *)name andDetail:(NSString *)detail andContacts:(NSMutableArray *)contacts;



@end
