

#import <UIKit/UIKit.h>

@class Movie;

@interface MovieCell : UITableViewCell

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *ratingLabel;

- (void)configureWithMovie:(Movie *)movie;

@end