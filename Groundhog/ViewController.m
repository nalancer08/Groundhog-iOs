//
//  ViewController.m
//  Groundhog
//
//  Created by Webchimp on 01/04/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TestScene *scene = [[TestScene alloc] init];
    
    GhSystem *system = [GhSystem getInstance];
    [system setScene:scene];
    [system initialize:self];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
