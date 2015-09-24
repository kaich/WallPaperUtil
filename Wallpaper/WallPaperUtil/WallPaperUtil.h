//
//  ViewController.h
//  WallpaperTest
//
//  Created by erike on 09/06/14.
//  Copyright (c) 2014 erik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PLStaticWallpaperImageViewController.h"

@interface WallPaperUtil : PLStaticWallpaperImageViewController
+(WallPaperUtil*) setImageAsHomeScreenAndLockScreenWithImage:(UIImage *) image viewScale:(BOOL) isScale;
+(WallPaperUtil*) setImageAsLockScreenWithImage:(UIImage*) image viewScale:(BOOL) isScale;
+(WallPaperUtil*) setImageAsHomeScreen:(UIImage *) image viewScale:(BOOL) isScale;
@end
