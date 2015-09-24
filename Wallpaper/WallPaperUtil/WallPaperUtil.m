//
//  ViewController.m
//  WallpaperTest
//
//  Created by erike on 09/06/14.
//  Copyright (c) 2014 erik. All rights reserved.
//

#import "WallPaperUtil.h"
#import "PLPhotoLibrary.h"
#include <dlfcn.h>
#import "PLPhotoLibrary+util.h"


@interface WallPaperUtil ()

@end

@implementation WallPaperUtil

- (id)initWithWallPaperImage:(UIImage*) image
{
    
    self = [self initWithUIImage:image];
    _wallpaperMode=PLWallpaperModeHomeScreen;
    return self;
}

+(WallPaperUtil*) setImageAsHomeScreenAndLockScreenWithImage:(UIImage *) image viewScale:(BOOL)isScale
{
    PLPhotoLibrary * pl  =[[PLPhotoLibrary alloc] initReplace];
    [pl exchange];
    WallPaperUtil * vc =[[WallPaperUtil alloc] initWithWallPaperImage:image];
    vc.allowsEditing = false;
    vc.colorSamplingEnabled=false;
    vc.saveWallpaperData = true;
    [vc motionToggledManually:isScale ? true : false];
    [vc setImageAsHomeScreenAndLockScreenClicked:nil];
    [pl performSelector:NSSelectorFromString(@"restore") withObject:nil afterDelay:5];
    return vc;
}


+(WallPaperUtil*) setImageAsHomeScreen:(UIImage *)image  viewScale:(BOOL)isScale
{
    PLPhotoLibrary * pl  =[[PLPhotoLibrary alloc] initReplace];
    [pl exchange];
    WallPaperUtil * vc =[[WallPaperUtil alloc] initWithWallPaperImage:image];
    vc.allowsEditing = false;
    vc.colorSamplingEnabled=false;
    vc.saveWallpaperData = true;
    [vc motionToggledManually:isScale ? true : false];
    [vc setImageAsHomeScreenClicked:nil];
    [pl performSelector:NSSelectorFromString(@"restore") withObject:nil afterDelay:5];
    return vc;
}


+(WallPaperUtil*) setImageAsLockScreenWithImage:(UIImage*) image viewScale:(BOOL)isScale
{
    PLPhotoLibrary * pl  =[[PLPhotoLibrary alloc] initReplace];
    [pl exchange];
    WallPaperUtil * vc =[[WallPaperUtil alloc] initWithWallPaperImage:image];
    vc.allowsEditing = false;
    vc.colorSamplingEnabled=false;
    vc.saveWallpaperData = true;
    [vc motionToggledManually:isScale ? true : false];
    [vc setImageAsLockScreenClicked:nil];
    [pl performSelector:NSSelectorFromString(@"restore") withObject:nil afterDelay:5];
    return vc;
}

@end
