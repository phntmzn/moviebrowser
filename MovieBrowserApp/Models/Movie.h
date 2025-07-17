#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *rating;

- (instancetype)initWithTitle:(NSString *)title rating:(NSString *)rating;

@end
