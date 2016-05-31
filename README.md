# SelecteIconButton
A subclass of button to change selected status

use

/*

SelectIconButton *button = [[SelectIconButton alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
button.center = self.view.center;
[self.view addSubview:button];
button.SelectIconButtonBlock = ^(BOOL isSelected){
NSLog(@"----%d---",isSelected);
};

 */
