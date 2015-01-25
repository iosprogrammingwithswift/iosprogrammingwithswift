//
//  ViewController.m
//  UsingSwiftClassesInObjC
//
//  Created by Flori on 22.01.15.
//  Copyright (c) 2015 Flori & Andy. All rights reserved.
//

#import "ViewController.h"
#import "UsingSwiftClassesInObjC-Bridging-Header.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    PureSwift * swiftObject = [[PureSwift alloc] init];
    [swiftObject myFunc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
