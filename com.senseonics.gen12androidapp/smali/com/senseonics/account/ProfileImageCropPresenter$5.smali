.class Lcom/senseonics/account/ProfileImageCropPresenter$5;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/account/ProfileImageCropPresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/account/ProfileImageCropPresenter;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/senseonics/account/ProfileImageCropPresenter$5;->this$0:Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/senseonics/account/ProfileImageCropPresenter$5;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter$5;->this$0:Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-static {v0, p1}, Lcom/senseonics/account/ProfileImageCropPresenter;->access$500(Lcom/senseonics/account/ProfileImageCropPresenter;Ljava/lang/Throwable;)V

    return-void
.end method
