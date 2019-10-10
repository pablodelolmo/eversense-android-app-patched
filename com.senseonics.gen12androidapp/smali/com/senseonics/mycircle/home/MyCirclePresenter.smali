.class public Lcom/senseonics/mycircle/home/MyCirclePresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "MyCirclePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;",
        ">;"
    }
.end annotation


# instance fields
.field private errorHandler:Lcom/senseonics/view/CommonErrorHandler;

.field private messageHandler:Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;

.field private model:Lcom/senseonics/mycircle/model/MyCircleModel;

.field private repository:Lcom/senseonics/mycircle/home/MyCircleRepository;


# direct methods
.method public constructor <init>(Lcom/senseonics/mycircle/home/MyCircleRepository;Lcom/senseonics/mycircle/model/MyCircleModel;Lcom/senseonics/view/CommonErrorHandler;Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->repository:Lcom/senseonics/mycircle/home/MyCircleRepository;

    .line 34
    iput-object p2, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    .line 35
    iput-object p3, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    .line 36
    iput-object p4, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->messageHandler:Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/mycircle/home/MyCirclePresenter;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/home/MyCirclePresenter;->refreshLists(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/mycircle/home/MyCirclePresenter;Ljava/lang/Throwable;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/home/MyCirclePresenter;->onServiceCallError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/senseonics/mycircle/home/MyCirclePresenter;)Lcom/senseonics/mycircle/model/MyCircleModel;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/mycircle/home/MyCirclePresenter;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/senseonics/mycircle/home/MyCirclePresenter;->onFetchListsComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/senseonics/mycircle/home/MyCirclePresenter;)Ljava/lang/Object;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method private onFetchListsComplete()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-virtual {v0}, Lcom/senseonics/mycircle/model/MyCircleModel;->getRemovedMemberNamesAndSaveMembers()Ljava/util/List;

    move-result-object v0

    .line 88
    iget-boolean v1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->attached:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->messageHandler:Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;

    iget-object v2, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->view:Ljava/lang/Object;

    check-cast v2, Lcom/senseonics/view/DialogShowingView;

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->showRemovedPeersMessage(Ljava/util/List;Lcom/senseonics/view/DialogShowingView;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-virtual {v0}, Lcom/senseonics/mycircle/model/MyCircleModel;->getInvites()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-virtual {v1}, Lcom/senseonics/mycircle/model/MyCircleModel;->getMembers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/senseonics/mycircle/home/MyCirclePresenter;->populateLists(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method private onServiceCallError(Ljava/lang/Throwable;)V
    .locals 3

    .line 106
    iget-boolean v0, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->attached:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->view:Ljava/lang/Object;

    check-cast v1, Lcom/senseonics/view/DialogShowingView;

    new-instance v2, Lcom/senseonics/mycircle/home/MyCirclePresenter$6;

    invoke-direct {v2, p0}, Lcom/senseonics/mycircle/home/MyCirclePresenter$6;-><init>(Lcom/senseonics/mycircle/home/MyCirclePresenter;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/senseonics/view/CommonErrorHandler;->showErrorDialog(Lcom/senseonics/view/DialogShowingView;Ljava/lang/Throwable;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method private populateLists(Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;Z)V"
        }
    .end annotation

    .line 96
    iget-boolean v0, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->attached:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;

    invoke-interface {v0, p1}, Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;->setInvitationsList(Ljava/util/List;)V

    .line 98
    iget-object p1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;

    invoke-interface {p1, p2}, Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;->setMembersList(Ljava/util/List;)V

    if-eqz p3, :cond_0

    .line 100
    iget-object p1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;

    invoke-interface {p1}, Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;->hideProgress()V

    :cond_0
    return-void
.end method

.method private refreshLists(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCircleModel;->reset()V

    .line 61
    iget-object p1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCircleModel;->getInvites()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-virtual {v0}, Lcom/senseonics/mycircle/model/MyCircleModel;->getMembers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/mycircle/home/MyCirclePresenter;->populateLists(Ljava/util/List;Ljava/util/List;Z)V

    .line 63
    :cond_0
    iget-boolean p1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->attached:Z

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;

    invoke-interface {p1}, Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;->showProgress()V

    .line 66
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCirclePresenter;->repository:Lcom/senseonics/mycircle/home/MyCircleRepository;

    new-instance v1, Lcom/senseonics/mycircle/home/MyCirclePresenter$3;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/mycircle/home/MyCirclePresenter$3;-><init>(Lcom/senseonics/mycircle/home/MyCirclePresenter;Ljava/util/List;)V

    new-instance v2, Lcom/senseonics/mycircle/home/MyCirclePresenter$4;

    invoke-direct {v2, p0}, Lcom/senseonics/mycircle/home/MyCirclePresenter$4;-><init>(Lcom/senseonics/mycircle/home/MyCirclePresenter;)V

    new-instance v3, Lcom/senseonics/mycircle/home/MyCirclePresenter$5;

    invoke-direct {v3, p0, p1}, Lcom/senseonics/mycircle/home/MyCirclePresenter$5;-><init>(Lcom/senseonics/mycircle/home/MyCirclePresenter;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/senseonics/mycircle/home/MyCircleRepository;->getPeerLists(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 42
    new-instance v0, Lcom/senseonics/mycircle/home/MyCirclePresenter$1;

    invoke-direct {v0, p0}, Lcom/senseonics/mycircle/home/MyCirclePresenter$1;-><init>(Lcom/senseonics/mycircle/home/MyCirclePresenter;)V

    new-instance v1, Lcom/senseonics/mycircle/home/MyCirclePresenter$2;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/mycircle/home/MyCirclePresenter$2;-><init>(Lcom/senseonics/mycircle/home/MyCirclePresenter;Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;)V

    invoke-interface {p1, v0, v1}, Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;->initViews(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 55
    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/home/MyCirclePresenter;->refreshLists(Z)V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/home/MyCirclePresenter;->attach(Lcom/senseonics/mycircle/home/MyCirclePresenter$MyCirclesView;)V

    return-void
.end method
