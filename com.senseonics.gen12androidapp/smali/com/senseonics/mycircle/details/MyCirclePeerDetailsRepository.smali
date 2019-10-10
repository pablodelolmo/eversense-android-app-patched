.class Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;
.super Ljava/lang/Object;
.source "MyCirclePeerDetailsRepository.java"


# instance fields
.field private mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

.field private service:Lcom/senseonics/api/MyCircleService;

.field private userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;Lcom/senseonics/api/MyCircleService;Lcom/senseonics/util/UserInfoSecureStorer;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 23
    iput-object p2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;->service:Lcom/senseonics/api/MyCircleService;

    .line 24
    iput-object p3, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    return-void
.end method


# virtual methods
.method getUserGCMRegIDsByFollowerIDThenPostGCM(ILrx/functions/Action1;Lrx/functions/Action1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/functions/Action1<",
            "Ljava/util/List<",
            "Lcom/senseonics/gcm/FollowerGCMInfo;",
            ">;>;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;->service:Lcom/senseonics/api/MyCircleService;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/senseonics/api/MyCircleService;->getUserGCMRegIDsByFollowerID(Ljava/lang/Integer;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/api/RetryObservable;

    iget-object v1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v0, v1}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 36
    invoke-virtual {p1, v0}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 37
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 38
    invoke-virtual {p1, p2, p3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method updateStatus(Ljava/lang/String;ILrx/functions/Action1;Lrx/functions/Action1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lrx/functions/Action1<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;->service:Lcom/senseonics/api/MyCircleService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/senseonics/api/MyCircleService;->updateStatus(Ljava/lang/String;Ljava/lang/Integer;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/senseonics/api/RetryObservable;

    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {p2, v0}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 29
    invoke-virtual {p1, p2}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 30
    invoke-virtual {p2}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p3, p4}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method
