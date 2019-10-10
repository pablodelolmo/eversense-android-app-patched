.class Lokhttp3/mockwebserver/MockWebServer$4;
.super Lokhttp3/internal/ws/RealWebSocket$Streams;
.source "MockWebServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/mockwebserver/MockWebServer;->handleWebSocketUpgrade(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/mockwebserver/MockWebServer;

.field final synthetic val$connectionClose:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lokhttp3/mockwebserver/MockWebServer;ZLokio/BufferedSource;Lokio/BufferedSink;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$4;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    iput-object p5, p0, Lokhttp3/mockwebserver/MockWebServer$4;->val$connectionClose:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2, p3, p4}, Lokhttp3/internal/ws/RealWebSocket$Streams;-><init>(ZLokio/BufferedSource;Lokio/BufferedSink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 666
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$4;->val$connectionClose:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
