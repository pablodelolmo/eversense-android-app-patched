.class public Lcom/senseonics/authentication/UserLoginPresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "UserLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;",
        ">;"
    }
.end annotation


# instance fields
.field private errorHandler:Lcom/senseonics/view/CommonErrorHandler;

.field private model:Lcom/senseonics/account/UserAccountModel;

.field private repository:Lcom/senseonics/account/UserProfileRepository;


# direct methods
.method public constructor <init>(Lcom/senseonics/account/UserProfileRepository;Lcom/senseonics/view/CommonErrorHandler;Lcom/senseonics/account/UserAccountModel;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter;->repository:Lcom/senseonics/account/UserProfileRepository;

    .line 33
    iput-object p2, p0, Lcom/senseonics/authentication/UserLoginPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    .line 34
    iput-object p3, p0, Lcom/senseonics/authentication/UserLoginPresenter;->model:Lcom/senseonics/account/UserAccountModel;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/authentication/UserLoginPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/senseonics/authentication/UserLoginPresenter;->handleLoginClicked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/authentication/UserLoginPresenter;)Lcom/senseonics/account/UserAccountModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->model:Lcom/senseonics/account/UserAccountModel;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/senseonics/authentication/UserLoginPresenter;)Lcom/senseonics/view/CommonErrorHandler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/authentication/UserLoginPresenter;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->attached:Z

    return p0
.end method

.method static synthetic access$300(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/senseonics/authentication/UserLoginPresenter;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->attached:Z

    return p0
.end method

.method static synthetic access$700(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method private handleLoginClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->setLoginButtonEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {v0}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->showProgress()V

    .line 80
    new-instance v0, Lcom/senseonics/authentication/UserLoginPresenter$6;

    invoke-direct {v0, p0}, Lcom/senseonics/authentication/UserLoginPresenter$6;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;)V

    .line 102
    new-instance v1, Lcom/senseonics/authentication/UserLoginPresenter$7;

    invoke-direct {v1, p0}, Lcom/senseonics/authentication/UserLoginPresenter$7;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;)V

    .line 120
    iget-object v2, p0, Lcom/senseonics/authentication/UserLoginPresenter;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v2, p1, p2}, Lcom/senseonics/account/UserAccountModel;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter;->repository:Lcom/senseonics/account/UserProfileRepository;

    invoke-virtual {p1, v0, v1}, Lcom/senseonics/account/UserProfileRepository;->fetchUserProfile(Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V
    .locals 8

    .line 39
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 40
    invoke-interface {p1, v0}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->setLoginButtonEnabled(Z)V

    .line 41
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->model:Lcom/senseonics/account/UserAccountModel;

    .line 42
    invoke-virtual {v0}, Lcom/senseonics/account/UserAccountModel;->getCurrentUserDisplayName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/senseonics/authentication/UserLoginPresenter$1;

    invoke-direct {v3, p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter$1;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V

    new-instance v4, Lcom/senseonics/authentication/UserLoginPresenter$2;

    invoke-direct {v4, p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter$2;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V

    new-instance v5, Lcom/senseonics/authentication/UserLoginPresenter$3;

    invoke-direct {v5, p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter$3;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V

    new-instance v6, Lcom/senseonics/authentication/UserLoginPresenter$4;

    invoke-direct {v6, p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter$4;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V

    new-instance v7, Lcom/senseonics/authentication/UserLoginPresenter$5;

    invoke-direct {v7, p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter$5;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V

    move-object v1, p1

    .line 41
    invoke-interface/range {v1 .. v7}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->setupViews(Ljava/lang/String;Landroid/text/TextWatcher;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-virtual {p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter;->attach(Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V

    return-void
.end method
