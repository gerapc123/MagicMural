//
//  MMImageView.m
//  MagicMural
//
//  Created by Ger on 11/24/15.
//  Copyright © 2015 Ger. All rights reserved.
//

#import "MMImageView.h"

@implementation MMImageView {
    IBOutlet UIButton * moveButton;
}

@synthesize imageView       = _imageView;
@synthesize titleTextView   = _titleTextView;

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
    }

    CGSize size = frame.size;
    
    moveButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    [moveButton addTarget:self action:@selector(handleMove:withEvent:) forControlEvents:UIControlEventTouchDown];
    [moveButton addTarget:self action:@selector(handleMove:withEvent:) forControlEvents:UIControlEventTouchDragInside];
    moveButton.autoresizingMask = (UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight);
    moveButton.backgroundColor = [UIColor clearColor];
    moveButton.exclusiveTouch = YES;
    [self addSubview:moveButton];
    
    _titleTextView = [UITextView new];
    _titleTextView.backgroundColor = [UIColor clearColor];
    _titleTextView.textAlignment = NSTextAlignmentCenter;
    _titleTextView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    _titleTextView.frame = CGRectMake(0, 0, size.width*.8, size.height*.2);
    _titleTextView.center = CGPointMake(size.width*.5, _titleTextView.center.y);
    [self addSubview:_titleTextView];
    
    _imageView = [UIImageView new];
    _imageView.autoresizingMask = (UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight);
    _imageView.backgroundColor = [UIColor clearColor];
    _imageView.frame = CGRectMake(0, size.height*.2, size.width, size.height*.8);
    _imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:_imageView];
    
    self.autoresizesSubviews = YES;
    
    self.backgroundColor = [UIColor clearColor];
    
    return self;
}

-(void)smaller{
    [UIView animateWithDuration:.2 animations:^{
        self.bounds = CGRectMake(0, 0, self.bounds.size.width*.9, self.bounds.size.height*.9);
    }];
}

-(void)bigger{
    [UIView animateWithDuration:.2 animations:^{
        self.bounds = CGRectMake(0, 0, self.bounds.size.width*1.1, self.bounds.size.height*1.1);
    }];
}

-(void)biggerFontSize{
    UIFont * currentFont = _titleTextView.font;
    _titleTextView.font = [UIFont fontWithName:currentFont.fontName size:currentFont.pointSize+3];
}

-(void)smallerFontSize{
    UIFont * currentFont = _titleTextView.font;
    _titleTextView.font = [UIFont fontWithName:currentFont.fontName size:currentFont.pointSize-3];
}

-(IBAction)handleMove:(id)sender withEvent:(UIEvent *) event{
    CGPoint pointInSuperview = [[[event allTouches] anyObject] locationInView:self.superview];
    CGPoint prevPointInSuperview = [[[event allTouches] anyObject] previousLocationInView:self.superview];
    
    CGPoint diff = CGPointMake(pointInSuperview.x-prevPointInSuperview.x, pointInSuperview.y-prevPointInSuperview.y);
    
    self.center = CGPointMake(self.center.x+diff.x, self.center.y+diff.y);
}

@end
