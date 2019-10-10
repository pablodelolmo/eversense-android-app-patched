.class public Lcom/senseonics/mycircle/invite/InvitePeerRepository;
.super Ljava/lang/Object;
.source "InvitePeerRepository.java"


# instance fields
.field private final mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

.field private service:Lcom/senseonics/api/MyCircleService;

.field private userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;Lcom/senseonics/api/MyCircleService;Lcom/senseonics/util/UserInfoSecureStorer;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 22
    iput-object p2, p0, Lcom/senseonics/mycircle/invite/InvitePeerRepository;->service:Lcom/senseonics/api/MyCircleService;

    .line 23
    iput-object p3, p0, Lcom/senseonics/mycircle/invite/InvitePeerRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    return-void
.end method


# virtual methods
.method public inviteToCircle(Ljava/lang/String;Ljava/lang/String;Lrx/functions/Action1;Lrx/functions/Action1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Integer;",
            ">;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerRepository;->service:Lcom/senseonics/api/MyCircleService;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/senseonics/api/MyCircleService;->inviteToMyCircle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/senseonics/api/RetryObservable;

    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {p2, v0}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 28
    invoke-virtual {p1, p2}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/mycircle/invite/InvitePeerRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 29
    invoke-virtual {p2}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 30
    invoke-virtual {p1, p3, p4}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method
