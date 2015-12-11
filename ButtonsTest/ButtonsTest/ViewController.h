//
//  ViewController.h
//  ButtonsTest
//
//  Created by Nikolay Berlioz on 22.11.15.
//  Copyright © 2015 Nikolay Berlioz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *indicatorLabel;

- (IBAction)actionTest2:(UIButton*)sender;
- (IBAction)actionTest2TouchDown:(UIButton*)sender;


@end

