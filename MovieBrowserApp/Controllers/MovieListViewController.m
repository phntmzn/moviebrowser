


#import "MovieListViewController.h"
#import "Movie.h"
#import "MovieDetailViewController.h"

@implementation MovieListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Movies";
    self.view.backgroundColor = [UIColor systemBackgroundColor];

    self.movies = @[
        [[Movie alloc] initWithTitle:@"Inception" rating:@"8.8"],
        [[Movie alloc] initWithTitle:@"The Matrix" rating:@"8.7"],
        [[Movie alloc] initWithTitle:@"Interstellar" rating:@"8.6"]
    ];

    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;

    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.movies.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"MovieCell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }

    Movie *movie = self.movies[indexPath.row];
    cell.textLabel.text = movie.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Rating: %@", movie.rating];

    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    MovieDetailViewController *detailVC = [[MovieDetailViewController alloc] init];
    detailVC.movie = self.movies[indexPath.row];
    [self.navigationController pushViewController:detailVC animated:YES];
}

@end