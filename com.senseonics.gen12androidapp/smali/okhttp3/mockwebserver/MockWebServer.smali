.class public final Lokhttp3/mockwebserver/MockWebServer;
.super Lorg/junit/rules/ExternalResource;
.source "MockWebServer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/mockwebserver/MockWebServer$Http2SocketHandler;,
        Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;
    }
.end annotation


# static fields
.field private static final UNTRUSTED_TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private bodyLimit:J

.field private dispatcher:Lokhttp3/mockwebserver/Dispatcher;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private inetSocketAddress:Ljava/net/InetSocketAddress;

.field private final openClientSockets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final openConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lokhttp3/internal/http2/Http2Connection;",
            ">;"
        }
    .end annotation
.end field

.field private port:I

.field private protocolNegotiationEnabled:Z

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private final requestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final requestQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lokhttp3/mockwebserver/RecordedRequest;",
            ">;"
        }
    .end annotation
.end field

.field private serverSocket:Ljava/net/ServerSocket;

.field private serverSocketFactory:Ljavax/net/ServerSocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private started:Z

.field private tunnelProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    invoke-static {}, Lokhttp3/internal/Internal;->initializeInstanceForTests()V

    .line 104
    new-instance v0, Lokhttp3/mockwebserver/MockWebServer$1;

    invoke-direct {v0}, Lokhttp3/mockwebserver/MockWebServer$1;-><init>()V

    sput-object v0, Lokhttp3/mockwebserver/MockWebServer;->UNTRUSTED_TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

    .line 119
    const-class v0, Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/mockwebserver/MockWebServer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 99
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 121
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 124
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->openClientSockets:Ljava/util/Set;

    .line 125
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->openConnections:Ljava/util/Set;

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide v0, 0x7fffffffffffffffL

    .line 128
    iput-wide v0, p0, Lokhttp3/mockwebserver/MockWebServer;->bodyLimit:J

    .line 129
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 134
    new-instance v0, Lokhttp3/mockwebserver/QueueDispatcher;

    invoke-direct {v0}, Lokhttp3/mockwebserver/QueueDispatcher;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    const/4 v0, -0x1

    .line 136
    iput v0, p0, Lokhttp3/mockwebserver/MockWebServer;->port:I

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->protocolNegotiationEnabled:Z

    const/4 v1, 0x2

    .line 139
    new-array v1, v1, [Lokhttp3/Protocol;

    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    aput-object v2, v1, v0

    invoke-static {v1}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->protocols:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 99
    sget-object v0, Lokhttp3/mockwebserver/MockWebServer;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lokhttp3/mockwebserver/MockWebServer;)Ljava/net/ServerSocket;
    .locals 0

    .line 99
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic access$1000(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lokhttp3/mockwebserver/MockWebServer;->processHandshakeFailure(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$1100(Lokhttp3/mockwebserver/MockWebServer;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lokhttp3/mockwebserver/MockWebServer;->protocolNegotiationEnabled:Z

    return p0
.end method

.method static synthetic access$1200(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/List;
    .locals 0

    .line 99
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->protocols:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;I)Lokhttp3/mockwebserver/RecordedRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/mockwebserver/MockWebServer;->readRequest(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;I)Lokhttp3/mockwebserver/RecordedRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 99
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1600(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 99
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$1700(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct/range {p0 .. p5}, Lokhttp3/mockwebserver/MockWebServer;->handleWebSocketUpgrade(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V

    return-void
.end method

.method static synthetic access$1800(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;Lokio/BufferedSink;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/mockwebserver/MockWebServer;->writeHttpResponse(Ljava/net/Socket;Lokio/BufferedSink;Lokhttp3/mockwebserver/MockResponse;)V

    return-void
.end method

.method static synthetic access$200(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;
    .locals 0

    .line 99
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->openClientSockets:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$2100(Lokhttp3/mockwebserver/MockWebServer;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lokhttp3/mockwebserver/MockWebServer;->sleepIfDelayed(Lokhttp3/mockwebserver/MockResponse;)V

    return-void
.end method

.method static synthetic access$2200(Lokhttp3/mockwebserver/MockWebServer;)J
    .locals 2

    .line 99
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockWebServer;->bodyLimit:J

    return-wide v0
.end method

.method static synthetic access$2300(Lokhttp3/mockwebserver/MockWebServer;Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct/range {p0 .. p7}, Lokhttp3/mockwebserver/MockWebServer;->throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    return-void
.end method

.method static synthetic access$300(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;
    .locals 0

    .line 99
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->openConnections:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$400(Lokhttp3/mockwebserver/MockWebServer;)Lokhttp3/mockwebserver/Dispatcher;
    .locals 0

    .line 99
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    return-object p0
.end method

.method static synthetic access$500(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 99
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->executor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$600(Lokhttp3/mockwebserver/MockWebServer;ILjava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Lokhttp3/mockwebserver/MockWebServer;->dispatchBookkeepingRequest(ILjava/net/Socket;)V

    return-void
.end method

.method static synthetic access$700(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lokhttp3/mockwebserver/MockWebServer;->serveConnection(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$800(Lokhttp3/mockwebserver/MockWebServer;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 99
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method static synthetic access$900(Lokhttp3/mockwebserver/MockWebServer;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lokhttp3/mockwebserver/MockWebServer;->tunnelProxy:Z

    return p0
.end method

.method private dispatchBookkeepingRequest(ILjava/net/Socket;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 560
    new-instance v9, Lokhttp3/mockwebserver/RecordedRequest;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, v9

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lokhttp3/mockwebserver/RecordedRequest;-><init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;)V

    .line 562
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->requestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 563
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v9}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    invoke-virtual {p1, v9}, Lokhttp3/mockwebserver/Dispatcher;->dispatch(Lokhttp3/mockwebserver/RecordedRequest;)Lokhttp3/mockwebserver/MockResponse;

    return-void
.end method

.method private handleWebSocketUpgrade(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/mockwebserver/RecordedRequest;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Sec-WebSocket-Key"

    .line 643
    invoke-virtual {p4, v0}, Lokhttp3/mockwebserver/RecordedRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Accept"

    .line 644
    invoke-static {v0}, Lokhttp3/internal/ws/WebSocketProtocol;->acceptHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v1, v0}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    .line 646
    invoke-direct {p0, p1, p3, p5}, Lokhttp3/mockwebserver/MockWebServer;->writeHttpResponse(Ljava/net/Socket;Lokio/BufferedSink;Lokhttp3/mockwebserver/MockResponse;)V

    .line 649
    invoke-virtual {p4}, Lokhttp3/mockwebserver/RecordedRequest;->getTlsVersion()Lokhttp3/TlsVersion;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "https"

    goto :goto_0

    :cond_0
    const-string p1, "http"

    :goto_0
    const-string v0, "Host"

    .line 650
    invoke-virtual {p4, v0}, Lokhttp3/mockwebserver/RecordedRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "://"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 652
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 653
    invoke-virtual {p4}, Lokhttp3/mockwebserver/RecordedRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 654
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 655
    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    .line 656
    invoke-virtual {p5}, Lokhttp3/mockwebserver/MockResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 657
    invoke-virtual {p5}, Lokhttp3/mockwebserver/MockResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 658
    invoke-virtual {p5}, Lokhttp3/mockwebserver/MockResponse;->getHeaders()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 659
    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 660
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 663
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 664
    new-instance v2, Lokhttp3/mockwebserver/MockWebServer$4;

    const/4 v5, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lokhttp3/mockwebserver/MockWebServer$4;-><init>(Lokhttp3/mockwebserver/MockWebServer;ZLokio/BufferedSource;Lokio/BufferedSink;Ljava/util/concurrent/CountDownLatch;)V

    .line 669
    new-instance v3, Lokhttp3/internal/ws/RealWebSocket;

    .line 670
    invoke-virtual {p5}, Lokhttp3/mockwebserver/MockResponse;->getWebSocketListener()Lokhttp3/WebSocketListener;

    move-result-object v4

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v3, p1, v4, v5}, Lokhttp3/internal/ws/RealWebSocket;-><init>(Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;)V

    .line 671
    invoke-virtual {p5}, Lokhttp3/mockwebserver/MockResponse;->getWebSocketListener()Lokhttp3/WebSocketListener;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Lokhttp3/WebSocketListener;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V

    .line 672
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "MockWebServer WebSocket "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lokhttp3/mockwebserver/RecordedRequest;->getPath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 p4, 0x0

    .line 673
    invoke-virtual {v3, p1, p4, p5, v2}, Lokhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;JLokhttp3/internal/ws/RealWebSocket$Streams;)V

    .line 675
    :try_start_0
    invoke-virtual {v3}, Lokhttp3/internal/ws/RealWebSocket;->loopReader()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    const/4 p4, 0x0

    .line 684
    :try_start_2
    invoke-virtual {v3, p1, p4}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 686
    :catch_1
    :goto_1
    invoke-static {p3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 687
    invoke-static {p2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 686
    :goto_2
    invoke-static {p3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 687
    invoke-static {p2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method private processHandshakeFailure(Ljava/net/Socket;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "TLS"

    .line 545
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    .line 546
    new-array v2, v1, [Ljavax/net/ssl/TrustManager;

    sget-object v3, Lokhttp3/mockwebserver/MockWebServer;->UNTRUSTED_TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 547
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 549
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v3

    .line 548
    invoke-virtual {v0, p1, v2, v3, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 551
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 552
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :catch_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    return-void
.end method

.method private readEmptyLine(Lokio/BufferedSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 777
    invoke-interface {p1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object p1

    .line 778
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected empty but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private readRequest(Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;I)Lokhttp3/mockwebserver/RecordedRequest;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v0, p3

    const/4 v1, 0x0

    .line 572
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 580
    :cond_0
    new-instance v11, Lokhttp3/Headers$Builder;

    invoke-direct {v11}, Lokhttp3/Headers$Builder;-><init>()V

    const-wide/16 v1, -0x1

    move-wide v5, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 585
    :cond_1
    :goto_0
    invoke-interface/range {p2 .. p2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_4

    .line 586
    sget-object v14, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v14, v11, v7}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)V

    .line 587
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    cmp-long v15, v5, v1

    if-nez v15, :cond_2

    const-string v15, "content-length:"

    .line 588
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v5, 0xf

    .line 589
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    :cond_2
    const-string v7, "transfer-encoding:"

    .line 591
    invoke-virtual {v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x12

    .line 592
    invoke-virtual {v14, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v15, "chunked"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v4, 0x1

    :cond_3
    const-string v7, "expect:"

    .line 595
    invoke-virtual {v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x7

    .line 596
    invoke-virtual {v14, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v14, "100-continue"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    .line 601
    iget-object v7, v8, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    invoke-virtual {v7}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v7

    sget-object v14, Lokhttp3/mockwebserver/SocketPolicy;->EXPECT_CONTINUE:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v7, v14, :cond_5

    const-string v3, "HTTP/1.1 100 Continue\r\n"

    .line 602
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const-string v3, "Content-Length: 0\r\n"

    .line 603
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const-string v3, "\r\n"

    .line 604
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 605
    invoke-interface/range {p3 .. p3}, Lokio/BufferedSink;->flush()V

    const/4 v3, 0x1

    .line 610
    :cond_5
    new-instance v14, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;

    iget-wide v12, v8, Lokhttp3/mockwebserver/MockWebServer;->bodyLimit:J

    invoke-direct {v14, v12, v13}, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;-><init>(J)V

    .line 611
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 612
    iget-object v0, v8, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    invoke-virtual {v0}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v13

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    cmp-long v0, v5, v1

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-lez v0, :cond_7

    const/16 v18, 0x1

    goto :goto_1

    :cond_7
    const/16 v18, 0x0

    .line 617
    :goto_1
    invoke-static {v14}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, v13

    move-object/from16 v2, p1

    move-object v3, v9

    invoke-direct/range {v0 .. v7}, Lokhttp3/mockwebserver/MockWebServer;->throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    goto :goto_4

    :cond_8
    if-eqz v4, :cond_a

    .line 621
    :goto_2
    invoke-interface/range {p2 .. p2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    .line 623
    invoke-direct {v8, v9}, Lokhttp3/mockwebserver/MockWebServer;->readEmptyLine(Lokio/BufferedSource;)V

    const/16 v18, 0x1

    goto :goto_4

    .line 626
    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-static {v14}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    int-to-long v5, v0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, v13

    move-object/from16 v2, p1

    move-object v3, v9

    invoke-direct/range {v0 .. v7}, Lokhttp3/mockwebserver/MockWebServer;->throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    .line 628
    invoke-direct {v8, v9}, Lokhttp3/mockwebserver/MockWebServer;->readEmptyLine(Lokio/BufferedSource;)V

    goto :goto_2

    :cond_a
    :goto_3
    const/16 v18, 0x0

    :goto_4
    const/16 v0, 0x20

    .line 632
    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v18, :cond_b

    .line 633
    invoke-static {v0}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request must not have a body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_b
    new-instance v0, Lokhttp3/mockwebserver/RecordedRequest;

    invoke-virtual {v11}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v11

    invoke-static {v14}, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->access$1900(Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;)J

    move-result-wide v1

    .line 638
    invoke-static {v14}, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->access$2000(Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;)Lokio/Buffer;

    move-result-object v15

    move-object v9, v0

    move-wide v13, v1

    move/from16 v16, p4

    move-object/from16 v17, p1

    invoke-direct/range {v9 .. v17}, Lokhttp3/mockwebserver/RecordedRequest;-><init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;)V

    return-object v0

    :catch_0
    return-object v1
.end method

.method private serveConnection(Ljava/net/Socket;)V
    .locals 6

    .line 391
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lokhttp3/mockwebserver/MockWebServer$3;

    const-string v2, "MockWebServer %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, p0, v2, v3, p1}, Lokhttp3/mockwebserver/MockWebServer$3;-><init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/lang/String;[Ljava/lang/Object;Ljava/net/Socket;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sleepIfDelayed(Lokhttp3/mockwebserver/MockResponse;)V
    .locals 4

    .line 713
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lokhttp3/mockwebserver/MockResponse;->getBodyDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 716
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 718
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized start(Ljava/net/InetSocketAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 309
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->started:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "start() already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->started:Z

    const-string v1, "MockWebServer"

    const/4 v2, 0x0

    .line 312
    invoke-static {v1, v2}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->executor:Ljava/util/concurrent/ExecutorService;

    .line 313
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 314
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    .line 316
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 317
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    const/16 v3, 0x32

    invoke-virtual {v1, p1, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 319
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lokhttp3/mockwebserver/MockWebServer;->port:I

    .line 320
    iget-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lokhttp3/mockwebserver/MockWebServer$2;

    const-string v3, "MockWebServer %s"

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Lokhttp3/mockwebserver/MockWebServer;->port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-direct {v1, p0, v3, v0}, Lokhttp3/mockwebserver/MockWebServer$2;-><init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 308
    monitor-exit p0

    throw p1
.end method

.method private throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    cmp-long v4, p5, v2

    if-nez v4, :cond_0

    return-void

    .line 732
    :cond_0
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    .line 733
    invoke-virtual/range {p1 .. p1}, Lokhttp3/mockwebserver/MockResponse;->getThrottleBytesPerPeriod()J

    move-result-wide v5

    .line 734
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Lokhttp3/mockwebserver/MockResponse;->getThrottlePeriod(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    const-wide/16 v11, 0x2

    .line 736
    div-long v11, p5, v11

    const/4 v7, 0x1

    const/4 v13, 0x0

    if-eqz p7, :cond_2

    .line 738
    invoke-virtual/range {p1 .. p1}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v8

    sget-object v14, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_DURING_REQUEST_BODY:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v8, v14, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 739
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v8

    sget-object v14, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_DURING_RESPONSE_BODY:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v8, v14, :cond_1

    :goto_0
    move-wide/from16 v0, p5

    .line 741
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/net/Socket;->isClosed()Z

    move-result v8

    if-nez v8, :cond_9

    move-wide v14, v0

    const/4 v0, 0x0

    :goto_2
    int-to-long v0, v0

    cmp-long v8, v0, v5

    if-gez v8, :cond_7

    sub-long v2, v5, v0

    .line 744
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    if-eqz v7, :cond_3

    move-wide/from16 v16, v5

    sub-long v5, v14, v11

    .line 747
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_3

    :cond_3
    move-wide/from16 v16, v5

    :goto_3
    move-wide v5, v2

    move-object/from16 v2, p3

    .line 750
    invoke-interface {v2, v4, v5, v6}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v5

    const-wide/16 v18, -0x1

    cmp-long v3, v5, v18

    if-nez v3, :cond_4

    return-void

    :cond_4
    move-object/from16 v3, p4

    .line 753
    invoke-interface {v3, v4, v5, v6}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 754
    invoke-interface/range {p4 .. p4}, Lokio/BufferedSink;->flush()V

    add-long/2addr v0, v5

    long-to-int v0, v0

    sub-long/2addr v14, v5

    if-eqz v7, :cond_5

    cmp-long v1, v14, v11

    if-nez v1, :cond_5

    .line 759
    invoke-virtual/range {p2 .. p2}, Ljava/net/Socket;->close()V

    return-void

    :cond_5
    const-wide/16 v5, 0x0

    cmp-long v1, v14, v5

    if-nez v1, :cond_6

    return-void

    :cond_6
    move-wide v2, v5

    move-wide/from16 v5, v16

    goto :goto_2

    :cond_7
    move-wide/from16 v16, v5

    move-wide v5, v2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    cmp-long v0, v9, v5

    if-eqz v0, :cond_8

    .line 768
    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 770
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_4
    move-wide v2, v5

    move-wide v0, v14

    move-wide/from16 v5, v16

    goto :goto_1

    :cond_9
    return-void
.end method

.method private writeHttpResponse(Ljava/net/Socket;Lokio/BufferedSink;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    invoke-virtual {p3}, Lokhttp3/mockwebserver/MockResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const-string v0, "\r\n"

    .line 694
    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 696
    invoke-virtual {p3}, Lokhttp3/mockwebserver/MockResponse;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 698
    invoke-virtual {v0, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const-string v3, ": "

    .line 699
    invoke-interface {p2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 700
    invoke-virtual {v0, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const-string v3, "\r\n"

    .line 701
    invoke-interface {p2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "\r\n"

    .line 703
    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 704
    invoke-interface {p2}, Lokio/BufferedSink;->flush()V

    .line 706
    invoke-virtual {p3}, Lokhttp3/mockwebserver/MockResponse;->getBody()Lokio/Buffer;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 708
    :cond_1
    invoke-direct {p0, p3}, Lokhttp3/mockwebserver/MockWebServer;->sleepIfDelayed(Lokhttp3/mockwebserver/MockResponse;)V

    .line 709
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Lokhttp3/mockwebserver/MockWebServer;->throttledTransfer(Lokhttp3/mockwebserver/MockResponse;Ljava/net/Socket;Lokio/BufferedSource;Lokio/BufferedSink;JZ)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized after()V
    .locals 4

    monitor-enter p0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 386
    :try_start_1
    sget-object v1, Lokhttp3/mockwebserver/MockWebServer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "MockWebServer shutdown failed"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    :goto_0
    monitor-exit p0

    return-void

    .line 383
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized before()V
    .locals 2

    monitor-enter p0

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 146
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 148
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 143
    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 796
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->shutdown()V

    return-void
.end method

.method public enqueue(Lokhttp3/mockwebserver/MockResponse;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    check-cast v0, Lokhttp3/mockwebserver/QueueDispatcher;

    invoke-virtual {p1}, Lokhttp3/mockwebserver/MockResponse;->clone()Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/mockwebserver/QueueDispatcher;->enqueueResponse(Lokhttp3/mockwebserver/MockResponse;)V

    return-void
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 158
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->before()V

    .line 159
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 153
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->before()V

    .line 154
    iget v0, p0, Lokhttp3/mockwebserver/MockWebServer;->port:I

    return v0
.end method

.method public getRequestCount()I
    .locals 1

    .line 262
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public setBodyLimit(J)V
    .locals 0

    .line 194
    iput-wide p1, p0, Lokhttp3/mockwebserver/MockWebServer;->bodyLimit:J

    return-void
.end method

.method public setDispatcher(Lokhttp3/mockwebserver/Dispatcher;)V
    .locals 0

    if-nez p1, :cond_0

    .line 787
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 788
    :cond_0
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->dispatcher:Lokhttp3/mockwebserver/Dispatcher;

    return-void
.end method

.method public setProtocolNegotiationEnabled(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lokhttp3/mockwebserver/MockWebServer;->protocolNegotiationEnabled:Z

    return-void
.end method

.method public setProtocols(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 213
    invoke-static {p1}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 214
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 217
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_1
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->protocols:Ljava/util/List;

    return-void
.end method

.method public setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 170
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setServerSocketFactory() must be called before start()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_0
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 366
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/mockwebserver/MockWebServer;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 367
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "shutdown() before start()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :try_start_2
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->executor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 375
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gave up waiting for executor to shut down"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    :cond_2
    monitor-exit p0

    return-void

    .line 378
    :catch_0
    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 365
    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p0, v0}, Lokhttp3/mockwebserver/MockWebServer;->start(I)V

    return-void
.end method

.method public start(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "localhost"

    .line 289
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lokhttp3/mockwebserver/MockWebServer;->start(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public start(Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Lokhttp3/mockwebserver/MockWebServer;->start(Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method public takeRequest()Lokhttp3/mockwebserver/RecordedRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/mockwebserver/RecordedRequest;

    return-object v0
.end method

.method public takeRequest(JLjava/util/concurrent/TimeUnit;)Lokhttp3/mockwebserver/RecordedRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/mockwebserver/RecordedRequest;

    return-object p1
.end method

.method public toProxyAddress()Ljava/net/Proxy;
    .locals 3

    .line 163
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->before()V

    .line 164
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 165
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v2, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MockWebServer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/mockwebserver/MockWebServer;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 2

    .line 182
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    .line 183
    :goto_0
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockWebServer;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1
.end method

.method public useHttps(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .locals 0

    .line 229
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 230
    iput-boolean p2, p0, Lokhttp3/mockwebserver/MockWebServer;->tunnelProxy:Z

    return-void
.end method
