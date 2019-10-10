.class interface abstract Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;
.super Ljava/lang/Object;
.source "ProfileImageCropPresenter.java"

# interfaces
.implements Lcom/senseonics/view/DialogShowingView;
.implements Lcom/senseonics/util/ProgressShowingView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/account/ProfileImageCropPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SelectProfileImageView"
.end annotation


# virtual methods
.method public abstract finish()V
.end method

.method public abstract prepareImage()V
.end method

.method public abstract setup(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;)V
.end method
