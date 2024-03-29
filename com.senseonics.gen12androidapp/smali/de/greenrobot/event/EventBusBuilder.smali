.class public Lde/greenrobot/event/EventBusBuilder;
.super Ljava/lang/Object;
.source "EventBusBuilder.java"


# static fields
.field private static final DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;


# instance fields
.field eventInheritance:Z

.field executorService:Ljava/util/concurrent/ExecutorService;

.field logNoSubscriberMessages:Z

.field logSubscriberExceptions:Z

.field sendNoSubscriberEvent:Z

.field sendSubscriberExceptionEvent:Z

.field skipMethodVerificationForClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field throwSubscriberException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lde/greenrobot/event/EventBusBuilder;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lde/greenrobot/event/EventBusBuilder;->logSubscriberExceptions:Z

    .line 31
    iput-boolean v0, p0, Lde/greenrobot/event/EventBusBuilder;->logNoSubscriberMessages:Z

    .line 32
    iput-boolean v0, p0, Lde/greenrobot/event/EventBusBuilder;->sendSubscriberExceptionEvent:Z

    .line 33
    iput-boolean v0, p0, Lde/greenrobot/event/EventBusBuilder;->sendNoSubscriberEvent:Z

    .line 35
    iput-boolean v0, p0, Lde/greenrobot/event/EventBusBuilder;->eventInheritance:Z

    .line 36
    sget-object v0, Lde/greenrobot/event/EventBusBuilder;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lde/greenrobot/event/EventBusBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public build()Lde/greenrobot/event/EventBus;
    .locals 1

    .line 133
    new-instance v0, Lde/greenrobot/event/EventBus;

    invoke-direct {v0, p0}, Lde/greenrobot/event/EventBus;-><init>(Lde/greenrobot/event/EventBusBuilder;)V

    return-object v0
.end method

.method public eventInheritance(Z)Lde/greenrobot/event/EventBusBuilder;
    .locals 0

    .line 87
    iput-boolean p1, p0, Lde/greenrobot/event/EventBusBuilder;->eventInheritance:Z

    return-object p0
.end method

.method public executorService(Ljava/util/concurrent/ExecutorService;)Lde/greenrobot/event/EventBusBuilder;
    .locals 0

    .line 97
    iput-object p1, p0, Lde/greenrobot/event/EventBusBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public installDefaultEventBus()Lde/greenrobot/event/EventBus;
    .locals 3

    .line 121
    const-class v0, Lde/greenrobot/event/EventBus;

    monitor-enter v0

    .line 122
    :try_start_0
    sget-object v1, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Lde/greenrobot/event/EventBusException;

    const-string v2, "Default instance already exists. It may be only set once before it\'s used the first time to ensure consistent behavior."

    invoke-direct {v1, v2}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lde/greenrobot/event/EventBusBuilder;->build()Lde/greenrobot/event/EventBus;

    move-result-object v1

    sput-object v1, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    .line 127
    sget-object v1, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public logNoSubscriberMessages(Z)Lde/greenrobot/event/EventBusBuilder;
    .locals 0

    .line 50
    iput-boolean p1, p0, Lde/greenrobot/event/EventBusBuilder;->logNoSubscriberMessages:Z

    return-object p0
.end method

.method public logSubscriberExceptions(Z)Lde/greenrobot/event/EventBusBuilder;
    .locals 0

    .line 44
    iput-boolean p1, p0, Lde/greenrobot/event/EventBusBuilder;->logSubscriberExceptions:Z

    return-object p0
.end method

.method public sendNoSubscriberEvent(Z)Lde/greenrobot/event/EventBusBuilder;
    .locals 0

    .line 62
    iput-boolean p1, p0, Lde/greenrobot/event/EventBusBuilder;->sendNoSubscriberEvent:Z

    return-object p0
.end method

.method public sendSubscriberExceptionEvent(Z)Lde/greenrobot/event/EventBusBuilder;
    .locals 0

    .line 56
    iput-boolean p1, p0, Lde/greenrobot/event/EventBusBuilder;->sendSubscriberExceptionEvent:Z

    return-object p0
.end method

.method public skipMethodVerificationFor(Ljava/lang/Class;)Lde/greenrobot/event/EventBusBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lde/greenrobot/event/EventBusBuilder;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lde/greenrobot/event/EventBusBuilder;->skipMethodVerificationForClasses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBusBuilder;->skipMethodVerificationForClasses:Ljava/util/List;

    .line 110
    :cond_0
    iget-object v0, p0, Lde/greenrobot/event/EventBusBuilder;->skipMethodVerificationForClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public throwSubscriberException(Z)Lde/greenrobot/event/EventBusBuilder;
    .locals 0

    .line 73
    iput-boolean p1, p0, Lde/greenrobot/event/EventBusBuilder;->throwSubscriberException:Z

    return-object p0
.end method
