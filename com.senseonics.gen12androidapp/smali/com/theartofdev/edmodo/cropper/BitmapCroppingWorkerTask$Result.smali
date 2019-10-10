.class final Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;
.super Ljava/lang/Object;
.source "BitmapCroppingWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Result"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field final error:Ljava/lang/Exception;

.field final isSave:Z

.field final sampleSize:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 282
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->uri:Landroid/net/Uri;

    .line 283
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->error:Ljava/lang/Exception;

    const/4 p1, 0x0

    .line 284
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->isSave:Z

    .line 285
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->sampleSize:I

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;I)V
    .locals 1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 290
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->uri:Landroid/net/Uri;

    .line 291
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->error:Ljava/lang/Exception;

    const/4 p1, 0x1

    .line 292
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->isSave:Z

    .line 293
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->sampleSize:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Exception;Z)V
    .locals 1

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 298
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->uri:Landroid/net/Uri;

    .line 299
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->error:Ljava/lang/Exception;

    .line 300
    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->isSave:Z

    const/4 p1, 0x1

    .line 301
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->sampleSize:I

    return-void
.end method
