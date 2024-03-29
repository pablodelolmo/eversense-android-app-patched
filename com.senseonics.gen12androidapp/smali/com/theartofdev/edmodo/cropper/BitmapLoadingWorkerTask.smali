.class final Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;
.super Landroid/os/AsyncTask;
.source "BitmapLoadingWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCropImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/theartofdev/edmodo/cropper/CropImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeight:I

.field private final mUri:Landroid/net/Uri;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mUri:Landroid/net/Uri;

    .line 58
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mCropImageViewReference:Ljava/lang/ref/WeakReference;

    .line 60
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 63
    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p2

    float-to-double v0, v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 64
    :goto_0
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, p2

    mul-double v2, v2, v0

    double-to-int p2, v2

    iput p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mWidth:I

    .line 65
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p1, p1

    mul-double p1, p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mHeight:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;
    .locals 4

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mUri:Landroid/net/Uri;

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mWidth:I

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mHeight:I

    .line 87
    invoke-static {p1, v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->decodeSampledBitmap(Landroid/content/Context;Landroid/net/Uri;II)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mUri:Landroid/net/Uri;

    .line 92
    invoke-static {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->rotateBitmapByExif(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mUri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;->bitmap:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;->sampleSize:I

    iget v0, v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;->degrees:I

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 99
    new-instance v0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v1, p1}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;-><init>(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->doInBackground([Ljava/lang/Void;)Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;

    move-result-object p1

    return-object p1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onPostExecute(Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mCropImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/theartofdev/edmodo/cropper/CropImageView;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 116
    invoke-virtual {v1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->onSetImageUriAsyncComplete(Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;)V

    :cond_0
    if-nez v0, :cond_1

    .line 119
    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 121
    iget-object p1, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->onPostExecute(Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;)V

    return-void
.end method
