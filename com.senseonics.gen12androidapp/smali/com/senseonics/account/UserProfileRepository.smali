.class public Lcom/senseonics/account/UserProfileRepository;
.super Ljava/lang/Object;
.source "UserProfileRepository.java"


# instance fields
.field private final mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

.field private myCircleService:Lcom/senseonics/api/MyCircleService;

.field private userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;


# direct methods
.method public constructor <init>(Lcom/senseonics/api/MyCircleService;Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;Lcom/senseonics/util/UserInfoSecureStorer;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/senseonics/account/UserProfileRepository;->myCircleService:Lcom/senseonics/api/MyCircleService;

    .line 25
    iput-object p2, p0, Lcom/senseonics/account/UserProfileRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 26
    iput-object p3, p0, Lcom/senseonics/account/UserProfileRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    return-void
.end method


# virtual methods
.method public fetchUserProfile(Lrx/functions/Action1;Lrx/functions/Action1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Lcom/senseonics/mycircle/model/UserProfileDto;",
            ">;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/senseonics/account/UserProfileRepository;->myCircleService:Lcom/senseonics/api/MyCircleService;

    invoke-interface {v0}, Lcom/senseonics/api/MyCircleService;->getUserProfile()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/senseonics/api/RetryObservable;

    iget-object v2, p0, Lcom/senseonics/account/UserProfileRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v1, v2}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 31
    invoke-virtual {v0, v1}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/account/UserProfileRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 32
    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/senseonics/account/UserProfileRepository$1;

    invoke-direct {v1, p0}, Lcom/senseonics/account/UserProfileRepository$1;-><init>(Lcom/senseonics/account/UserProfileRepository;)V

    .line 33
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public uploadProfileImage(Ljava/lang/String;Lrx/functions/Action1;Lrx/functions/Action1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/senseonics/account/UserProfileRepository;->myCircleService:Lcom/senseonics/api/MyCircleService;

    invoke-interface {v0, p1}, Lcom/senseonics/api/MyCircleService;->uploadUserProfileImage(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/api/RetryObservable;

    iget-object v1, p0, Lcom/senseonics/account/UserProfileRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v0, v1}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 44
    invoke-virtual {p1, v0}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/account/UserProfileRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 45
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 46
    invoke-virtual {p1, p2, p3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method
