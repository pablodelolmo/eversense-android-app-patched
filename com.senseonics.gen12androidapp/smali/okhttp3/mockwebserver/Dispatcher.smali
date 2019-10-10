.class public abstract Lokhttp3/mockwebserver/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dispatch(Lokhttp3/mockwebserver/RecordedRequest;)Lokhttp3/mockwebserver/MockResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public peek()Lokhttp3/mockwebserver/MockResponse;
    .locals 2

    .line 33
    new-instance v0, Lokhttp3/mockwebserver/MockResponse;

    invoke-direct {v0}, Lokhttp3/mockwebserver/MockResponse;-><init>()V

    sget-object v1, Lokhttp3/mockwebserver/SocketPolicy;->KEEP_OPEN:Lokhttp3/mockwebserver/SocketPolicy;

    invoke-virtual {v0, v1}, Lokhttp3/mockwebserver/MockResponse;->setSocketPolicy(Lokhttp3/mockwebserver/SocketPolicy;)Lokhttp3/mockwebserver/MockResponse;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
