//
//  ViewController.m
//  UIActivityViewControllerAndNSLayoutConstraints
//
//  Created by Hendrik von Prince on 03/08/15.
//  Copyright © 2015 Sipeso GmbH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openUIActivityViewController:(id)sender {
    UIActivityViewController *controller = [[UIActivityViewController alloc] initWithActivityItems:@[] applicationActivities:nil];
    
    controller.popoverPresentationController.sourceRect = self.button.bounds;
    controller.popoverPresentationController.sourceView = self.button;
    [self presentViewController:controller animated:NO completion:nil];
}

@end
