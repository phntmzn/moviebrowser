


#import "MovieCell.h"
#import "Movie.h"

@implementation MovieCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 10, 300, 20)];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16];
        [self.contentView addSubview:_titleLabel];

        _ratingLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 35, 100, 15)];
        _ratingLabel.font = [UIFont systemFontOfSize:14];
        _ratingLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:_ratingLabel];
    }
    return self;
}

- (void)configureWithMovie:(Movie *)movie {
    self.titleLabel.text = movie.title;
    self.ratingLabel.text = [NSString stringWithFormat:@"Rating: %@", movie.rating];
}

@end