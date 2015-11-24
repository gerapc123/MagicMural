//
//  MMElementToolbar.h
//  MagicMural
//
//  Created by Ger on 11/24/15.
//  Copyright © 2015 Ger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMEditBarDelegate.h"

@interface MMEditBar : UIView

@property (nonatomic, assign) id<MMEditBarDelegate>delegate;

-(IBAction)biggerButtonTapped:(id)sender;
-(IBAction)smallerButtonTapped:(id)sender;
-(IBAction)biggerFontButtonTapped:(id)sender;
-(IBAction)smallerFontButtonTapped:(id)sender;

@end
