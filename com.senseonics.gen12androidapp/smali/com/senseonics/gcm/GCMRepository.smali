.class public Lcom/senseonics/gcm/GCMRepository;
.super Ljava/lang/Object;
.source "GCMRepository.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final GCM_KEY:Ljava/lang/String;

.field private final mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

.field private service:Lcom/senseonics/api/GCMService;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;Lcom/senseonics/api/GCMService;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AAAA8ycmn9A:APA91bFIJ34LuYK61p5ExZW5mhpkPvets5ADNiDPEOTvw1ok2WK04126j4nLc85Au20k8-GnVN8tK4w360FvJVKB0m1LTjXFKJ-pFU5LFqlOoIg77o7Sdi8tBv_fxpXZ0pU0mQooaM-c"

    .line 13
    iput-object v0, p0, Lcom/senseonics/gcm/GCMRepository;->GCM_KEY:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/senseonics/gcm/GCMRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 20
    iput-object p2, p0, Lcom/senseonics/gcm/GCMRepository;->service:Lcom/senseonics/api/GCMService;

    return-void
.end method


# virtual methods
.method public postGCM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 24
    new-instance v0, Lcom/senseonics/gcm/GCMSubMessage;

    const-string v1, "default"

    invoke-direct {v0, p2, p3, v1}, Lcom/senseonics/gcm/GCMSubMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance p2, Lcom/senseonics/gcm/GCMMessage;

    const/4 p3, 0x1

    .line 32
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v1, "high"

    invoke-direct {p2, p1, p3, v1, v0}, Lcom/senseonics/gcm/GCMMessage;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/senseonics/gcm/GCMSubMessage;)V

    .line 37
    iget-object p1, p0, Lcom/senseonics/gcm/GCMRepository;->service:Lcom/senseonics/api/GCMService;

    const-string p3, "application/json"

    const-string v0, "key=AAAA8ycmn9A:APA91bFIJ34LuYK61p5ExZW5mhpkPvets5ADNiDPEOTvw1ok2WK04126j4nLc85Au20k8-GnVN8tK4w360FvJVKB0m1LTjXFKJ-pFU5LFqlOoIg77o7Sdi8tBv_fxpXZ0pU0mQooaM-c"

    invoke-interface {p1, p3, v0, p2}, Lcom/senseonics/api/GCMService;->postGCM(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/gcm/GCMMessage;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/gcm/GCMRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 38
    invoke-virtual {p2}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/senseonics/gcm/GCMRepository$1;

    invoke-direct {p2, p0}, Lcom/senseonics/gcm/GCMRepository$1;-><init>(Lcom/senseonics/gcm/GCMRepository;)V

    new-instance p3, Lcom/senseonics/gcm/GCMRepository$2;

    invoke-direct {p3, p0}, Lcom/senseonics/gcm/GCMRepository$2;-><init>(Lcom/senseonics/gcm/GCMRepository;)V

    .line 39
    invoke-virtual {p1, p2, p3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method
