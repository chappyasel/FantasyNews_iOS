//
//  PlayerViewController.h
//  FantasyNews
//
//  Created by Chappy Asel on 11/29/18.
//  Copyright © 2018 CA. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RotoworldNews;

@interface PlayerViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) RotoworldNews *news;

@end