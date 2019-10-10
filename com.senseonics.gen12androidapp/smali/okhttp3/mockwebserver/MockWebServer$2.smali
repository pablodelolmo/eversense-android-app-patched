.class Lokhttp3/mockwebserver/MockWebServer$2;
.super Lokhttp3/internal/NamedRunnable;
.source "MockWebServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/mockwebserver/MockWebServer;->start(Ljava/net/InetSocketAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/mockwebserver/MockWebServer;


# direct methods
.method varargs constructor <init>(Lokhttp3/mockwebserver/MockWebServer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lokhttp3/mockwebserver/MockWebServer$2;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private acceptConnections()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 347
    :goto_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$2;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$100(Lokhttp3/mockwebserver/MockWebServer;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$2;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v1}, Lokhttp3/mockwebserver/MockWebServer;->access$400(Lokhttp3/mockwebserver/MockWebServer;)Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/mockwebserver/Dispatcher;->peek()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/mockwebserver/MockResponse;->getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;

    move-result-object v1

    .line 353
    sget-object v2, Lokhttp3/mockwebserver/SocketPolicy;->DISCONNECT_AT_START:Lokhttp3/mockwebserver/SocketPolicy;

    if-ne v1, v2, :cond_0

    .line 354
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$2;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lokhttp3/mockwebserver/MockWebServer;->access$600(Lokhttp3/mockwebserver/MockWebServer;ILjava/net/Socket;)V

    .line 355
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$2;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v1}, Lokhttp3/mockwebserver/MockWebServer;->access$200(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v1, p0, Lokhttp3/mockwebserver/MockWebServer$2;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v1, v0}, Lokhttp3/mockwebserver/MockWebServer;->access$700(Lokhttp3/mockwebserver/MockWebServer;Ljava/net/Socket;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 349
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lokhttp3/mockwebserver/MockWebServer$2;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " done accepting connections: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 5

    .line 323
    :try_start_0
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/mockwebserver/MockWebServer$2;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " starting to accept connections"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lokhttp3/mockwebserver/MockWebServer$2;->acceptConnections()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 326
    invoke-static {}, Lokhttp3/mockwebserver/MockWebServer;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lokhttp3/mockwebserver/MockWebServer$2;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " failed unexpectedly"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    :goto_0
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$2;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$100(Lokhttp3/mockwebserver/MockWebServer;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/ServerSocket;)V

    .line 331
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$2;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$200(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Socket;

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 335
    :cond_0
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$2;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$300(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 337
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 339
    :cond_1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$2;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$400(Lokhttp3/mockwebserver/MockWebServer;)Lokhttp3/mockwebserver/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/mockwebserver/Dispatcher;->shutdown()V

    .line 340
    iget-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$2;->this$0:Lokhttp3/mockwebserver/MockWebServer;

    invoke-static {v0}, Lokhttp3/mockwebserver/MockWebServer;->access$500(Lokhttp3/mockwebserver/MockWebServer;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
