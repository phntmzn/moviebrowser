#import <UIKit/UIKit.h>

@interface MovieListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *movies;

@end
