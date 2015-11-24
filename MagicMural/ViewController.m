//
//  ViewController.m
//  MagicMural
//
//  Created by Ger on 11/24/15.
//  Copyright © 2015 Ger. All rights reserved.
//

#import "ViewController.h"
#import "MMImageView.h"
#import "MMEditBar.h"

@interface ViewController ()

@end

@implementation ViewController {
    IBOutlet MMEditBar * editBar;
}

@synthesize scrollView = _scrollView;
@synthesize scrollContentView = _scrollContentView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _scrollView.frame = self.view.frame;
    _scrollView.contentSize = CGSizeMake(_scrollView.frame.size.width*2.5, _scrollView.frame.size.height*2.5);
    _scrollView.zoomScale = .7;
    _scrollView.delegate = self;

    _scrollContentView.frame = CGRectMake(0, 0, _scrollView.contentSize.width, _scrollView.contentSize.height);
    _scrollContentView.backgroundColor = [UIColor colorWithRed:.0 green:.5 blue:.5 alpha:.3];
    
    
    //Hardcode
    MMImageView * testView = [[MMImageView alloc] initWithFrame:CGRectMake(50, 110, 250, 250)];
    editBar.delegate = testView;
    testView.imageView.image = [UIImage imageNamed:@"icon1"];
    testView.titleTextView.text = @"TITULOOO";
    [_scrollContentView addSubview:testView];
    
    MMImageView * testView1 = [[MMImageView alloc] initWithFrame:CGRectMake(300, 310, 80, 80)];
    editBar.delegate = testView1;
    testView1.imageView.image = [UIImage imageNamed:@"icon2"];
    testView1.titleTextView.text = @"TITULOOO";
    [_scrollContentView addSubview:testView1];
    
    MMImageView * testView2 = [[MMImageView alloc] initWithFrame:CGRectMake(800, 510, 200, 200)];
    editBar.delegate = testView2;
    testView2.imageView.image = [UIImage imageNamed:@"icon3"];
    testView2.titleTextView.text = @"TITULOOO";
    [_scrollContentView addSubview:testView2];
    //
    
    
    [self.view bringSubviewToFront:editBar];
}

- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return _scrollContentView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
