//
//  NewsOverviewTableViewCell.m
//  FantasyNews
//
//  Created by Chappy Asel on 11/28/18.
//  Copyright © 2018 CA. All rights reserved.
//

#import "NewsOverviewTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "TimeAgo.h"

@interface NewsOverviewTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *playerImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *teamLabel;
@property (weak, nonatomic) IBOutlet UILabel *headlineLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeAgoLabel;

@end

@implementation NewsOverviewTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setNews:(RotoworldNews *)news {
    _news = news;
    [self.playerImageView sd_setImageWithURL: self.news.imageURL
                            placeholderImage: nil];
    self.nameLabel.text = self.news.fullName;
    self.teamLabel.text = self.news.teamPosition;
    self.headlineLabel.text = self.news.headline;
    self.timeAgoLabel.text = [TimeAgo date:self.news.date];
}

@end