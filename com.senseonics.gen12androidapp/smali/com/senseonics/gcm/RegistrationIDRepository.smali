.class public Lcom/senseonics/gcm/RegistrationIDRepository;
.super Ljava/lang/Object;
.source "RegistrationIDRepository.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private context:Landroid/content/Context;

.field private gcmRepository:Lcom/senseonics/gcm/GCMRepository;

.field private final mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

.field private service:Lcom/senseonics/api/RegistrationIDService;

.field private userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;Lcom/senseonics/api/RegistrationIDService;Lcom/senseonics/gcm/GCMRepository;Landroid/content/Context;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/UserInfoSecureStorer;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/senseonics/gcm/RegistrationIDRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 36
    iput-object p2, p0, Lcom/senseonics/gcm/RegistrationIDRepository;->service:Lcom/senseonics/api/RegistrationIDService;

    .line 37
    iput-object p3, p0, Lcom/senseonics/gcm/RegistrationIDRepository;->gcmRepository:Lcom/senseonics/gcm/GCMRepository;

    .line 38
    iput-object p4, p0, Lcom/senseonics/gcm/RegistrationIDRepository;->context:Landroid/content/Context;

    .line 39
    iput-object p5, p0, Lcom/senseonics/gcm/RegistrationIDRepository;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 40
    iput-object p6, p0, Lcom/senseonics/gcm/RegistrationIDRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gcm/RegistrationIDRepository;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/senseonics/gcm/RegistrationIDRepository;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/gcm/RegistrationIDRepository;)Lcom/senseonics/util/AccountConstants;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/senseonics/gcm/RegistrationIDRepository;->accountConstants:Lcom/senseonics/util/AccountConstants;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/gcm/RegistrationIDRepository;)Lcom/senseonics/gcm/GCMRepository;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/senseonics/gcm/RegistrationIDRepository;->gcmRepository:Lcom/senseonics/gcm/GCMRepository;

    return-object p0
.end method

.method private getMyFollowerGCMRegIDsObservable(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Ljava/util/List<",
            "Lcom/senseonics/gcm/FollowerGCMInfo;",
            ">;>;)",
            "Lrx/Observable<",
            "Lcom/senseonics/gcm/FollowerGCMInfo;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/senseonics/gcm/RegistrationIDRepository$3;

    invoke-direct {v0, p0}, Lcom/senseonics/gcm/RegistrationIDRepository$3;-><init>(Lcom/senseonics/gcm/RegistrationIDRepository;)V

    .line 74
    invoke-virtual {p1, v0}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getMyFollowerGCMRegIDsThenPostGCM(Lcom/senseonics/util/TransmitterMessageCode;Ljava/util/Calendar;)V
    .locals 2

    .line 44
    iget-object p2, p0, Lcom/senseonics/gcm/RegistrationIDRepository;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p2}, Lcom/senseonics/util/AccountConstants;->isAccountLoggedIn()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object p2, p0, Lcom/senseonics/gcm/RegistrationIDRepository;->service:Lcom/senseonics/api/RegistrationIDService;

    invoke-interface {p2}, Lcom/senseonics/api/RegistrationIDService;->getMyFollowerGCMRegIDs()Lrx/Observable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/senseonics/gcm/RegistrationIDRepository;->getMyFollowerGCMRegIDsObservable(Lrx/Observable;)Lrx/Observable;

    move-result-object p2

    new-instance v0, Lcom/senseonics/api/RetryObservable;

    iget-object v1, p0, Lcom/senseonics/gcm/RegistrationIDRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v0, v1}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 49
    invoke-virtual {p2, v0}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p2

    iget-object v0, p0, Lcom/senseonics/gcm/RegistrationIDRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 50
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p2

    new-instance v0, Lcom/senseonics/gcm/RegistrationIDRepository$1;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/gcm/RegistrationIDRepository$1;-><init>(Lcom/senseonics/gcm/RegistrationIDRepository;Lcom/senseonics/util/TransmitterMessageCode;)V

    new-instance p1, Lcom/senseonics/gcm/RegistrationIDRepository$2;

    invoke-direct {p1, p0}, Lcom/senseonics/gcm/RegistrationIDRepository$2;-><init>(Lcom/senseonics/gcm/RegistrationIDRepository;)V

    .line 51
    invoke-virtual {p2, v0, p1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method
