.class public Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;
.super Ljava/lang/Object;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropResult"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mCropPoints:[F

.field private final mCropRect:Landroid/graphics/Rect;

.field private final mError:Ljava/lang/Exception;

.field private final mOriginalBitmap:Landroid/graphics/Bitmap;

.field private final mOriginalUri:Landroid/net/Uri;

.field private final mRotation:I

.field private final mSampleSize:I

.field private final mUri:Landroid/net/Uri;

.field private final mWholeImageRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 0

    .line 1838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1839
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 1840
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mOriginalUri:Landroid/net/Uri;

    .line 1841
    iput-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 1842
    iput-object p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mUri:Landroid/net/Uri;

    .line 1843
    iput-object p5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mError:Ljava/lang/Exception;

    .line 1844
    iput-object p6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mCropPoints:[F

    .line 1845
    iput-object p7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mCropRect:Landroid/graphics/Rect;

    .line 1846
    iput-object p8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mWholeImageRect:Landroid/graphics/Rect;

    .line 1847
    iput p9, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mRotation:I

    .line 1848
    iput p10, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mSampleSize:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1879
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCropPoints()[F
    .locals 1

    .line 1901
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mCropPoints:[F

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    .line 1908
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getError()Ljava/lang/Exception;
    .locals 1

    .line 1894
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mError:Ljava/lang/Exception;

    return-object v0
.end method

.method public getOriginalBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1856
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mOriginalBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .locals 1

    .line 1864
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mOriginalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 1922
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mRotation:I

    return v0
.end method

.method public getSampleSize()I
    .locals 1

    .line 1929
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mSampleSize:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1887
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWholeImageRect()Landroid/graphics/Rect;
    .locals 1

    .line 1915
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mWholeImageRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 1871
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
