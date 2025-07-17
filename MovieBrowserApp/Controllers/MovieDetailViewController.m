#import "MovieDetailViewController.h"
#import "Movie.h"

@implementation MovieDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor systemBackgroundColor];

    if (self.movie) {
        self.title = self.movie.title;
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, self.view.frame.size.width - 40, 100)];
        label.text = [NSString stringWithFormat:@"Title: %@\nRating: %@", self.movie.title, self.movie.rating];
        label.numberOfLines = 0;
        [self.view addSubview:label];
    }
}

@end