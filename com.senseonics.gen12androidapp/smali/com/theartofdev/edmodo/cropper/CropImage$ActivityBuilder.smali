.class public final Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
.super Ljava/lang/Object;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityBuilder"
.end annotation


# instance fields
.field private final mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

.field private final mSource:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mSource:Landroid/net/Uri;

    .line 439
    new-instance p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-direct {p1}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/theartofdev/edmodo/cropper/CropImage$1;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;-><init>(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 446
    const-class v0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;

    invoke-virtual {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 455
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 456
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 457
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "CROP_IMAGE_EXTRA_SOURCE"

    .line 458
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mSource:Landroid/net/Uri;

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "CROP_IMAGE_EXTRA_OPTIONS"

    .line 459
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "bundle"

    .line 460
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public setActivityMenuIconColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/CharSequence;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setAllowCounterRotation(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowCounterRotation:Z

    return-object p0
.end method

.method public setAllowFlipping(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowFlipping:Z

    return-object p0
.end method

.method public setAllowRotation(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowRotation:Z

    return-object p0
.end method

.method public setAspectRatio(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    .line 637
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    .line 638
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    return-object p0
.end method

.method public setAutoZoomEnabled(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    return-object p0
.end method

.method public setBorderCornerColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    return-object p0
.end method

.method public setBorderCornerLength(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    return-object p0
.end method

.method public setBorderCornerOffset(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    return-object p0
.end method

.method public setBorderCornerThickness(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    return-object p0
.end method

.method public setBorderLineColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    return-object p0
.end method

.method public setBorderLineThickness(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    return-object p0
.end method

.method public setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1    # Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 528
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    return-object p0
.end method

.method public setFixAspectRatio(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    return-object p0
.end method

.method public setFlipHorizontally(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipHorizontally:Z

    return-object p0
.end method

.method public setFlipVertically(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipVertically:Z

    return-object p0
.end method

.method public setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1    # Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 559
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    return-object p0
.end method

.method public setGuidelinesColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    return-object p0
.end method

.method public setGuidelinesThickness(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    return-object p0
.end method

.method public setInitialCropWindowPaddingRatio(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    return-object p0
.end method

.method public setInitialCropWindowRectangle(Landroid/graphics/Rect;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setInitialRotation(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialRotation:I

    return-object p0
.end method

.method public setMaxCropResultSize(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 751
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    return-object p0
.end method

.method public setMaxZoom(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    return-object p0
.end method

.method public setMinCropResultSize(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    .line 740
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    return-object p0
.end method

.method public setMinCropWindowSize(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 729
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    return-object p0
.end method

.method public setMultiTouchEnabled(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    return-object p0
.end method

.method public setNoOutputImage(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->noOutputImage:Z

    return-object p0
.end method

.method public setOutputCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public setOutputCompressQuality(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressQuality:I

    return-object p0
.end method

.method public setOutputUri(Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setRequestedSize(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 806
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->setRequestedSize(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRequestedSize(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestWidth:I

    .line 815
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestHeight:I

    .line 816
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p3, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    return-object p0
.end method

.method public setRotationDegrees(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->rotationDegrees:I

    return-object p0
.end method

.method public setScaleType(Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1
    .param p1    # Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 568
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    return-object p0
.end method

.method public setShowCropOverlay(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showCropOverlay:Z

    return-object p0
.end method

.method public setSnapRadius(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    return-object p0
.end method

.method public setTouchRadius(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    return-object p0
.end method

.method public start(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 470
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 471
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 481
    invoke-virtual {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0xcb

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .line 500
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xcb

    invoke-virtual {p2, p1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroid/app/Fragment;Ljava/lang/Class;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 519
    invoke-virtual {p0, p1, p3}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 p3, 0xcb

    invoke-virtual {p2, p1, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 490
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xcb

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Class;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 509
    invoke-virtual {p0, p1, p3}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 p3, 0xcb

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
