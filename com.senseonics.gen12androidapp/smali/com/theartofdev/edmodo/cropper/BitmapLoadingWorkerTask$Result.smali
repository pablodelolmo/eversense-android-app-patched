.class public final Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;
.super Ljava/lang/Object;
.source "BitmapLoadingWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final degreesRotated:I

.field public final error:Ljava/lang/Exception;

.field public final loadSampleSize:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->uri:Landroid/net/Uri;

    .line 160
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 161
    iput p3, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->loadSampleSize:I

    .line 162
    iput p4, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->degreesRotated:I

    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->error:Ljava/lang/Exception;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->uri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 169
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->loadSampleSize:I

    .line 170
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->degreesRotated:I

    .line 171
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->error:Ljava/lang/Exception;

    return-void
.end method
