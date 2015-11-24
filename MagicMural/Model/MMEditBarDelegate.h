//
//  ToolbarDelegate.h
//  MagicMural
//
//  Created by Ger on 11/24/15.
//  Copyright © 2015 Ger. All rights reserved.
//

#ifndef ToolbarDelegate_h
#define ToolbarDelegate_h

@protocol MMEditBarDelegate <NSObject>

@optional

-(void)biggerFontSize;
-(void)smallerFontSize;
-(void)smaller;
-(void)bigger;

@end

#endif /* ToolbarDelegate_h */
