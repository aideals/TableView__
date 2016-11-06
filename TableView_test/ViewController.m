//
//  ViewController.m
//  TableView_test
//
//  Created by 鹏 刘 on 2016/11/4.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *tableView;
    NSMutableArray *contacts;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    tableView.dataSource = self;
    tableView.delegate = self;
    
    [self.view addSubview:tableView];
}

- (void)initData
{
    contacts = [NSMutableArray array];
    
    Contact *contact1 = [[Contact alloc] initWithFirstName:@"liu" andLastName:@"peng" andPhoneNumber:@"18638911269"];
    Contact *contact2 = [[Contact alloc] initWithFirstName:@"liu" andLastName:@"song song" andPhoneNumber:@"18538911269"];
    Contact *contact3 = [[Contact alloc] initWithFirstName:@"liu" andLastName:@"sha" andPhoneNumber:@"18438911269"];
    ContactsGrouped *group1 = [[ContactsGrouped alloc] initWithName:@"l" andDetail:@"this is liu" andContacts:[NSMutableArray arrayWithObjects:contact1,contact2,contact3,nil]];
    [contacts addObject:group1];


    Contact *contact4 = [[Contact alloc] initWithFirstName:@"zhao" andLastName:@"xiao fang" andPhoneNumber:@"18386911269"];
    Contact *contact5 = [[Contact alloc] initWithFirstName:@"zhao" andLastName:@"wen li" andPhoneNumber:@"18238911269"];
    Contact *contact6 = [[Contact alloc] initWithFirstName:@"zhao" andLastName:@"xiao bin" andPhoneNumber:@"18138911269"];
    ContactsGrouped *group2 = [[ContactsGrouped alloc] initWithName:@"z" andDetail:@"this is zhao" andContacts:[NSMutableArray arrayWithObjects:contact4,contact5,contact6, nil]];
    [contacts addObject:group2];

    Contact *contact7 = [[Contact alloc] initWithFirstName:@"li" andLastName:@"peng fei" andPhoneNumber:@"18038911269"];
    Contact *contact8 = [[Contact alloc] initWithFirstName:@"li" andLastName:@"xiao ming" andPhoneNumber:@"17938911269"];
    Contact *contact9 = [[Contact alloc] initWithFirstName:@"li" andLastName:@"xiao fei" andPhoneNumber:@"17838911269"];
    ContactsGrouped *group3 = [[ContactsGrouped alloc] initWithName:@"l" andDetail:@"this is li" andContacts:[NSMutableArray arrayWithObjects:contact7,contact8,contact9, nil]];
    [contacts addObject:group3];

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return contacts.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    ContactsGrouped *group = contacts[section];
    return group.contacts.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    static NSString *reuseIdentifier = @"reuseIdentifier";
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
    }

    Contact *contact;
    cell.textLabel.text = [contact getName];
    cell.detailTextLabel.text = contact.phoneNumber;
    
    return cell;


}



@end
