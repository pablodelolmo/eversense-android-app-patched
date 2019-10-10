.class final Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;
.super Landroid/os/AsyncTask;
.source "BitmapCroppingWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAspectRatioX:I

.field private final mAspectRatioY:I

.field private final mBitmap:Landroid/graphics/Bitmap;

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

.field private final mCropPoints:[F

.field private final mDegreesRotated:I

.field private final mFixAspectRatio:Z

.field private final mFlipHorizontally:Z

.field private final mFlipVertically:Z

.field private final mOrgHeight:I

.field private final mOrgWidth:I

.field private final mReqHeight:I

.field private final mReqSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

.field private final mReqWidth:I

.field private final mSaveCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final mSaveCompressQuality:I

.field private final mSaveUri:Landroid/net/Uri;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/graphics/Bitmap;[FIZIIIIZZLcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 3

    move-object v0, p0

    .line 128
    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    .line 130
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p1

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mCropImageViewReference:Ljava/lang/ref/WeakReference;

    .line 131
    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mContext:Landroid/content/Context;

    move-object v1, p2

    .line 132
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mBitmap:Landroid/graphics/Bitmap;

    move-object v1, p3

    .line 133
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mCropPoints:[F

    const/4 v1, 0x0

    .line 134
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mUri:Landroid/net/Uri;

    move v1, p4

    .line 135
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mDegreesRotated:I

    move v1, p5

    .line 136
    iput-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFixAspectRatio:Z

    move v1, p6

    .line 137
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioX:I

    move v1, p7

    .line 138
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioY:I

    move v1, p8

    .line 139
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqWidth:I

    move v1, p9

    .line 140
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqHeight:I

    move v1, p10

    .line 141
    iput-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFlipHorizontally:Z

    move v1, p11

    .line 142
    iput-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFlipVertically:Z

    move-object v1, p12

    .line 143
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    move-object/from16 v1, p13

    .line 144
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    move-object/from16 v1, p14

    .line 145
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v1, p15

    .line 146
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveCompressQuality:I

    const/4 v1, 0x0

    .line 147
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mOrgWidth:I

    .line 148
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mOrgHeight:I

    return-void
.end method

.method constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;[FIIIZIIIIZZLcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 3

    move-object v0, p0

    .line 155
    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    .line 157
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p1

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mCropImageViewReference:Ljava/lang/ref/WeakReference;

    .line 158
    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mContext:Landroid/content/Context;

    move-object v1, p2

    .line 159
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mUri:Landroid/net/Uri;

    move-object v1, p3

    .line 160
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mCropPoints:[F

    move v1, p4

    .line 161
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mDegreesRotated:I

    move v1, p7

    .line 162
    iput-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFixAspectRatio:Z

    move v1, p8

    .line 163
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioX:I

    move v1, p9

    .line 164
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioY:I

    move v1, p5

    .line 165
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mOrgWidth:I

    move v1, p6

    .line 166
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mOrgHeight:I

    move v1, p10

    .line 167
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqWidth:I

    move v1, p11

    .line 168
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqHeight:I

    move v1, p12

    .line 169
    iput-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFlipHorizontally:Z

    move/from16 v1, p13

    .line 170
    iput-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFlipVertically:Z

    move-object/from16 v1, p14

    .line 171
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    move-object/from16 v1, p15

    .line 172
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    move-object/from16 v1, p16

    .line 173
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v1, p17

    .line 174
    iput v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveCompressQuality:I

    const/4 v1, 0x0

    .line 175
    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 194
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->isCancelled()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 197
    iget-object v3, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 198
    iget-object v5, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mUri:Landroid/net/Uri;

    iget-object v7, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mCropPoints:[F

    iget v8, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mDegreesRotated:I

    iget v9, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mOrgWidth:I

    iget v10, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mOrgHeight:I

    iget-boolean v11, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFixAspectRatio:Z

    iget v12, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioX:I

    iget v13, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioY:I

    iget v14, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqWidth:I

    iget v15, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqHeight:I

    iget-boolean v3, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFlipHorizontally:Z

    iget-boolean v4, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFlipVertically:Z

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-static/range {v5 .. v17}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    move-result-object v3

    goto :goto_0

    .line 200
    :cond_0
    iget-object v3, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 201
    iget-object v5, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mCropPoints:[F

    iget v7, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mDegreesRotated:I

    iget-boolean v8, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFixAspectRatio:Z

    iget v9, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioX:I

    iget v10, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mAspectRatioY:I

    iget-boolean v11, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFlipHorizontally:Z

    iget-boolean v12, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mFlipVertically:Z

    invoke-static/range {v5 .. v12}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->cropBitmapObjectHandleOOM(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    move-result-object v3

    .line 207
    :goto_0
    iget-object v4, v3, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;

    iget v5, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqWidth:I

    iget v6, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqHeight:I

    iget-object v7, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mReqSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-static {v4, v5, v6, v7}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 209
    iget-object v5, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 210
    new-instance v5, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;

    iget v3, v3, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;->sampleSize:I

    invoke-direct {v5, v4, v3}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v5

    .line 212
    :cond_1
    iget-object v5, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    iget-object v7, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v8, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveCompressQuality:I

    invoke-static {v5, v4, v6, v7, v8}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->writeBitmapToUri(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    if-eqz v4, :cond_2

    .line 214
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    :cond_2
    new-instance v4, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;

    iget-object v5, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    iget v3, v3, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;->sampleSize:I

    invoke-direct {v4, v5, v3}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;-><init>(Landroid/net/Uri;I)V

    return-object v4

    .line 204
    :cond_3
    new-instance v3, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v2}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_4
    return-object v4

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 221
    new-instance v4, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;

    iget-object v5, v1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mSaveUri:Landroid/net/Uri;

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v4, v3, v2}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;-><init>(Ljava/lang/Exception;Z)V

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->doInBackground([Ljava/lang/Void;)Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;

    move-result-object p1

    return-object p1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onPostExecute(Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->mCropImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/theartofdev/edmodo/cropper/CropImageView;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 238
    invoke-virtual {v1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->onImageCroppingAsyncComplete(Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;)V

    :cond_0
    if-nez v0, :cond_1

    .line 241
    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 243
    iget-object p1, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->onPostExecute(Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;)V

    return-void
.end method
