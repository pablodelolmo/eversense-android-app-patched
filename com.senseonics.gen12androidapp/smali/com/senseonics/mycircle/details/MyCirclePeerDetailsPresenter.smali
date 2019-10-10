.class Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "MyCirclePeerDetailsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private context:Landroid/content/Context;

.field private errorHandler:Lcom/senseonics/view/CommonErrorHandler;

.field private gcmRepository:Lcom/senseonics/gcm/GCMRepository;

.field private model:Lcom/senseonics/mycircle/model/MyCircleModel;

.field private onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private repository:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;


# direct methods
.method public constructor <init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;Lcom/senseonics/gcm/GCMRepository;Lcom/senseonics/view/CommonErrorHandler;Lcom/senseonics/mycircle/model/MyCircleModel;Landroid/content/Context;Lcom/senseonics/util/AccountConstants;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->repository:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;

    .line 44
    iput-object p2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->gcmRepository:Lcom/senseonics/gcm/GCMRepository;

    .line 45
    iput-object p3, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    .line 46
    iput-object p4, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    .line 47
    iput-object p5, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->context:Landroid/content/Context;

    .line 48
    iput-object p6, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->accountConstants:Lcom/senseonics/util/AccountConstants;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/String;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->handleShareDataChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->handleRemoveClicked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Ljava/lang/Object;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/String;I)Lrx/functions/Action1;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->getGCMRegIDsSuccessAction(Ljava/lang/String;I)Lrx/functions/Action1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Ljava/lang/Object;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lcom/senseonics/mycircle/model/MyCircleModel;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->handleShareDataSuccess()V

    return-void
.end method

.method static synthetic access$1500(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->handleShareDataError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Ljava/lang/Object;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->handleRemovePeerSuccess()V

    return-void
.end method

.method static synthetic access$300(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/Throwable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->handleRemovePeerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lcom/senseonics/util/AccountConstants;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->accountConstants:Lcom/senseonics/util/AccountConstants;

    return-object p0
.end method

.method static synthetic access$600(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lcom/senseonics/gcm/GCMRepository;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->gcmRepository:Lcom/senseonics/gcm/GCMRepository;

    return-object p0
.end method

.method static synthetic access$700(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lrx/functions/Action1;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->getPeerRemovalSuccessAction()Lrx/functions/Action1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lrx/functions/Action1;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->getPeerRemovalErrorAction()Lrx/functions/Action1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->repository:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;

    return-object p0
.end method

.method private getGCMRegIDsSuccessAction(Ljava/lang/String;I)Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lrx/functions/Action1<",
            "Ljava/util/List<",
            "Lcom/senseonics/gcm/FollowerGCMInfo;",
            ">;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$5;-><init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;ILjava/lang/String;)V

    return-object v0
.end method

.method private getPeerRemovalErrorAction()Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$4;

    invoke-direct {v0, p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$4;-><init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)V

    return-object v0
.end method

.method private getPeerRemovalSuccessAction()Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$3;

    invoke-direct {v0, p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$3;-><init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)V

    return-object v0
.end method

.method private handleRemoveClicked(Ljava/lang/String;I)V
    .locals 10

    .line 123
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->setRemoveButtonEnabled(Z)V

    .line 124
    new-instance v6, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;

    invoke-direct {v6, p0, p2, p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$6;-><init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;ILjava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->view:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;

    const v3, 0x7f0f0292

    const v4, 0x7f0f01e6

    const/4 v5, 0x0

    const/4 v7, 0x1

    const v8, 0x7f0f0186

    const v9, 0x7f0f029a

    invoke-interface/range {v2 .. v9}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->showDialogWithCustomButtons(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;ZII)V

    return-void
.end method

.method private handleRemovePeerError(Ljava/lang/Throwable;)V
    .locals 3

    .line 161
    iget-boolean v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->attached:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    iget-object v1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->view:Ljava/lang/Object;

    check-cast v1, Lcom/senseonics/view/DialogShowingView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/senseonics/view/CommonErrorHandler;->showErrorDialog(Lcom/senseonics/view/DialogShowingView;Ljava/lang/Throwable;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    .line 163
    iget-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->setRemoveButtonEnabled(Z)V

    .line 164
    iget-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;

    invoke-interface {p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->hideProgress()V

    :cond_0
    return-void
.end method

.method private handleRemovePeerSuccess()V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->attached:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;

    invoke-interface {v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->hideProgress()V

    .line 156
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;

    invoke-interface {v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->onPeerRemoved()V

    :cond_0
    return-void
.end method

.method private handleShareDataChanged(Ljava/lang/String;Z)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;

    invoke-interface {v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->showProgress()V

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->repository:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;

    new-instance v1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$7;-><init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/String;I)V

    new-instance v2, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$8;

    invoke-direct {v2, p0, p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$8;-><init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;->updateStatus(Ljava/lang/String;ILrx/functions/Action1;Lrx/functions/Action1;)V

    return-void
.end method

.method private handleShareDataError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 195
    iget-boolean p2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->attached:Z

    if-eqz p2, :cond_0

    .line 196
    iget-object p2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->view:Ljava/lang/Object;

    check-cast p2, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;

    invoke-interface {p2}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->hideProgress()V

    .line 197
    iget-object p2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/view/DialogShowingView;

    new-instance v1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$9;

    invoke-direct {v1, p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$9;-><init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/senseonics/view/CommonErrorHandler;->showErrorDialog(Lcom/senseonics/view/DialogShowingView;Ljava/lang/Throwable;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method private handleShareDataSuccess()V
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->attached:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;

    invoke-interface {v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->hideProgress()V

    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;)V
    .locals 5

    .line 53
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 54
    invoke-interface {p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->getPeerEmailFromIntent()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-interface {p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->getPeerIdFromIntent()I

    move-result v1

    .line 57
    new-instance v2, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$1;

    invoke-direct {v2, p0, v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$1;-><init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 64
    iget-object v2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-virtual {v2, v0}, Lcom/senseonics/mycircle/model/MyCircleModel;->getPeer(Ljava/lang/String;)Lcom/senseonics/mycircle/model/MyCirclePeerModel;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v4, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$2;-><init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/String;I)V

    invoke-interface {p1, v2, v3, v4}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->initViews(Lcom/senseonics/mycircle/model/MyCirclePeerModel;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 73
    invoke-interface {p1, v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->setRemoveButtonEnabled(Z)V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->attach(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;)V

    return-void
.end method
