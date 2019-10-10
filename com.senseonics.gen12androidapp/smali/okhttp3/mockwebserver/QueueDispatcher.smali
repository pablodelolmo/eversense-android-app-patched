.class public Lokhttp3/mockwebserver/QueueDispatcher;
.super Lokhttp3/mockwebserver/Dispatcher;
.source "QueueDispatcher.java"


# static fields
.field private static final DEAD_LETTER:Lokhttp3/mockwebserver/MockResponse;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private failFastResponse:Lokhttp3/mockwebserver/MockResponse;

.field protected final responseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lokhttp3/mockwebserver/MockResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lokhttp3/mockwebserver/MockResponse;

    invoke-direct {v0}, Lokhttp3/mockwebserver/MockResponse;-><init>()V

    const-string v1, "HTTP/1.1 503 shutting down"

    .line 33
    invoke-virtual {v0, v1}, Lokhttp3/mockwebserver/MockResponse;->setStatus(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;

    move-result-object v0

    sput-object v0, Lokhttp3/mockwebserver/QueueDispatcher;->DEAD_LETTER:Lokhttp3/mockwebserver/MockResponse;

    .line 35
    const-class v0, Lokhttp3/mockwebserver/QueueDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/mockwebserver/QueueDispatcher;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lokhttp3/mockwebserver/Dispatcher;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public dispatch(Lokhttp3/mockwebserver/RecordedRequest;)Lokhttp3/mockwebserver/MockResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lokhttp3/mockwebserver/RecordedRequest;->getRequestLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "GET /favicon.ico HTTP/1.1"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lokhttp3/mockwebserver/QueueDispatcher;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "served "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 44
    new-instance p1, Lokhttp3/mockwebserver/MockResponse;

    invoke-direct {p1}, Lokhttp3/mockwebserver/MockResponse;-><init>()V

    const/16 v0, 0x194

    invoke-virtual {p1, v0}, Lokhttp3/mockwebserver/MockResponse;->setResponseCode(I)Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    return-object p1

    .line 47
    :cond_0
    iget-object p1, p0, Lokhttp3/mockwebserver/QueueDispatcher;->failFastResponse:Lokhttp3/mockwebserver/MockResponse;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 49
    iget-object p1, p0, Lokhttp3/mockwebserver/QueueDispatcher;->failFastResponse:Lokhttp3/mockwebserver/MockResponse;

    return-object p1

    .line 52
    :cond_1
    iget-object p1, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/mockwebserver/MockResponse;

    .line 56
    sget-object v0, Lokhttp3/mockwebserver/QueueDispatcher;->DEAD_LETTER:Lokhttp3/mockwebserver/MockResponse;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lokhttp3/mockwebserver/QueueDispatcher;->DEAD_LETTER:Lokhttp3/mockwebserver/MockResponse;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1
.end method

.method public enqueueResponse(Lokhttp3/mockwebserver/MockResponse;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public peek()Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 62
    iget-object v0, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    if-eqz v0, :cond_0

    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lokhttp3/mockwebserver/QueueDispatcher;->failFastResponse:Lokhttp3/mockwebserver/MockResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/mockwebserver/QueueDispatcher;->failFastResponse:Lokhttp3/mockwebserver/MockResponse;

    return-object v0

    .line 65
    :cond_1
    invoke-super {p0}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v0

    return-object v0
.end method

.method public setFailFast(Lokhttp3/mockwebserver/MockResponse;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lokhttp3/mockwebserver/QueueDispatcher;->failFastResponse:Lokhttp3/mockwebserver/MockResponse;

    return-void
.end method

.method public setFailFast(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 78
    new-instance p1, Lokhttp3/mockwebserver/MockResponse;

    invoke-direct {p1}, Lokhttp3/mockwebserver/MockResponse;-><init>()V

    const/16 v0, 0x194

    invoke-virtual {p1, v0}, Lokhttp3/mockwebserver/MockResponse;->setResponseCode(I)Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 80
    :goto_0
    invoke-virtual {p0, p1}, Lokhttp3/mockwebserver/QueueDispatcher;->setFailFast(Lokhttp3/mockwebserver/MockResponse;)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 73
    iget-object v0, p0, Lokhttp3/mockwebserver/QueueDispatcher;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lokhttp3/mockwebserver/QueueDispatcher;->DEAD_LETTER:Lokhttp3/mockwebserver/MockResponse;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
