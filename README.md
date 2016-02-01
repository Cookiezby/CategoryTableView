# CategoryTableView


```ObjectiveC
CategoryTableViewController* categoryVC = [[CategoryTableViewController alloc]init];
[categoryVC setCategroyArray:[PlistReader getArrayFromPlist:@"category"]];
categoryVC.delegate = self;
[self.navigationController pushViewController:categroyVC animated:YES];
```

You need to put this code in this method.

```ObjectiveC
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
```

and implement the method like this:

```ObjectiveC
- (void)setCategroy:(NSString *)categroy{
    NSIndexPath* indexPath = [NSIndexPath indexPathForRow:0 inSection:2];
    UITableViewCell* cell = [self.tableView cellForRowAtIndexPath:indexPath];
    cell.detailTextLabel.text = categroy;
}
```



