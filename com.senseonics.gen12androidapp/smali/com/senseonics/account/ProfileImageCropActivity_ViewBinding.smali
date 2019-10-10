.class public Lcom/senseonics/account/ProfileImageCropActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ProfileImageCropActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/senseonics/account/ProfileImageCropActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/senseonics/account/ProfileImageCropActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/account/ProfileImageCropActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/senseonics/account/ProfileImageCropActivity_ViewBinding;->target:Lcom/senseonics/account/ProfileImageCropActivity;

    const-string v0, "field \'cropImageView\'"

    .line 23
    const-class v1, Lcom/theartofdev/edmodo/cropper/CropImageView;

    const v2, 0x7f0900b0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/CropImageView;

    iput-object v0, p1, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    const-string v0, "field \'cropImageViewContainer\'"

    .line 24
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0900b1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageViewContainer:Landroid/widget/LinearLayout;

    const-string v0, "field \'cancelButton\'"

    .line 25
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090092

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/senseonics/account/ProfileImageCropActivity;->cancelButton:Landroid/widget/Button;

    const-string v0, "field \'chooseButton\'"

    .line 26
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09009d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/senseonics/account/ProfileImageCropActivity;->chooseButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity_ViewBinding;->target:Lcom/senseonics/account/ProfileImageCropActivity;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 35
    iput-object v1, v0, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 36
    iput-object v1, v0, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageViewContainer:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, v0, Lcom/senseonics/account/ProfileImageCropActivity;->cancelButton:Landroid/widget/Button;

    .line 38
    iput-object v1, v0, Lcom/senseonics/account/ProfileImageCropActivity;->chooseButton:Landroid/widget/Button;

    .line 40
    iput-object v1, p0, Lcom/senseonics/account/ProfileImageCropActivity_ViewBinding;->target:Lcom/senseonics/account/ProfileImageCropActivity;

    return-void
.end method
