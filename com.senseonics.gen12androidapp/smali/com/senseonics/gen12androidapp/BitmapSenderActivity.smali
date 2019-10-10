.class public Lcom/senseonics/gen12androidapp/BitmapSenderActivity;
.super Lcom/senseonics/gen12androidapp/ObjectGraphActivity;
.source "BitmapSenderActivity.java"


# static fields
.field private static final FOLDER_NAME:Ljava/lang/String; = "/Senseonics"

.field private static final REQUEST_CODE:I = 0x16d5

.field private static final SCREENSHOT_NAME:Ljava/lang/String; = "/senseonics_statistics.png"


# instance fields
.field bitmapSender:Lcom/senseonics/gen12androidapp/BitmapSender;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field bitmapUtil:Lcom/senseonics/util/BitmapUtil;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;-><init>()V

    return-void
.end method

.method private getScreenshotPath()Ljava/lang/String;
    .locals 3

    .line 88
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/Senseonics"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "N/A"

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Senseonics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/senseonics_statistics.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isStorageAccessNeeded()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 54
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 55
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sendBitmap()V
    .locals 6

    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->getScreenshotPath()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EMAIL_BITMAP_PATH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/senseonics/util/BitmapUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->bitmapSender:Lcom/senseonics/gen12androidapp/BitmapSender;

    .line 76
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EMAIL_TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EMAIL_BODY"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.senseonics.gen12androidapp.provider"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {p0, v4, v5}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/senseonics/gen12androidapp/BitmapSender;->sendBitmap(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 81
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->finishAndRemoveTask()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->finishAndRemoveTask()V

    .line 84
    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0031

    .line 37
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->prepareForExport()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 p2, 0x16d5

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 62
    aget p1, p3, p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->sendBitmap()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->finishAndRemoveTask()V

    :goto_0
    return-void
.end method

.method public prepareForExport()V
    .locals 2

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->isStorageAccessNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 44
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16d5

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->sendBitmap()V

    :goto_0
    return-void
.end method
