//
//  HLLMovieCell.m
//  HLLDoubanSpider
//
//  Created by admin on 16/1/7.
//  Copyright © 2016年 HLL. All rights reserved.
//

#import "HLLMovieCell.h"
#import "UIImageView+WebCache.h"

@interface HLLMovieCell ()
@property (weak, nonatomic) IBOutlet UILabel *movieRankLabel;
@property (weak, nonatomic) IBOutlet UILabel *movieNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *movieDescLabel;
@property (weak, nonatomic) IBOutlet UILabel *movieQuoteLabel;
@property (weak, nonatomic) IBOutlet UILabel *movieScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *movieCommitLabel;
@property (weak, nonatomic) IBOutlet UIImageView *movieImageView;
@property (weak, nonatomic) IBOutlet UILabel *movieRankStepLabel;
@property (weak, nonatomic) IBOutlet UIImageView *movieRankStatusImageView;


@end


@implementation HLLMovieCell


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end

@implementation HLLMovieCell (TOP250)

- (void)configureCellWithTOP250Movie:(HLLMovie *)movie{
    
    self.movieRankLabel.text = [NSString stringWithFormat:@"%@", movie.rank];
    self.movieNameLabel.text = [NSString stringWithFormat:@"%@",movie.name];
    self.movieDescLabel.text = [NSString stringWithFormat:@"%@",movie.movieDesc];
    self.movieQuoteLabel.text = [NSString stringWithFormat:@"%@",movie.quote];
    self.movieScoreLabel.text = [NSString stringWithFormat:@"%@",movie.score];
    self.movieCommitLabel.text = [NSString stringWithFormat:@"%@",movie.commit];
    NSURL * imageURL = [NSURL URLWithString:movie.img];
    [self.movieImageView sd_setImageWithURL:imageURL placeholderImage:[UIImage imageNamed:@"db.png"]];
}
@end

@implementation HLLMovieCell (WeekMovie)

- (void)configureCellWithWeekMovie:(HLLRankMovie *)movie{
    
    self.movieNameLabel.text = [NSString stringWithFormat:@"%@",movie.name];
    self.movieRankLabel.text = [NSString stringWithFormat:@"%@", movie.rank];
    self.movieRankStepLabel.text = [NSString stringWithFormat:@"%d",movie.rankStep];
}
@end

@implementation HLLMovieCell (NewMovie)

- (void)configureCellWithNewMovie:(HLLMovie *)movie{
    
    self.movieNameLabel.text = [NSString stringWithFormat:@"%@",movie.name];
    self.movieDescLabel.text = [NSString stringWithFormat:@"%@",movie.movieDesc];
    self.movieScoreLabel.text = [NSString stringWithFormat:@"%@",movie.score];
    self.movieCommitLabel.text = [NSString stringWithFormat:@"%@",movie.commit];
    NSURL * imageURL = [NSURL URLWithString:movie.img];
    [self.movieImageView sd_setImageWithURL:imageURL placeholderImage:[UIImage imageNamed:@"db.png"]];
    
}
@end