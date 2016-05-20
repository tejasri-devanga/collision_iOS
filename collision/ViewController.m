//
//  ViewController.m
//  collision
//
//  Created by Mac on 19/05/16.
//  Copyright (c) 2016 Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(void)collision{
    if(CGRectIntersectsRect(l1.frame, l2.frame))
    {
        l1.hidden=YES;
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *mytouch=[[event allTouches]anyObject];
    l2.center=[mytouch locationInView:self.view];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    timer=[NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(collision) userInfo:nil repeats:YES];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
