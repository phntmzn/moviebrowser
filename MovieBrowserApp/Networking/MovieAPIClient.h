#import <Foundation/Foundation.h>

@class Movie;

@interface MovieAPIClient : NSObject

+ (void)fetchMoviesWithCompletion:(void (^)(NSArray<Movie *> *movies, NSError *error))completion;

@end
