.class Lcom/theartofdev/edmodo/cropper/CropImageView$1;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/theartofdev/edmodo/cropper/CropImageView;


# direct methods
.method constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$1;->this$0:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCropWindowChanged(Z)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$1;->this$0:Lcom/theartofdev/edmodo/cropper/CropImageView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->access$000(Lcom/theartofdev/edmodo/cropper/CropImageView;ZZ)V

    .line 311
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$1;->this$0:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->access$100(Lcom/theartofdev/edmodo/cropper/CropImageView;)Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetCropOverlayReleasedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$1;->this$0:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetCropOverlayReleasedListener;->onCropOverlayReleased(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
