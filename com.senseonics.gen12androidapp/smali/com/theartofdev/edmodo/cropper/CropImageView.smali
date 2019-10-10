.class public Lcom/theartofdev/edmodo/cropper/CropImageView;
.super Landroid/widget/FrameLayout;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetCropOverlayReleasedListener;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;
    }
.end annotation


# instance fields
.field private mAnimation:Lcom/theartofdev/edmodo/cropper/CropImageAnimation;

.field private mAutoZoomEnabled:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

.field private mDegreesRotated:I

.field private mFlipHorizontally:Z

.field private mFlipVertically:Z

.field private final mImageInverseMatrix:Landroid/graphics/Matrix;

.field private final mImageMatrix:Landroid/graphics/Matrix;

.field private final mImagePoints:[F

.field private mImageResource:I

.field private final mImageView:Landroid/widget/ImageView;

.field private mInitialDegreesRotated:I

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mLoadedImageUri:Landroid/net/Uri;

.field private mLoadedSampleSize:I

.field private mMaxZoom:I

.field private mOnCropImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;

.field private mOnCropOverlayReleasedListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetCropOverlayReleasedListener;

.field private mOnSetImageUriCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private mRestoreCropWindowRect:Landroid/graphics/RectF;

.field private mRestoreDegreesRotated:I

.field private mSaveBitmapToInstanceState:Z

.field private mSaveInstanceStateBitmapUri:Landroid/net/Uri;

.field private mScaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

.field private mShowCropOverlay:Z

.field private mShowProgressBar:Z

.field private mSizeChanged:Z

.field private mZoom:F

.field private mZoomOffsetX:F

.field private mZoomOffsetY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    .line 65
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x8

    .line 75
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mSaveBitmapToInstanceState:Z

    const/4 v1, 0x1

    .line 129
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowCropOverlay:Z

    .line 135
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowProgressBar:Z

    .line 141
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    .line 171
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 176
    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    .line 228
    instance-of v2, p1, Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    const-string v4, "bundle"

    .line 230
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "CROP_IMAGE_EXTRA_OPTIONS"

    .line 232
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    :cond_1
    if-nez v3, :cond_3

    .line 238
    new-instance v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-direct {v3}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;-><init>()V

    if-eqz p2, :cond_3

    .line 241
    sget-object v2, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 243
    :try_start_0
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropFixAspectRatio:I

    iget-boolean v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 244
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropAspectRatioX:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    .line 245
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropAspectRatioY:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    .line 246
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    move-result-object v0

    sget v2, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropScaleType:I

    iget-object v4, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->ordinal()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    .line 247
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropAutoZoomEnabled:I

    iget-boolean v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    .line 248
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMultiTouchEnabled:I

    iget-boolean v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    .line 249
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMaxZoom:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    .line 250
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    move-result-object v0

    sget v2, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropShape:I

    iget-object v4, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->ordinal()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    .line 251
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    move-result-object v0

    sget v2, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropGuidelines:I

    iget-object v4, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ordinal()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    .line 252
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropSnapRadius:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    .line 253
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropTouchRadius:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    .line 254
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropInitialCropWindowPaddingRatio:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 255
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBorderLineThickness:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    .line 256
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBorderLineColor:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    .line 257
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBorderCornerThickness:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    .line 258
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBorderCornerOffset:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    .line 259
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBorderCornerLength:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    .line 260
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBorderCornerColor:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    .line 261
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropGuidelinesThickness:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    .line 262
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropGuidelinesColor:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    .line 263
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBackgroundColor:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    .line 264
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropShowCropOverlay:I

    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowCropOverlay:Z

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showCropOverlay:Z

    .line 265
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropShowProgressBar:I

    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowProgressBar:Z

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showProgressBar:Z

    .line 266
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBorderCornerThickness:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    .line 267
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMinCropWindowWidth:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 268
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMinCropWindowHeight:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    .line 269
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMinCropResultWidthPX:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    .line 270
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMinCropResultHeightPX:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    .line 271
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMaxCropResultWidthPX:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 272
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMaxCropResultHeightPX:I

    iget v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    .line 273
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropFlipHorizontally:I

    iget-boolean v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipHorizontally:Z

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipHorizontally:Z

    .line 274
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropFlipHorizontally:I

    iget-boolean v2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipVertically:Z

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipVertically:Z

    .line 276
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropSaveBitmapToInstanceState:I

    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mSaveBitmapToInstanceState:Z

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mSaveBitmapToInstanceState:Z

    .line 279
    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropAspectRatioX:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropAspectRatioX:I

    .line 280
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropFixAspectRatio:I

    .line 281
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    iput-boolean v1, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    .line 290
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 292
    iget-object p2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mScaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    .line 293
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    .line 294
    iget p2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    .line 295
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showCropOverlay:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowCropOverlay:Z

    .line 296
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showProgressBar:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowProgressBar:Z

    .line 297
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipHorizontally:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    .line 298
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipVertically:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    .line 300
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 301
    sget p2, Lcom/theartofdev/edmodo/cropper/R$layout;->crop_image_view:I

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 303
    sget p2, Lcom/theartofdev/edmodo/cropper/R$id;->ImageView_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    .line 304
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 306
    sget p2, Lcom/theartofdev/edmodo/cropper/R$id;->CropOverlayView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 307
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$1;

    invoke-direct {v0, p0}, Lcom/theartofdev/edmodo/cropper/CropImageView$1;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;)V

    invoke-virtual {p2, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowChangeListener(Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;)V

    .line 317
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p2, v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialAttributeValues(Lcom/theartofdev/edmodo/cropper/CropImageOptions;)V

    .line 319
    sget p2, Lcom/theartofdev/edmodo/cropper/R$id;->CropProgressBar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 320
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setProgressBarVisibility()V

    return-void
.end method

.method static synthetic access$000(Lcom/theartofdev/edmodo/cropper/CropImageView;ZZ)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/theartofdev/edmodo/cropper/CropImageView;)Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetCropOverlayReleasedListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnCropOverlayReleasedListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetCropOverlayReleasedListener;

    return-object p0
.end method

.method private applyImageMatrix(FFZZ)V
    .locals 8

    .line 1460
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_a

    cmpl-float v1, p2, v0

    if-lez v1, :cond_a

    .line 1462
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1463
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 1464
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1466
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1469
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p2, v5

    div-float/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1470
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1473
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    if-lez v2, :cond_0

    .line 1474
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v6}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v6

    invoke-virtual {v2, v3, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1475
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1479
    :cond_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectWidth([F)F

    move-result v2

    div-float v2, p1, v2

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectHeight([F)F

    move-result v3

    div-float v3, p2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1480
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mScaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    sget-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->FIT_CENTER:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mScaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    sget-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->CENTER_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v3, v5, :cond_1

    cmpg-float v3, v2, v6

    if-ltz v3, :cond_2

    :cond_1
    cmpl-float v3, v2, v6

    if-lez v3, :cond_3

    iget-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    if-eqz v3, :cond_3

    .line 1481
    :cond_2
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v6}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v6

    invoke-virtual {v3, v2, v2, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1482
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1486
    :cond_3
    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    neg-float v2, v2

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    .line 1487
    :goto_0
    iget-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    neg-float v3, v3

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    .line 1488
    :goto_1
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v6}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v6

    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v7}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v7

    invoke-virtual {v5, v2, v3, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1489
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1491
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    if-eqz p3, :cond_8

    .line 1495
    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {p3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectWidth([F)F

    move-result p3

    cmpl-float p3, p1, p3

    if-lez p3, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    div-float/2addr p1, v4

    .line 1496
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    sub-float/2addr p1, p3

    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {p3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectLeft([F)F

    move-result p3

    neg-float p3, p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectRight([F)F

    move-result v5

    sub-float/2addr p3, v5

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p1, v2

    :goto_2
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    .line 1497
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {p1}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectHeight([F)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_7

    goto :goto_3

    :cond_7
    div-float/2addr p2, v4

    .line 1498
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {p1}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectTop([F)F

    move-result p1

    neg-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {p3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectBottom([F)F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float v0, p1, v3

    :goto_3
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    goto :goto_4

    .line 1501
    :cond_8
    iget p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    mul-float p3, p3, v2

    iget v0, v1, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget v0, v1, Landroid/graphics/RectF;->right:F

    neg-float v0, v0

    add-float/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v2

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    .line 1502
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    mul-float p1, p1, v3

    iget p3, v1, Landroid/graphics/RectF;->top:F

    neg-float p3, p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p3, v1, Landroid/graphics/RectF;->bottom:F

    neg-float p3, p3

    add-float/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v3

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    .line 1506
    :goto_4
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    mul-float p2, p2, v2

    iget p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    mul-float p3, p3, v3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1507
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    mul-float p1, p1, v2

    iget p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    mul-float p2, p2, v3

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 1508
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1509
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1510
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    if-eqz p4, :cond_9

    .line 1515
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAnimation:Lcom/theartofdev/edmodo/cropper/CropImageAnimation;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p3}, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->setEndState([FLandroid/graphics/Matrix;)V

    .line 1516
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAnimation:Lcom/theartofdev/edmodo/cropper/CropImageAnimation;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 1518
    :cond_9
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_5
    const/4 p1, 0x0

    .line 1522
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->updateImageBounds(Z)V

    :cond_a
    return-void
.end method

.method private clearImageInt()V
    .locals 3

    .line 1125
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 1128
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 1131
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    .line 1132
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 1133
    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    .line 1134
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1135
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    const/4 v1, 0x0

    .line 1136
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    .line 1137
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    .line 1138
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1139
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mSaveInstanceStateBitmapUri:Landroid/net/Uri;

    .line 1141
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1143
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setCropOverlayVisibility()V

    return-void
.end method

.method private static getOnMeasureSpec(III)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    .line 1560
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    return p1
.end method

.method private handleCropWindowChanged(ZZ)V
    .locals 10

    .line 1413
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v0

    .line 1414
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v1

    .line 1415
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    if-lez v0, :cond_9

    if-lez v1, :cond_9

    .line 1417
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 1419
    iget p1, v2, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, v3

    if-ltz p1, :cond_0

    iget p1, v2, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p1, v3

    if-ltz p1, :cond_0

    iget p1, v2, Landroid/graphics/RectF;->right:F

    int-to-float p2, v0

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_0

    iget p1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float p2, v1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_9

    :cond_0
    int-to-float p1, v0

    int-to-float p2, v1

    const/4 v0, 0x0

    .line 1420
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    goto/16 :goto_1

    .line 1422
    :cond_1
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    cmpl-float p1, p1, v4

    if-lez p1, :cond_9

    .line 1425
    :cond_2
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    int-to-float v5, v5

    cmpg-float p1, p1, v5

    if-gez p1, :cond_3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    int-to-float v5, v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, v5, v6

    cmpg-float p1, p1, v7

    if-gez p1, :cond_3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result p1

    int-to-float v7, v1

    mul-float v6, v6, v7

    cmpg-float p1, p1, v6

    if-gez p1, :cond_3

    .line 1426
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    int-to-float p1, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    div-float/2addr v6, v8

    const v8, 0x3f23d70a    # 0.64f

    div-float/2addr v6, v8

    div-float/2addr v5, v6

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget v9, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    div-float/2addr v6, v9

    div-float/2addr v6, v8

    div-float/2addr v7, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 1428
    :goto_0
    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    int-to-float v6, v0

    const v7, 0x3f266666    # 0.65f

    mul-float v8, v6, v7

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    int-to-float v8, v1

    mul-float v8, v8, v7

    cmpl-float v5, v5, v8

    if-lez v5, :cond_5

    .line 1429
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    div-float/2addr p1, v5

    const v5, 0x3f028f5c    # 0.51f

    div-float/2addr p1, v5

    div-float/2addr v6, p1

    int-to-float p1, v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    div-float/2addr v2, v7

    div-float/2addr v2, v5

    div-float/2addr p1, v2

    invoke-static {v6, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1431
    :cond_5
    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    if-nez v2, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_6
    cmpl-float v2, p1, v3

    if-lez v2, :cond_9

    .line 1435
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_9

    if-eqz p2, :cond_8

    .line 1437
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAnimation:Lcom/theartofdev/edmodo/cropper/CropImageAnimation;

    if-nez v2, :cond_7

    .line 1439
    new-instance v2, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-direct {v2, v3, v4}, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;-><init>(Landroid/widget/ImageView;Lcom/theartofdev/edmodo/cropper/CropOverlayView;)V

    iput-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAnimation:Lcom/theartofdev/edmodo/cropper/CropImageAnimation;

    .line 1442
    :cond_7
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAnimation:Lcom/theartofdev/edmodo/cropper/CropImageAnimation;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4}, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->setStartState([FLandroid/graphics/Matrix;)V

    .line 1445
    :cond_8
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    int-to-float p1, v0

    int-to-float v0, v1

    const/4 v1, 0x1

    .line 1447
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    :cond_9
    :goto_1
    return-void
.end method

.method private mapImagePointsByImageMatrix()V
    .locals 4

    .line 1531
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1532
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1533
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 1534
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 1535
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 1536
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 1537
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 1538
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 1539
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1098
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->clearImageInt()V

    .line 1100
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1101
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1103
    iput-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    .line 1104
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    .line 1105
    iput p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    .line 1106
    iput p5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 1108
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1110
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz p1, :cond_1

    .line 1111
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->resetCropOverlayView()V

    .line 1112
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setCropOverlayVisibility()V

    :cond_1
    return-void
.end method

.method private setCropOverlayVisibility()V
    .locals 2

    .line 1573
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz v0, :cond_1

    .line 1574
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowCropOverlay:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setProgressBarVisibility()V
    .locals 3

    .line 1582
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowProgressBar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1584
    :goto_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private updateImageBounds(Z)V
    .locals 5

    .line 1591
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectWidth([F)F

    move-result v1

    div-float/2addr v0, v1

    .line 1595
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectHeight([F)F

    move-result v2

    div-float/2addr v1, v2

    .line 1596
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowLimits(FFFF)V

    .line 1600
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    :goto_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setBounds([FII)V

    return-void
.end method


# virtual methods
.method public clearAspectRatio()V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 528
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioY(I)V

    const/4 v0, 0x0

    .line 529
    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public clearImage()V
    .locals 2

    .line 959
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->clearImageInt()V

    .line 960
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public flipImageHorizontally()V
    .locals 4

    .line 1035
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    .line 1036
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    return-void
.end method

.method public flipImageVertically()V
    .locals 4

    .line 1043
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    .line 1044
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    return-void
.end method

.method public getAspectRatio()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 507
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCropPoints()[F
    .locals 5

    .line 663
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    const/16 v1, 0x8

    .line 665
    new-array v1, v1, [F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, v0, Landroid/graphics/RectF;->right:F

    const/4 v4, 0x2

    aput v2, v1, v4

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x3

    aput v2, v1, v4

    iget v2, v0, Landroid/graphics/RectF;->right:F

    const/4 v4, 0x4

    aput v2, v1, v4

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v4, 0x5

    aput v2, v1, v4

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x6

    aput v2, v1, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x7

    aput v0, v1, v2

    .line 676
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 677
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 679
    :goto_0
    array-length v0, v1

    if-ge v3, v0, :cond_0

    .line 680
    aget v0, v1, v3

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 7

    .line 637
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v1

    .line 642
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v2, v2, v0

    .line 643
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v3, v3, v0

    .line 646
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 647
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v4

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v5

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v6

    .line 646
    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectFromPoints([FIIZII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    move-result-object v0

    return-object v0
.end method

.method public getCroppedImage()Landroid/graphics/Bitmap;
    .locals 2

    .line 716
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCroppedImage(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCroppedImage(II)Landroid/graphics/Bitmap;
    .locals 1

    .line 728
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCroppedImage(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getCroppedImage(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 741
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 742
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 744
    sget-object v2, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    move/from16 v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 745
    :goto_0
    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    if-eq v1, v4, :cond_1

    move/from16 v3, p2

    .line 747
    :cond_1
    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_2

    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    if-ne v1, v4, :cond_3

    .line 748
    :cond_2
    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v8, v4, v5

    .line 749
    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v9, v4, v5

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v6

    iget v7, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    iget-object v10, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 753
    invoke-virtual {v10}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v10

    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v11}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v11

    iget-object v12, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v12}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v12

    iget-boolean v15, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    iget-boolean v14, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    move v13, v2

    move/from16 v16, v14

    move v14, v3

    .line 751
    invoke-static/range {v4 .. v16}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    move-result-object v4

    .line 755
    iget-object v4, v4, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 757
    :cond_3
    iget-object v5, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v6

    iget v7, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 758
    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v8

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v9

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v10

    iget-boolean v11, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    iget-boolean v12, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    .line 757
    invoke-static/range {v5 .. v12}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->cropBitmapObjectHandleOOM(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    move-result-object v4

    iget-object v4, v4, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;

    .line 762
    :goto_1
    invoke-static {v4, v2, v3, v1}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method public getCroppedImageAsync()V
    .locals 2

    .line 773
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCroppedImageAsync(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V

    return-void
.end method

.method public getCroppedImageAsync(II)V
    .locals 1

    .line 785
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCroppedImageAsync(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V

    return-void
.end method

.method public getCroppedImageAsync(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V
    .locals 7

    .line 797
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;

    if-nez v0, :cond_0

    .line 798
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mOnCropImageCompleteListener is not set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 800
    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->startCropWorkerTask(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void
.end method

.method public getGuidelines()Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getGuidelines()Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    move-result-object v0

    return-object v0
.end method

.method public getImageResource()I
    .locals 1

    .line 609
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    return v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMaxZoom()I
    .locals 1

    .line 390
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    return v0
.end method

.method public getRotatedDegrees()I
    .locals 1

    .line 427
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    return v0
.end method

.method public getScaleType()Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mScaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    return-object v0
.end method

.method public getWholeImageRect()Landroid/graphics/Rect;
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v0, v0, v1

    .line 626
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v1, v1, v2

    .line 627
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public isAutoZoomEnabled()Z
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    return v0
.end method

.method public isFixAspectRatio()Z
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v0

    return v0
.end method

.method public isFlippedHorizontally()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    .line 476
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    return v0
.end method

.method public isSaveBitmapToInstanceState()Z
    .locals 1

    .line 591
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mSaveBitmapToInstanceState:Z

    return v0
.end method

.method public isShowCropOverlay()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowCropOverlay:Z

    return v0
.end method

.method public isShowProgressBar()Z
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowProgressBar:Z

    return v0
.end method

.method onImageCroppingAsyncComplete(Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;)V
    .locals 13

    const/4 v0, 0x0

    .line 1078
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    .line 1079
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setProgressBarVisibility()V

    .line 1081
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;

    if-eqz v0, :cond_0

    .line 1083
    new-instance v12, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    iget-object v4, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    iget-object v5, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->uri:Landroid/net/Uri;

    iget-object v6, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->error:Ljava/lang/Exception;

    .line 1084
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v7

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getRotatedDegrees()I

    move-result v10

    iget v11, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->sampleSize:I

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 1085
    invoke-interface {v0, p0, v12}, Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;->onCropImageComplete(Lcom/theartofdev/edmodo/cropper/CropImageView;Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1358
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1360
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutWidth:I

    const/4 v0, 0x1

    if-lez p1, :cond_3

    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutHeight:I

    if-lez p1, :cond_3

    .line 1362
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1363
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutWidth:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1364
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutHeight:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1365
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1367
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    sub-int/2addr p4, p2

    int-to-float p1, p4

    sub-int/2addr p5, p3

    int-to-float p2, p5

    const/4 p3, 0x0

    .line 1368
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1371
    iget-object p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    if-eqz p4, :cond_1

    .line 1372
    iget p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreDegreesRotated:I

    iget p5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mInitialDegreesRotated:I

    if-eq p4, p5, :cond_0

    .line 1373
    iget p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreDegreesRotated:I

    iput p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 1374
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1376
    :cond_0
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1377
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1378
    invoke-direct {p0, p3, p3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 1379
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->fixCurrentCropWindowRect()V

    const/4 p1, 0x0

    .line 1380
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    goto :goto_0

    .line 1381
    :cond_1
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mSizeChanged:Z

    if-eqz p1, :cond_4

    .line 1382
    iput-boolean p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mSizeChanged:Z

    .line 1383
    invoke-direct {p0, p3, p3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    goto :goto_0

    .line 1386
    :cond_2
    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->updateImageBounds(Z)V

    goto :goto_0

    .line 1389
    :cond_3
    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->updateImageBounds(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 1299
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1301
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1302
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1303
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1304
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1306
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    if-nez p2, :cond_0

    .line 1310
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 1320
    :cond_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-ge p1, v2, :cond_1

    int-to-double v5, p1

    .line 1321
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v7, v2

    div-double/2addr v5, v7

    goto :goto_0

    :cond_1
    move-wide v5, v3

    .line 1323
    :goto_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge p2, v2, :cond_2

    int-to-double v7, p2

    .line 1324
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v9, v2

    div-double/2addr v7, v9

    goto :goto_1

    :cond_2
    move-wide v7, v3

    :goto_1
    cmpl-double v2, v5, v3

    if-nez v2, :cond_4

    cmpl-double v2, v7, v3

    if-eqz v2, :cond_3

    goto :goto_2

    .line 1338
    :cond_3
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1339
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_3

    :cond_4
    :goto_2
    cmpg-double v2, v5, v7

    if-gtz v2, :cond_5

    .line 1331
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v5

    double-to-int v2, v2

    move v3, v2

    move v2, p1

    goto :goto_3

    .line 1334
    :cond_5
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v7

    double-to-int v2, v2

    move v3, p2

    .line 1342
    :goto_3
    invoke-static {v0, p1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getOnMeasureSpec(III)I

    move-result p1

    .line 1343
    invoke-static {v1, p2, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getOnMeasureSpec(III)I

    move-result p2

    .line 1345
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutWidth:I

    .line 1346
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutHeight:I

    .line 1348
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutWidth:I

    iget p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    goto :goto_4

    .line 1351
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    :goto_4
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .line 1238
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_a

    .line 1239
    check-cast p1, Landroid/os/Bundle;

    .line 1242
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    if-nez v0, :cond_9

    const-string v0, "LOADED_IMAGE_URI"

    .line 1244
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v1, "LOADED_IMAGE_STATE_BITMAP_KEY"

    .line 1246
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1248
    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1249
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 1250
    :goto_0
    sput-object v3, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    if-eqz v2, :cond_1

    .line 1251
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x0

    const-string v1, "LOADED_SAMPLE_SIZE"

    .line 1252
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 1255
    :cond_1
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-nez v1, :cond_4

    .line 1256
    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    const-string v0, "LOADED_IMAGE_RESOURCE"

    .line 1259
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 1261
    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    const-string v0, "LOADING_IMAGE_URI"

    .line 1263
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 1265
    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_4
    :goto_1
    const-string v0, "DEGREES_ROTATED"

    .line 1270
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreDegreesRotated:I

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    const-string v0, "INITIAL_CROP_RECT"

    .line 1272
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    .line 1273
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_6

    .line 1274
    :cond_5
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    :cond_6
    const-string v0, "CROP_WINDOW_RECT"

    .line 1277
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    if-eqz v0, :cond_8

    .line 1278
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_7

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 1279
    :cond_7
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    .line 1282
    :cond_8
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const-string v1, "CROP_SHAPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)V

    const-string v0, "CROP_AUTO_ZOOM_ENABLED"

    .line 1284
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    const-string v0, "CROP_MAX_ZOOM"

    .line 1285
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    const-string v0, "CROP_FLIP_HORIZONTALLY"

    .line 1287
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    const-string v0, "CROP_FLIP_VERTICALLY"

    .line 1288
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    :cond_9
    const-string v0, "instanceState"

    .line 1291
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_2

    .line 1293
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 1193
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    if-ge v0, v1, :cond_0

    .line 1194
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 1197
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1198
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    .line 1199
    iget-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mSaveBitmapToInstanceState:Z

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    if-ge v3, v1, :cond_1

    .line 1200
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mSaveInstanceStateBitmapUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->writeTempStateStoreBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mSaveInstanceStateBitmapUri:Landroid/net/Uri;

    :cond_1
    if-eqz v2, :cond_2

    .line 1202
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1203
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1204
    new-instance v3, Landroid/util/Pair;

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v3, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    const-string v3, "LOADED_IMAGE_STATE_BITMAP_KEY"

    .line 1205
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    :cond_2
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    .line 1208
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;

    if-eqz v1, :cond_3

    const-string v3, "LOADING_IMAGE_URI"

    .line 1210
    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    const-string v1, "instanceState"

    .line 1213
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "LOADED_IMAGE_URI"

    .line 1214
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "LOADED_IMAGE_RESOURCE"

    .line 1215
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "LOADED_SAMPLE_SIZE"

    .line 1216
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DEGREES_ROTATED"

    .line 1217
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "INITIAL_CROP_RECT"

    .line 1218
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getInitialCropWindowRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1220
    sget-object v1, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1222
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1223
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const-string v1, "CROP_WINDOW_RECT"

    .line 1225
    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "CROP_SHAPE"

    .line 1226
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    move-result-object v2

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CROP_AUTO_ZOOM_ENABLED"

    .line 1227
    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "CROP_MAX_ZOOM"

    .line 1228
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "CROP_FLIP_HORIZONTALLY"

    .line 1229
    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "CROP_FLIP_VERTICALLY"

    .line 1230
    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method onSetImageUriAsyncComplete(Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;)V
    .locals 7

    const/4 v0, 0x0

    .line 1057
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    .line 1058
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setProgressBarVisibility()V

    .line 1060
    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->error:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 1061
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->degreesRotated:I

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mInitialDegreesRotated:I

    .line 1062
    iget-object v2, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->uri:Landroid/net/Uri;

    iget v5, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->loadSampleSize:I

    iget v6, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->degreesRotated:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnSetImageUriCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v1, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->uri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->error:Ljava/lang/Exception;

    invoke-interface {v0, p0, v1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;->onSetImageUriComplete(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1399
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1400
    :goto_0
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mSizeChanged:Z

    return-void
.end method

.method public resetCropRect()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 700
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    const/4 v0, 0x0

    .line 701
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    .line 702
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    .line 703
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mInitialDegreesRotated:I

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    const/4 v0, 0x0

    .line 704
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    .line 705
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    .line 706
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v1, v2, v0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 707
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->resetCropWindowRect()V

    return-void
.end method

.method public rotateImage(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 970
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    if-gez v1, :cond_0

    .line 973
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    goto :goto_0

    .line 975
    :cond_0
    rem-int/lit16 v1, v1, 0x168

    .line 978
    :goto_0
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    const/16 v2, 0x2d

    if-le v1, v2, :cond_1

    const/16 v2, 0x87

    if-lt v1, v2, :cond_2

    :cond_1
    const/16 v2, 0xd7

    if-le v1, v2, :cond_3

    const/16 v2, 0x131

    if-ge v1, v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 979
    :goto_1
    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    if-eqz v2, :cond_4

    .line 980
    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    :goto_2
    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    if-eqz v2, :cond_5

    .line 981
    sget-object v7, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    goto :goto_3

    :cond_5
    sget-object v7, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    :goto_3
    div-float/2addr v7, v6

    if-eqz v2, :cond_6

    .line 983
    iget-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    .line 984
    iget-boolean v6, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    iput-boolean v6, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    .line 985
    iput-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    .line 988
    :cond_6
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 990
    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    aput v6, v2, v4

    .line 991
    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    aput v6, v2, v3

    .line 992
    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    const/4 v6, 0x0

    const/4 v8, 0x2

    aput v6, v2, v8

    .line 993
    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    const/4 v9, 0x3

    aput v6, v2, v9

    .line 994
    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x4

    aput v10, v2, v11

    .line 995
    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    const/4 v12, 0x5

    aput v6, v2, v12

    .line 996
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 999
    iget v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    iput v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1004
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1005
    iget v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    float-to-double v1, v1

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    aget v6, v6, v11

    sget-object v13, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    aget v13, v13, v8

    sub-float/2addr v6, v13

    float-to-double v13, v6

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    aget v6, v6, v12

    sget-object v15, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    aget v15, v15, v9

    sub-float/2addr v6, v15

    float-to-double v8, v6

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v1, v8

    double-to-float v1, v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    .line 1006
    iget v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    .line 1008
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-direct {v0, v1, v2, v8, v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1010
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1013
    sget-object v1, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    aget v1, v1, v11

    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v6, 0x2

    aget v2, v2, v6

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    aget v6, v6, v12

    sget-object v8, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    sub-float/2addr v6, v8

    float-to-double v8, v6

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    float-to-double v3, v5

    mul-double v3, v3, v1

    double-to-float v3, v3

    float-to-double v4, v7

    mul-double v4, v4, v1

    double-to-float v1, v4

    .line 1018
    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    sget-object v4, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-float/2addr v4, v3

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v6, v1

    sget-object v8, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    aget v8, v8, v5

    add-float/2addr v8, v3

    sget-object v3, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    aget v3, v3, v7

    add-float/2addr v3, v1

    invoke-virtual {v2, v4, v6, v8, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1021
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->resetCropOverlayView()V

    .line 1022
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    sget-object v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1023
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1024
    invoke-direct {v0, v3, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 1027
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->fixCurrentCropWindowRect()V

    :cond_7
    return-void
.end method

.method public saveCroppedImageAsync(Landroid/net/Uri;)V
    .locals 7

    .line 811
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V

    return-void
.end method

.method public saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 7

    .line 823
    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V

    return-void
.end method

.method public saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;III)V
    .locals 7

    .line 838
    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V

    return-void
.end method

.method public saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V
    .locals 7

    .line 853
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;

    if-nez v0, :cond_0

    .line 854
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mOnCropImageCompleteListener is not set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    move-object v0, p0

    move v1, p4

    move v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 856
    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->startCropWorkerTask(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void
.end method

.method public setAspectRatio(II)V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 519
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1, p2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioY(I)V

    const/4 p1, 0x1

    .line 520
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public setAutoZoomEnabled(Z)V
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    if-eq v0, p1, :cond_0

    .line 370
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    const/4 p1, 0x0

    .line 371
    invoke-direct {p0, p1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 372
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)V

    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public setFlippedHorizontally(Z)V
    .locals 3

    .line 466
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    if-eq v0, p1, :cond_0

    .line 467
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    .line 468
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    :cond_0
    return-void
.end method

.method public setFlippedVertically(Z)V
    .locals 3

    .line 483
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    if-eq v0, p1, :cond_0

    .line 484
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    .line 485
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    :cond_0
    return-void
.end method

.method public setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 888
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 889
    invoke-direct/range {v2 .. v7}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/support/media/ExifInterface;)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 905
    invoke-static {p1, p2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->rotateBitmapByExif(Landroid/graphics/Bitmap;Landroid/support/media/ExifInterface;)Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;

    move-result-object p1

    .line 906
    iget-object p2, p1, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 907
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;->degrees:I

    .line 908
    iget p1, p1, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;->degrees:I

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mInitialDegreesRotated:I

    move-object v2, p2

    move v6, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v2, p1

    const/4 v6, 0x0

    .line 912
    :goto_0
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    .line 913
    invoke-direct/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 7

    if-eqz p1, :cond_0

    .line 923
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 924
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    .line 925
    invoke-direct/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    :cond_0
    return-void
.end method

.method public setImageUriAsync(Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 938
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 941
    invoke-virtual {v0, v2}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->cancel(Z)Z

    .line 945
    :cond_1
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->clearImageInt()V

    .line 946
    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 947
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreDegreesRotated:I

    .line 948
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 949
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;

    invoke-direct {v2, p0, p1}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    .line 950
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 951
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setProgressBarVisibility()V

    :cond_2
    return-void
.end method

.method public setMaxCropResultSize(II)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setMaxCropResultSize(II)V

    return-void
.end method

.method public setMaxZoom(I)V
    .locals 1

    .line 397
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    .line 398
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    const/4 p1, 0x0

    .line 399
    invoke-direct {p0, p1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 400
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMinCropResultSize(II)V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setMinCropResultSize(II)V

    return-void
.end method

.method public setMultiTouchEnabled(Z)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setMultiTouchEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 381
    invoke-direct {p0, p1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 382
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;

    return-void
.end method

.method public setOnSetCropOverlayReleasedListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetCropOverlayReleasedListener;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnCropOverlayReleasedListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetCropOverlayReleasedListener;

    return-void
.end method

.method public setOnSetImageUriCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;)V
    .locals 0

    .line 871
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnSetImageUriCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;

    return-void
.end method

.method public setRotatedDegrees(I)V
    .locals 1

    .line 436
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    if-eq v0, p1, :cond_0

    .line 437
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->rotateImage(I)V

    :cond_0
    return-void
.end method

.method public setSaveBitmapToInstanceState(Z)V
    .locals 0

    .line 602
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mSaveBitmapToInstanceState:Z

    return-void
.end method

.method public setScaleType(Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mScaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 335
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mScaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 336
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    const/4 p1, 0x0

    .line 337
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    .line 338
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->resetCropOverlayView()V

    .line 339
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowCropOverlay(Z)V
    .locals 1

    .line 577
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowCropOverlay:Z

    if-eq v0, p1, :cond_0

    .line 578
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowCropOverlay:Z

    .line 579
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setCropOverlayVisibility()V

    :cond_0
    return-void
.end method

.method public setShowProgressBar(Z)V
    .locals 1

    .line 556
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowProgressBar:Z

    if-eq v0, p1, :cond_0

    .line 557
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowProgressBar:Z

    .line 558
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setProgressBarVisibility()V

    :cond_0
    return-void
.end method

.method public setSnapRadius(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setSnapRadius(F)V

    :cond_0
    return-void
.end method

.method public startCropWorkerTask(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 24

    move-object/from16 v15, p0

    move-object/from16 v14, p3

    .line 1160
    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 1161
    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1163
    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1166
    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->cancel(Z)Z

    .line 1169
    :cond_1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    const/4 v13, 0x0

    if-eq v14, v0, :cond_2

    move/from16 v10, p1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 1170
    :goto_1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    if-eq v14, v0, :cond_3

    move/from16 v11, p2

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 1172
    :goto_2
    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v5, v0, v2

    .line 1173
    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v6, v0, v2

    .line 1174
    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    if-gt v0, v1, :cond_4

    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    if-ne v14, v0, :cond_5

    .line 1175
    :cond_4
    new-instance v12, Ljava/lang/ref/WeakReference;

    new-instance v9, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;

    iget-object v2, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v3

    iget v4, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 1177
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v7

    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v8

    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v16

    iget-boolean v1, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    iget-boolean v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    move/from16 v17, v0

    move-object v0, v9

    move/from16 v18, v1

    move-object v1, v15

    move-object/from16 v19, v9

    move/from16 v9, v16

    move-object/from16 v20, v12

    move/from16 v12, v18

    move/from16 v13, v17

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    invoke-direct/range {v0 .. v17}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;[FIIIZIIIIZZLcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    move-object/from16 v1, v19

    move-object/from16 v0, v20

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v15, p0

    iput-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    move-object v1, v15

    goto :goto_3

    .line 1181
    :cond_5
    new-instance v13, Ljava/lang/ref/WeakReference;

    new-instance v12, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;

    iget-object v2, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v3

    iget v4, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 1182
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v5

    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v6

    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v7

    iget-boolean v9, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipHorizontally:Z

    iget-boolean v8, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->mFlipVertically:Z

    move-object v0, v12

    move-object v1, v15

    move/from16 v16, v8

    move v8, v10

    move v10, v9

    move v9, v11

    move/from16 v11, v16

    move-object/from16 v21, v12

    move-object v12, v14

    move-object v14, v13

    move-object/from16 v13, p4

    move-object/from16 v22, v14

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-direct/range {v0 .. v15}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/graphics/Bitmap;[FIZIIIIZZLcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    move-object/from16 v1, v21

    move-object/from16 v0, v22

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    .line 1186
    :goto_3
    iget-object v0, v1, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1187
    invoke-direct/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setProgressBarVisibility()V

    goto :goto_4

    :cond_6
    move-object v1, v15

    :goto_4
    return-void
.end method
