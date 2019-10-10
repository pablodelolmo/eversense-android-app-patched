.class public Lcom/senseonics/mycircle/home/MyCircleRepository;
.super Ljava/lang/Object;
.source "MyCircleRepository.java"


# instance fields
.field private final mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

.field private final service:Lcom/senseonics/api/MyCircleService;

.field private userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;Lcom/senseonics/api/MyCircleService;Lcom/senseonics/util/UserInfoSecureStorer;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 28
    iput-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleRepository;->service:Lcom/senseonics/api/MyCircleService;

    .line 29
    iput-object p3, p0, Lcom/senseonics/mycircle/home/MyCircleRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    return-void
.end method

.method private getPeerListObservable(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/PeerDto;",
            ">;>;)",
            "Lrx/Observable<",
            "Lcom/senseonics/mycircle/model/PeerDto;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/senseonics/mycircle/home/MyCircleRepository$1;

    invoke-direct {v0, p0}, Lcom/senseonics/mycircle/home/MyCircleRepository$1;-><init>(Lcom/senseonics/mycircle/home/MyCircleRepository;)V

    .line 42
    invoke-virtual {p1, v0}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getPeerLists(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Lcom/senseonics/mycircle/model/PeerDto;",
            ">;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleRepository;->service:Lcom/senseonics/api/MyCircleService;

    invoke-interface {v0}, Lcom/senseonics/api/MyCircleService;->getInvitedPeerList()Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/mycircle/home/MyCircleRepository;->getPeerListObservable(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleRepository;->service:Lcom/senseonics/api/MyCircleService;

    invoke-interface {v1}, Lcom/senseonics/api/MyCircleService;->getMemberList()Lrx/Observable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/mycircle/home/MyCircleRepository;->getPeerListObservable(Lrx/Observable;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/senseonics/api/RetryObservable;

    iget-object v2, p0, Lcom/senseonics/mycircle/home/MyCircleRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v1, v2}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 34
    invoke-virtual {v0, v1}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 35
    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p1, p2, p3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;

    return-void
.end method
