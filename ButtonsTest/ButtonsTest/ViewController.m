//
//  ViewController.m
//  ButtonsTest
//
//  Created by Nikolay Berlioz on 22.11.15.
//  Copyright © 2015 Nikolay Berlioz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(200, 200, 200, 200);
    button.backgroundColor =[UIColor lightGrayColor];
    
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setTitle:@"Button Pressed" forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    /*
    UIEdgeInsets insets = UIEdgeInsetsMake(50, 50, 0, 0);
    button.titleEdgeInsets = insets;
    */
    /*
    //create attributes for button in normal state
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont systemFontOfSize:30],
                                 NSForegroundColorAttributeName: [UIColor orangeColor]};
    NSAttributedString *title = [[NSAttributedString alloc] initWithString:@"Button" attributes:attributes];
    [button setAttributedTitle:title forState:UIControlStateNormal];
    
    //create attributes for button in state State Highlighted
    NSDictionary *attributes2 = @{NSFontAttributeName: [UIFont systemFontOfSize:20],
                                 NSForegroundColorAttributeName: [UIColor redColor]};
    NSAttributedString *title2 = [[NSAttributedString alloc] initWithString:@"Button Pressed" attributes:attributes2];
    [button setAttributedTitle:title2 forState:UIControlStateHighlighted];
*/
    //[self.view addSubview:button];
    
    //-----------------------------------------------
    
    [button addTarget:self action:@selector(actionTest:) forControlEvents:UIControlEventTouchUpInside];
    
    [button addTarget:self action:@selector(actionTestOutside:) forControlEvents:UIControlEventTouchUpOutside];
    
}

#pragma mark - Action

- (void) actionTest:(UIButton*) button
{
    NSLog(@"Button Pressed Inside");
}

- (void) actionTestOutside:(UIButton*) button
{
    NSLog(@"Button Pressed Outside");
}


- (IBAction)actionTest2:(UIButton *)sender
{
    NSLog(@"actionTest2 tag = %i", (int)sender.tag);
    
    self.indicatorLabel.text = [NSString stringWithFormat:@"%d", (int)sender.tag];
    
    
}

- (IBAction)actionTest2TouchDown:(UIButton *)sender
{
    //NSLog(@"actionTest2TouchDown");
}
@end
