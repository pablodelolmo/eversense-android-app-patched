.class Lcom/senseonics/account/ProfileImageCropPresenter$1;
.super Ljava/lang/Object;
.source "ProfileImageCropPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 41
    iput-object p1, p0, Lcom/senseonics/account/ProfileImageCropPresenter$1;->this$0:Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/senseonics/account/ProfileImageCropPresenter$1;->this$0:Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-static {p1}, Lcom/senseonics/account/ProfileImageCropPresenter;->access$000(Lcom/senseonics/account/ProfileImageCropPresenter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;

    invoke-interface {p1}, Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;->prepareImage()V

    return-void
.end method
