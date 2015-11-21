//
//  ViewController.m
//  UIRotateGestureRecognizer
//
//  Created by student on 11/21/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

- (void) handleRotationWithGestureRecognizer : (UIRotationGestureRecognizer *) rotationGestureRecognizer;
- (void)rotateImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.rugbyImageView setUserInteractionEnabled:YES];
    [self.view addSubview:self.rugbyImageView];
    UIRotationGestureRecognizer *rotationGestureRecognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotationWithGestureRecognizer:)];
    [self.rugbyImageView addGestureRecognizer:rotationGestureRecognizer];
    
    
}

- (void) handleRotationWithGestureRecognizer:(UIRotationGestureRecognizer *)rotationGestureRecognizer {
    self.rugbyImageView.transform = CGAffineTransformRotate(self.rugbyImageView.transform, rotationGestureRecognizer.rotation);
    rotationGestureRecognizer.rotation = 0.0;
    [self rotateImageView];
}

- (void)rotateImageView
{
    [UIView animateWithDuration:5 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        [self.rugbyImageView setTransform:CGAffineTransformRotate(self.rugbyImageView.transform, M_PI_2)];
    }completion:^(BOOL finished){
        if (finished) {
        }
    }];
}


@end
