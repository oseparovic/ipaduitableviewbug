# ipaduitableviewbug
This project is a heavily stripped down version of the bug found here: http://stackoverflow.com/questions/28155955/custom-uitableviewcell-elements-not-appearing-only-on-ipad

In the implementation of the `tableView:cellForRowAtIndexPath:` method provided in `ViewController.m`, `self.view` is used to determine the horizonal centre point and thereby centre the labels in the cell. An example of this would be:

    [labelOne setCenter:CGPointMake(self.view.center.x, labelOne.center.y)];

On IPad devices this code causes these UILabels subviews of the cell to dissapear completely (they are moved offscreen). In order to fix the bug the labels' are instead positioned based on the center of the cell iteself rather than the parent view. Instead of the above line, you would use something like this:

    [labelOne setCenter:CGPointMake(cell.center.x, labelOne.center.y)];

This solution seems to work on both iPhones and iPads. You could also move out your custom cell code into a custom UITableViewCell and set up centre alignment via XIB constraints. I'm not sure why the original code of this project behaves that way on IPads.
