.class public Lcom/senseonics/account/ProfileImageCropActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "ProfileImageCropActivity.java"

# interfaces
.implements Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;


# static fields
.field public static final IMAGE_URI:Ljava/lang/String; = "IMAGE_URI"


# instance fields
.field bitmapUtil:Lcom/senseonics/util/BitmapUtil;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field cancelButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090092
    .end annotation
.end field

.field chooseButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09009d
    .end annotation
.end field

.field cropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b0
    .end annotation
.end field

.field cropImageViewContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b1
    .end annotation
.end field

.field presenter:Lcom/senseonics/account/ProfileImageCropPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachToPresenter()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity;->presenter:Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/account/ProfileImageCropPresenter;->attach(Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity;->presenter:Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-virtual {v0}, Lcom/senseonics/account/ProfileImageCropPresenter;->detach()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    invoke-virtual {v0, p0}, Lcom/senseonics/util/BitmapUtil;->deleteProfileImage(Landroid/content/Context;)V

    .line 72
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001b

    .line 43
    invoke-virtual {p0, p1}, Lcom/senseonics/account/ProfileImageCropActivity;->setContentView(I)V

    .line 44
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 46
    invoke-virtual {p0}, Lcom/senseonics/account/ProfileImageCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "IMAGE_URI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 47
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    invoke-virtual {v0, p0, p1}, Lcom/senseonics/util/BitmapUtil;->getImageContentPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public prepareImage()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCroppedImageAsync()V

    return-void
.end method

.method public setup(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity;->chooseButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/senseonics/account/ProfileImageCropActivity;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {p1, p3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;)V

    return-void
.end method
