

typedef NS_ENUM(NSUInteger, PLWallpaperMode) {
	PLWallpaperModeBoth,
	PLWallpaperModeHomeScreen,
	PLWallpaperModeLockScreen
};

@interface PLWallpaperImageViewController : UIViewController // PLUIEditImageViewController
{
    int _wallpaperMode;
}
- (instancetype)initWithUIImage:(UIImage *)image;
//- (void)_savePhoto;

@property PLWallpaperMode wallpaperMode;


@property bool saveWallpaperData;
@property long long previewVariant;
@property long long previewType;
@property bool isWallpaperEdit;
@property(readonly) unsigned long long hash;
@property(readonly) Class superclass;
@property(copy,readonly) NSString * description;
@property(copy,readonly) NSString * debugDescription;


- (void)setIsWallpaperEdit:(bool)arg1;
- (bool)isWallpaperEdit;
- (long long)previewVariant;
- (void)setWallpaperTitle:(id)arg1;
- (void)setSaveWallpaperData:(bool)arg1;
- (void)setupWallpaperPreview;
- (void)_adjustScrollViewGeometry;
- (void)setWallpaperFromArgs:(id)arg1;
- (void)_displayWallpaperOptionsSheet;
- (void)_savePhoto;
- (void)setWallpaperSynchronouslyFromArgs:(id)arg1;
- (bool)saveWallpaperData;
- (void)_cropWallpaperFinished:(id)arg1;
- (void)_backgroundCropWallpaper;
- (id)wallpaperTitle;
- (void)_updateTitles;
- (void)_updatePreviewFrame:(id)arg1;
- (void)setWallpaperPreviewViewController:(id)arg1;
- (id)initWithWallpaperVariant:(long long)arg1;
- (void)setPreviewVariant:(long long)arg1;
- (void)prepareForForeground:(id)arg1;
- (void)prepareForBackground:(id)arg1;
- (id)wallpaperPreviewViewController;
- (long long)desiredStatusBarAnimation;
- (bool)wantsStatusBarVisible;
- (bool)clientIsWallpaper;
- (unsigned long long)_tileAutoresizingMask;
- (void)setupNavigationItem;
- (unsigned long long)_contentAutoresizingMask;
- (int)cropOverlayMode;
- (bool)uiipc_useTelephonyUI;
- (void)motionToggledManually:(bool)arg1;
- (void)setImageAsHomeScreenAndLockScreenClicked:(id)arg1;
- (void)setImageAsLockScreenClicked:(id)arg1;
- (void)setImageAsHomeScreenClicked:(id)arg1;
- (void)cropOverlayWasOKed:(id)arg1;
- (void)cropOverlayWasCancelled:(id)arg1;
- (void)photoTileViewControllerRequestsFullScreenImage:(id)arg1;
- (int)imageFormat;
- (long long)previewType;
- (void)setPreviewType:(long long)arg1;
- (void)providerLegibilitySettingsChanged:(id)arg1;
- (id)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)arg1 ofObject:(id)arg2 change:(id)arg3 context:(void*)arg4;
- (void)viewDidDisappear:(bool)arg1;
- (void)viewWillDisappear:(bool)arg1;
- (void)viewWillAppear:(bool)arg1;
- (bool)shouldAutorotateToInterfaceOrientation:(long long)arg1;
- (void)loadView;
- (id)navigationItem;


@end
