#import "MovieAPIClient.h"
#import "Movie.h"

@implementation MovieAPIClient

+ (void)fetchMoviesWithCompletion:(void (^)(NSArray<Movie *> *movies, NSError *error))completion {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSArray *mockMovies = @[
            [[Movie alloc] initWithTitle:@"Blade Runner 2049" rating:@"8.0"],
            [[Movie alloc] initWithTitle:@"Arrival" rating:@"7.9"],
            [[Movie alloc] initWithTitle:@"Dune" rating:@"8.1"]
        ];
        if (completion) {
            completion(mockMovies, nil);
        }
    });
}

@end
