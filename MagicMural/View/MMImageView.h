//
//  MMImageView.h
//  MagicMural
//
//  Created by Ger on 11/24/15.
//  Copyright © 2015 Ger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMEditBarDelegate.h"

@interface MMImageView : UIView <MMEditBarDelegate>

@property (nonatomic, retain) IBOutlet UIImageView   * imageView;
@property (nonatomic, retain) IBOutlet UITextView    * titleTextView;

@end
