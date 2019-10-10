.class public Lcom/senseonics/account/UserProfilePresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "UserProfilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/account/UserProfilePresenter$UserProfileView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/account/UserProfilePresenter$UserProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field private errorHandler:Lcom/senseonics/view/CommonErrorHandler;

.field private model:Lcom/senseonics/account/UserAccountModel;

.field private repository:Lcom/senseonics/account/UserProfileRepository;


# direct methods
.method public constructor <init>(Lcom/senseonics/account/UserProfileRepository;Lcom/senseonics/account/UserAccountModel;Lcom/senseonics/view/CommonErrorHandler;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/senseonics/account/UserProfilePresenter;->repository:Lcom/senseonics/account/UserProfileRepository;

    .line 26
    iput-object p2, p0, Lcom/senseonics/account/UserProfilePresenter;->model:Lcom/senseonics/account/UserAccountModel;

    .line 27
    iput-object p3, p0, Lcom/senseonics/account/UserProfilePresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/account/UserProfilePresenter;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/senseonics/account/UserProfilePresenter;->refreshUserData()V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/account/UserProfilePresenter;)Lcom/senseonics/account/UserAccountModel;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/senseonics/account/UserProfilePresenter;->model:Lcom/senseonics/account/UserAccountModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/account/UserProfilePresenter;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/senseonics/account/UserProfilePresenter;->displayProfile()V

    return-void
.end method

.method static synthetic access$300(Lcom/senseonics/account/UserProfilePresenter;Ljava/lang/Throwable;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/senseonics/account/UserProfilePresenter;->onProfileFetchError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private displayProfile()V
    .locals 3

    .line 76
    iget-boolean v0, p0, Lcom/senseonics/account/UserProfilePresenter;->attached:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    iget-object v1, p0, Lcom/senseonics/account/UserProfilePresenter;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v1}, Lcom/senseonics/account/UserAccountModel;->getMemberName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/account/UserProfilePresenter;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v2}, Lcom/senseonics/account/UserAccountModel;->getProfileImage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;->displayProfileNameAndImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    invoke-interface {v0}, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;->hideProgress()V

    :cond_0
    return-void
.end method

.method private onProfileFetchError(Ljava/lang/Throwable;)V
    .locals 3

    .line 83
    iget-boolean v0, p0, Lcom/senseonics/account/UserProfilePresenter;->attached:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    invoke-interface {v0}, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;->hideProgress()V

    .line 85
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    iget-object v1, p0, Lcom/senseonics/account/UserProfilePresenter;->view:Ljava/lang/Object;

    check-cast v1, Lcom/senseonics/view/DialogShowingView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/senseonics/view/CommonErrorHandler;->showErrorDialog(Lcom/senseonics/view/DialogShowingView;Ljava/lang/Throwable;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method private refreshUserData()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter;->repository:Lcom/senseonics/account/UserProfileRepository;

    new-instance v1, Lcom/senseonics/account/UserProfilePresenter$3;

    invoke-direct {v1, p0}, Lcom/senseonics/account/UserProfilePresenter$3;-><init>(Lcom/senseonics/account/UserProfilePresenter;)V

    new-instance v2, Lcom/senseonics/account/UserProfilePresenter$4;

    invoke-direct {v2, p0}, Lcom/senseonics/account/UserProfilePresenter$4;-><init>(Lcom/senseonics/account/UserProfilePresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/account/UserProfileRepository;->fetchUserProfile(Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/account/UserProfilePresenter$UserProfileView;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 33
    new-instance v0, Lcom/senseonics/account/UserProfilePresenter$1;

    invoke-direct {v0, p0}, Lcom/senseonics/account/UserProfilePresenter$1;-><init>(Lcom/senseonics/account/UserProfilePresenter;)V

    new-instance v1, Lcom/senseonics/account/UserProfilePresenter$2;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/account/UserProfilePresenter$2;-><init>(Lcom/senseonics/account/UserProfilePresenter;Lcom/senseonics/account/UserProfilePresenter$UserProfileView;)V

    invoke-interface {p1, v0, v1}, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;->setupProfileViews(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/senseonics/account/UserProfilePresenter;->loadProfile()V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    invoke-virtual {p0, p1}, Lcom/senseonics/account/UserProfilePresenter;->attach(Lcom/senseonics/account/UserProfilePresenter$UserProfileView;)V

    return-void
.end method

.method public loadProfile()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v0}, Lcom/senseonics/account/UserAccountModel;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/senseonics/account/UserProfilePresenter;->displayProfile()V

    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/account/UserProfilePresenter;->refreshUserData()V

    :goto_0
    return-void
.end method
