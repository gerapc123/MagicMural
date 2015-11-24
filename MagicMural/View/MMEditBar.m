//
//  MMElementToolbar.m
//  MagicMural
//
//  Created by Ger on 11/24/15.
//  Copyright © 2015 Ger. All rights reserved.
//

#import "MMEditBar.h"

@implementation MMEditBar

@synthesize delegate;

-(IBAction)biggerButtonTapped:(id)sender{
    [delegate bigger];
}

-(IBAction)smallerButtonTapped:(id)sender{
    [delegate smaller];
}

-(IBAction)biggerFontButtonTapped:(id)sender{
    [delegate biggerFontSize];
}

-(IBAction)smallerFontButtonTapped:(id)sender{
    [delegate smallerFontSize];
}

@end
