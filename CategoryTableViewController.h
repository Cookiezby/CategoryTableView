//
//  CategroyTableViewController.h
//  naluhodoPT
//
//  Created by cookie on 12/27/15.
//  Copyright © 2015 cookie. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CategoryTableViewDelegate <NSObject>

@required - (void)setCategroy:(NSString*)category;

@end

@interface CategoryTableViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

- (void)setPlist:(NSString*)fileName;
- (void)setCategroyArray:(NSArray*)array;

@property (nonatomic) id<CategoryTableViewDelegate> delegate;

@property (nonatomic)NSString* navigationTitle;

@end
