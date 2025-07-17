

#import "Movie.h"

@implementation Movie

- (instancetype)initWithTitle:(NSString *)title rating:(NSString *)rating {
    self = [super init];
    if (self) {
        _title = title;
        _rating = rating;
    }
    return self;
}

@end