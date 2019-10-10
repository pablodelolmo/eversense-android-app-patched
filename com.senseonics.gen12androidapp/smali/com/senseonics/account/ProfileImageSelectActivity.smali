.class public Lcom/senseonics/account/ProfileImageSelectActivity;
.super Lcom/senseonics/gen12androidapp/ObjectGraphActivity;
.source "ProfileImageSelectActivity.java"


# instance fields
.field private mCropImageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;-><init>()V

    return-void
.end method

.method private requestReadStoragePermission()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 78
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/account/ProfileImageSelectActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method private startProfileImageCropActivity(Landroid/net/Uri;)V
    .locals 2

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/account/ProfileImageCropActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "IMAGE_URI"

    .line 83
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, -0x2710

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/senseonics/account/ProfileImageSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 42
    invoke-static {p0, p3}, Lcom/theartofdev/edmodo/cropper/CropImage;->getPickImageResultUri(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage;->isReadExternalStoragePermissionsRequired(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 48
    iput-object p1, p0, Lcom/senseonics/account/ProfileImageSelectActivity;->mCropImageUri:Landroid/net/Uri;

    .line 49
    invoke-direct {p0}, Lcom/senseonics/account/ProfileImageSelectActivity;->requestReadStoragePermission()V

    goto :goto_0

    .line 51
    :cond_0
    invoke-direct {p0, p1}, Lcom/senseonics/account/ProfileImageSelectActivity;->startProfileImageCropActivity(Landroid/net/Uri;)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/account/ProfileImageSelectActivity;->finishAndRemoveTask()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/senseonics/account/ProfileImageSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 24
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/CropImage;->isExplicitCameraPermissionRequired(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.permission.CAMERA"

    .line 25
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x7db

    invoke-virtual {p0, p1, v0}, Lcom/senseonics/account/ProfileImageSelectActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/CropImage;->startPickImageActivity(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 p2, 0x0

    const/16 v0, 0x7db

    if-ne p1, v0, :cond_1

    .line 61
    array-length p1, p3

    if-lez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    .line 62
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/CropImage;->startPickImageActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/account/ProfileImageSelectActivity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_3

    .line 68
    array-length p1, p3

    if-lez p1, :cond_2

    aget p1, p3, p2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/senseonics/account/ProfileImageSelectActivity;->mCropImageUri:Landroid/net/Uri;

    if-eqz p1, :cond_2

    .line 69
    iget-object p1, p0, Lcom/senseonics/account/ProfileImageSelectActivity;->mCropImageUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/senseonics/account/ProfileImageSelectActivity;->startProfileImageCropActivity(Landroid/net/Uri;)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/senseonics/account/ProfileImageSelectActivity;->finishAndRemoveTask()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onRestart()V

    .line 34
    invoke-virtual {p0}, Lcom/senseonics/account/ProfileImageSelectActivity;->finishAndRemoveTask()V

    return-void
.end method
