//
//  ViewController.h
//  MagicMural
//
//  Created by Ger on 11/24/15.
//  Copyright © 2015 Ger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, retain) IBOutlet UIScrollView * scrollView;
@property (nonatomic, retain) IBOutlet UIView * scrollContentView;

@end

