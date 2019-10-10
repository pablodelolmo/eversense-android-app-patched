.class Lcom/senseonics/account/ProfileImageCropPresenter$3;
.super Ljava/lang/Object;
.source "ProfileImageCropPresenter.java"

# interfaces
.implements Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/account/ProfileImageCropPresenter;->attach(Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/account/ProfileImageCropPresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/account/ProfileImageCropPresenter;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/senseonics/account/ProfileImageCropPresenter$3;->this$0:Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCropImageComplete(Lcom/theartofdev/edmodo/cropper/CropImageView;Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/senseonics/account/ProfileImageCropPresenter$3;->this$0:Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-static {p1, p2}, Lcom/senseonics/account/ProfileImageCropPresenter;->access$200(Lcom/senseonics/account/ProfileImageCropPresenter;Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;)V

    return-void
.end method
