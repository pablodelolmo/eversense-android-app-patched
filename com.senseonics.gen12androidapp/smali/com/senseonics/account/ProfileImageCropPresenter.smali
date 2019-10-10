.class Lcom/senseonics/account/ProfileImageCropPresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "ProfileImageCropPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmapUtil:Lcom/senseonics/util/BitmapUtil;

.field private errorHandler:Lcom/senseonics/view/CommonErrorHandler;

.field private model:Lcom/senseonics/account/UserAccountModel;

.field private repository:Lcom/senseonics/account/UserProfileRepository;


# direct methods
.method public constructor <init>(Lcom/senseonics/account/UserProfileRepository;Lcom/senseonics/account/UserAccountModel;Lcom/senseonics/view/CommonErrorHandler;Lcom/senseonics/util/BitmapUtil;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->repository:Lcom/senseonics/account/UserProfileRepository;

    .line 32
    iput-object p2, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->model:Lcom/senseonics/account/UserAccountModel;

    .line 33
    iput-object p3, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    .line 34
    iput-object p4, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/account/ProfileImageCropPresenter;)Ljava/lang/Object;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/account/ProfileImageCropPresenter;)Ljava/lang/Object;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/account/ProfileImageCropPresenter;Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/senseonics/account/ProfileImageCropPresenter;->handleCroppedImageResult(Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/senseonics/account/ProfileImageCropPresenter;)Lcom/senseonics/account/UserAccountModel;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->model:Lcom/senseonics/account/UserAccountModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/senseonics/account/ProfileImageCropPresenter;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/senseonics/account/ProfileImageCropPresenter;->finishImageSelection()V

    return-void
.end method

.method static synthetic access$500(Lcom/senseonics/account/ProfileImageCropPresenter;Ljava/lang/Throwable;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/senseonics/account/ProfileImageCropPresenter;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private finishImageSelection()V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->attached:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;

    invoke-interface {v0}, Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;->hideProgress()V

    .line 104
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;

    invoke-interface {v0}, Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;->finish()V

    :cond_0
    return-void
.end method

.method private handleCroppedImageResult(Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;)V
    .locals 6

    .line 61
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;

    const v1, 0x7f0f027b

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    const/16 v1, 0x96

    invoke-virtual {v0, p1, v1, v1}, Lcom/senseonics/util/BitmapUtil;->getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "data:image/png;base64,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    invoke-virtual {v1, p1}, Lcom/senseonics/util/BitmapUtil;->convertBitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;

    invoke-interface {v0}, Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;->showProgress()V

    .line 72
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->repository:Lcom/senseonics/account/UserProfileRepository;

    new-instance v1, Lcom/senseonics/account/ProfileImageCropPresenter$4;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/account/ProfileImageCropPresenter$4;-><init>(Lcom/senseonics/account/ProfileImageCropPresenter;Ljava/lang/String;)V

    new-instance v2, Lcom/senseonics/account/ProfileImageCropPresenter$5;

    invoke-direct {v2, p0}, Lcom/senseonics/account/ProfileImageCropPresenter$5;-><init>(Lcom/senseonics/account/ProfileImageCropPresenter;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/senseonics/account/UserProfileRepository;->uploadProfileImage(Ljava/lang/String;Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-void
.end method

.method private handleError(Ljava/lang/Throwable;)V
    .locals 3

    .line 95
    iget-boolean v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->attached:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;

    invoke-interface {v0}, Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;->hideProgress()V

    .line 97
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    iget-object v1, p0, Lcom/senseonics/account/ProfileImageCropPresenter;->view:Ljava/lang/Object;

    check-cast v1, Lcom/senseonics/view/DialogShowingView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/senseonics/view/CommonErrorHandler;->showErrorDialog(Lcom/senseonics/view/DialogShowingView;Ljava/lang/Throwable;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;)V
    .locals 3

    .line 39
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 40
    new-instance v0, Lcom/senseonics/account/ProfileImageCropPresenter$1;

    invoke-direct {v0, p0}, Lcom/senseonics/account/ProfileImageCropPresenter$1;-><init>(Lcom/senseonics/account/ProfileImageCropPresenter;)V

    new-instance v1, Lcom/senseonics/account/ProfileImageCropPresenter$2;

    invoke-direct {v1, p0}, Lcom/senseonics/account/ProfileImageCropPresenter$2;-><init>(Lcom/senseonics/account/ProfileImageCropPresenter;)V

    new-instance v2, Lcom/senseonics/account/ProfileImageCropPresenter$3;

    invoke-direct {v2, p0}, Lcom/senseonics/account/ProfileImageCropPresenter$3;-><init>(Lcom/senseonics/account/ProfileImageCropPresenter;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;->setup(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;)V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;

    invoke-virtual {p0, p1}, Lcom/senseonics/account/ProfileImageCropPresenter;->attach(Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;)V

    return-void
.end method
