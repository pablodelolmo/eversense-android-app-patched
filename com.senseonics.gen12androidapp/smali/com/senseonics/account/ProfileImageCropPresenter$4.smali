.class Lcom/senseonics/account/ProfileImageCropPresenter$4;
.super Ljava/lang/Object;
.source "ProfileImageCropPresenter.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/account/ProfileImageCropPresenter;->handleCroppedImageResult(Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/account/ProfileImageCropPresenter;

.field final synthetic val$profileImageBase64Encoded:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/senseonics/account/ProfileImageCropPresenter;Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/senseonics/account/ProfileImageCropPresenter$4;->this$0:Lcom/senseonics/account/ProfileImageCropPresenter;

    iput-object p2, p0, Lcom/senseonics/account/ProfileImageCropPresenter$4;->val$profileImageBase64Encoded:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/senseonics/account/ProfileImageCropPresenter$4;->this$0:Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-static {p1}, Lcom/senseonics/account/ProfileImageCropPresenter;->access$300(Lcom/senseonics/account/ProfileImageCropPresenter;)Lcom/senseonics/account/UserAccountModel;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter$4;->val$profileImageBase64Encoded:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/senseonics/account/UserAccountModel;->setProfileImage(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/senseonics/account/ProfileImageCropPresenter$4;->this$0:Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-static {p1}, Lcom/senseonics/account/ProfileImageCropPresenter;->access$400(Lcom/senseonics/account/ProfileImageCropPresenter;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/senseonics/account/ProfileImageCropPresenter$4;->this$0:Lcom/senseonics/account/ProfileImageCropPresenter;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1, v0}, Lcom/senseonics/account/ProfileImageCropPresenter;->access$500(Lcom/senseonics/account/ProfileImageCropPresenter;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/senseonics/account/ProfileImageCropPresenter$4;->call(Ljava/lang/Boolean;)V

    return-void
.end method
