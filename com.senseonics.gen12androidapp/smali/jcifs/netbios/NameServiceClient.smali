.class Ljcifs/netbios/NameServiceClient;
.super Ljava/lang/Object;
.source "NameServiceClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final DEFAULT_RCV_BUF_SIZE:I = 0x240

.field static final DEFAULT_RETRY_COUNT:I = 0x2

.field static final DEFAULT_RETRY_TIMEOUT:I = 0xbb8

.field static final DEFAULT_SND_BUF_SIZE:I = 0x240

.field static final DEFAULT_SO_TIMEOUT:I = 0x1388

.field private static final LADDR:Ljava/net/InetAddress;

.field private static final LPORT:I

.field static final NAME_SERVICE_UDP_PORT:I = 0x89

.field private static final RCV_BUF_SIZE:I

.field static final RESOLVER_BCAST:I = 0x2

.field static final RESOLVER_LMHOSTS:I = 0x1

.field static final RESOLVER_WINS:I = 0x3

.field private static final RETRY_COUNT:I

.field private static final RETRY_TIMEOUT:I

.field private static final RO:Ljava/lang/String;

.field private static final SND_BUF_SIZE:I

.field private static final SO_TIMEOUT:I

.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field baddr:Ljava/net/InetAddress;

.field private closeTimeout:I

.field private in:Ljava/net/DatagramPacket;

.field laddr:Ljava/net/InetAddress;

.field private lport:I

.field private nextNameTrnId:I

.field private out:Ljava/net/DatagramPacket;

.field private rcv_buf:[B

.field private resolveOrder:[I

.field private responseTable:Ljava/util/HashMap;

.field private snd_buf:[B

.field private socket:Ljava/net/DatagramSocket;

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.netbios.snd_buf_size"

    const/16 v1, 0x240

    .line 42
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    const-string v0, "jcifs.netbios.rcv_buf_size"

    .line 43
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    const-string v0, "jcifs.netbios.soTimeout"

    const/16 v1, 0x1388

    .line 44
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    const-string v0, "jcifs.netbios.retryCount"

    const/4 v1, 0x2

    .line 45
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    const-string v0, "jcifs.netbios.retryTimeout"

    const/16 v1, 0xbb8

    .line 46
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    const-string v0, "jcifs.netbios.lport"

    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/NameServiceClient;->LPORT:I

    const-string v0, "jcifs.netbios.laddr"

    const/4 v1, 0x0

    .line 48
    invoke-static {v0, v1}, Ljcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NameServiceClient;->LADDR:Ljava/net/InetAddress;

    const-string v0, "jcifs.resolveOrder"

    .line 49
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 67
    sget v0, Ljcifs/netbios/NameServiceClient;->LPORT:I

    sget-object v1, Ljcifs/netbios/NameServiceClient;->LADDR:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1}, Ljcifs/netbios/NameServiceClient;-><init>(ILjava/net/InetAddress;)V

    return-void
.end method

.method constructor <init>(ILjava/net/InetAddress;)V
    .locals 9

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    .line 70
    iput p1, p0, Ljcifs/netbios/NameServiceClient;->lport:I

    .line 71
    iput-object p2, p0, Ljcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    :try_start_0
    const-string p1, "jcifs.netbios.baddr"

    const-string p2, "255.255.255.255"

    .line 74
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-static {p1, p2}, Ljcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :catch_0
    sget p1, Ljcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    .line 80
    sget p1, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    .line 81
    new-instance p1, Ljava/net/DatagramPacket;

    iget-object p2, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    sget v1, Ljcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    iget-object v2, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    const/16 v3, 0x89

    invoke-direct {p1, p2, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    .line 82
    new-instance p1, Ljava/net/DatagramPacket;

    iget-object p2, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    sget v1, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    invoke-direct {p1, p2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    .line 84
    sget-object p1, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    const/4 p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    sget-object p1, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 103
    :cond_0
    new-array p1, p2, [I

    .line 104
    new-instance v3, Ljava/util/StringTokenizer;

    sget-object v4, Ljcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    const-string v5, ","

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 106
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 107
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LMHOSTS"

    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 109
    aput v2, p1, v4

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_2
    const-string v6, "WINS"

    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 111
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_3

    .line 112
    sget-object v5, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    if-le v5, v2, :cond_1

    .line 113
    sget-object v5, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    const-string v6, "NetBIOS resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set"

    invoke-virtual {v5, v6}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v4, 0x1

    .line 118
    aput p2, p1, v4

    goto :goto_1

    :cond_4
    const-string v6, "BCAST"

    .line 119
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v5, v4, 0x1

    .line 120
    aput v1, p1, v4

    goto :goto_1

    :cond_5
    const-string v6, "DNS"

    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_0

    .line 123
    :cond_6
    sget-object v6, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v6, Ljcifs/util/LogStream;->level:I

    if-le v6, v2, :cond_1

    .line 124
    sget-object v6, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown resolver method: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_7
    new-array p2, v4, [I

    iput-object p2, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    .line 128
    iget-object p2, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    invoke-static {p1, v0, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 92
    :cond_8
    :goto_2
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object p1

    if-nez p1, :cond_9

    .line 93
    new-array p1, v1, [I

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    .line 94
    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aput v2, p1, v0

    .line 95
    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aput v1, p1, v2

    goto :goto_3

    .line 97
    :cond_9
    new-array p1, p2, [I

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    .line 98
    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aput v2, p1, v0

    .line 99
    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aput p2, p1, v2

    .line 100
    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aput v1, p1, v1

    :goto_3
    return-void
.end method


# virtual methods
.method ensureOpen(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    .line 140
    sget v0, Ljcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    if-eqz v0, :cond_0

    .line 141
    sget v0, Ljcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    .line 145
    :cond_0
    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    if-nez p1, :cond_1

    .line 146
    new-instance p1, Ljava/net/DatagramSocket;

    iget v0, p0, Ljcifs/netbios/NameServiceClient;->lport:I

    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    invoke-direct {p1, v0, v1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    .line 147
    new-instance p1, Ljava/lang/Thread;

    const-string v0, "JCIFS-NameServiceClient"

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    .line 148
    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 149
    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method getAllByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 279
    new-instance v0, Ljcifs/netbios/NameQueryRequest;

    invoke-direct {v0, p1}, Ljcifs/netbios/NameQueryRequest;-><init>(Ljcifs/netbios/Name;)V

    .line 280
    new-instance v1, Ljcifs/netbios/NameQueryResponse;

    invoke-direct {v1}, Ljcifs/netbios/NameQueryResponse;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object p2

    :goto_0
    iput-object p2, v0, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    .line 283
    iget-object p2, v0, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, v0, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    .line 285
    iget-boolean p2, v0, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    if-eqz p2, :cond_2

    .line 286
    iget-object p2, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    iput-object p2, v0, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    .line 287
    sget p2, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    goto :goto_2

    .line 289
    :cond_2
    iput-boolean v2, v0, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    const/4 p2, 0x1

    .line 295
    :cond_3
    :goto_2
    :try_start_0
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    iget-boolean v2, v1, Ljcifs/netbios/NameQueryResponse;->received:Z

    if-eqz v2, :cond_4

    iget v2, v1, Ljcifs/netbios/NameQueryResponse;->resultCode:I

    if-nez v2, :cond_4

    .line 303
    iget-object p1, v1, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    return-object p1

    :cond_4
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_5

    .line 305
    iget-boolean v2, v0, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    if-nez v2, :cond_3

    .line 307
    :cond_5
    new-instance p2, Ljava/net/UnknownHostException;

    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p2

    .line 297
    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-le v0, v3, :cond_6

    .line 298
    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {p2, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 299
    :cond_6
    new-instance p2, Ljava/net/UnknownHostException;

    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method getByName(Ljcifs/netbios/Name;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 312
    new-instance v0, Ljcifs/netbios/NameQueryRequest;

    invoke-direct {v0, p1}, Ljcifs/netbios/NameQueryRequest;-><init>(Ljcifs/netbios/Name;)V

    .line 313
    new-instance v1, Ljcifs/netbios/NameQueryResponse;

    invoke-direct {v1}, Ljcifs/netbios/NameQueryResponse;-><init>()V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_5

    .line 318
    iput-object p2, v0, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    .line 319
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    aget-byte v2, v5, v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, v0, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    .line 321
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    .line 324
    :cond_1
    :try_start_0
    sget v3, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v0, v1, v3}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    iget-boolean v3, v1, Ljcifs/netbios/NameQueryResponse;->received:Z

    if-eqz v3, :cond_2

    iget v3, v1, Ljcifs/netbios/NameQueryResponse;->resultCode:I

    if-nez v3, :cond_2

    .line 332
    iget-object p1, v1, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    array-length p1, p1

    sub-int/2addr p1, v4

    .line 333
    iget-object v0, v1, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    aget-object v0, v0, p1

    iget-object v0, v0, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-virtual {p2}, Ljava/net/InetAddress;->hashCode()I

    move-result p2

    iput p2, v0, Ljcifs/netbios/Name;->srcHashCode:I

    .line 334
    iget-object p2, v1, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    aget-object p1, p2, p1

    return-object p1

    :cond_2
    add-int/2addr v2, v5

    if-lez v2, :cond_3

    .line 336
    iget-boolean v3, v0, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    if-nez v3, :cond_1

    .line 338
    :cond_3
    new-instance p2, Ljava/net/UnknownHostException;

    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p2

    .line 326
    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-le v0, v4, :cond_4

    .line 327
    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {p2, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 328
    :cond_4
    new-instance p2, Ljava/net/UnknownHostException;

    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const/4 p2, 0x0

    .line 345
    :goto_0
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    array-length v5, v5

    if-ge p2, v5, :cond_b

    .line 347
    :try_start_1
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v5, v5, p2

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    .line 358
    :pswitch_0
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v5, v5, p2

    if-ne v5, v2, :cond_6

    iget-object v5, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    const-string v6, "\u0001\u0002__MSBROWSE__\u0002"

    if-eq v5, v6, :cond_6

    iget v5, p1, Ljcifs/netbios/Name;->hexCode:I

    const/16 v6, 0x1d

    if-eq v5, v6, :cond_6

    .line 361
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v5

    iput-object v5, v0, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    .line 362
    iput-boolean v3, v0, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    goto :goto_1

    .line 364
    :cond_6
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    iput-object v5, v0, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    .line 365
    iput-boolean v4, v0, Ljcifs/netbios/NameQueryRequest;->isBroadcast:Z

    .line 368
    :goto_1
    sget v5, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    add-int/lit8 v6, v5, -0x1

    if-lez v5, :cond_a

    .line 371
    :try_start_2
    sget v5, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v0, v1, v5}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 377
    :try_start_3
    iget-boolean v5, v1, Ljcifs/netbios/NameQueryResponse;->received:Z

    if-eqz v5, :cond_7

    iget v5, v1, Ljcifs/netbios/NameQueryResponse;->resultCode:I

    if-nez v5, :cond_7

    .line 384
    iget-object v5, v1, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    aget-object v5, v5, v3

    iget-object v5, v5, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object v6, v0, Ljcifs/netbios/NameQueryRequest;->addr:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->hashCode()I

    move-result v6

    iput v6, v5, Ljcifs/netbios/Name;->srcHashCode:I

    .line 386
    iget-object v5, v1, Ljcifs/netbios/NameQueryResponse;->addrEntry:[Ljcifs/netbios/NbtAddress;

    aget-object v5, v5, v3

    return-object v5

    .line 387
    :cond_7
    iget-object v5, p0, Ljcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v5, v5, p2

    if-ne v5, v2, :cond_8

    goto :goto_3

    :cond_8
    move v5, v6

    goto :goto_2

    :catch_1
    move-exception v5

    .line 373
    sget-object v6, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v6, Ljcifs/util/LogStream;->level:I

    if-le v6, v4, :cond_9

    .line 374
    sget-object v6, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v5, v6}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 375
    :cond_9
    new-instance v5, Ljava/net/UnknownHostException;

    iget-object v6, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 349
    :pswitch_1
    invoke-static {p1}, Ljcifs/netbios/Lmhosts;->getByName(Ljcifs/netbios/Name;)Ljcifs/netbios/NbtAddress;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 351
    iget-object v6, v5, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iput v3, v6, Ljcifs/netbios/Name;->srcHashCode:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v5

    :catch_2
    :cond_a
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 398
    :cond_b
    new-instance p2, Ljava/net/UnknownHostException;

    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getNextNameTrnId()I
    .locals 3

    .line 133
    iget v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    const v2, 0xffff

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 134
    iput v1, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    .line 136
    :cond_0
    iget v0, p0, Ljcifs/netbios/NameServiceClient;->nextNameTrnId:I

    return v0
.end method

.method getNodeStatus(Ljcifs/netbios/NbtAddress;)[Ljcifs/netbios/NbtAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 405
    new-instance v0, Ljcifs/netbios/NodeStatusResponse;

    invoke-direct {v0, p1}, Ljcifs/netbios/NodeStatusResponse;-><init>(Ljcifs/netbios/NbtAddress;)V

    .line 406
    new-instance v1, Ljcifs/netbios/NodeStatusRequest;

    new-instance v2, Ljcifs/netbios/Name;

    const-string v3, "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v1, v2}, Ljcifs/netbios/NodeStatusRequest;-><init>(Ljcifs/netbios/Name;)V

    .line 408
    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, v1, Ljcifs/netbios/NodeStatusRequest;->addr:Ljava/net/InetAddress;

    .line 410
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_3

    .line 413
    :try_start_0
    sget v2, Ljcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v1, v0, v2}, Ljcifs/netbios/NameServiceClient;->send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    iget-boolean v2, v0, Ljcifs/netbios/NodeStatusResponse;->received:Z

    if-eqz v2, :cond_1

    iget v2, v0, Ljcifs/netbios/NodeStatusResponse;->resultCode:I

    if-nez v2, :cond_1

    .line 434
    iget-object p1, v1, Ljcifs/netbios/NodeStatusRequest;->addr:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->hashCode()I

    move-result p1

    .line 435
    :goto_1
    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    array-length v1, v1

    if-ge v4, v1, :cond_0

    .line 436
    iget-object v1, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    aget-object v1, v1, v4

    iget-object v1, v1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iput p1, v1, Ljcifs/netbios/Name;->srcHashCode:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 438
    :cond_0
    iget-object p1, v0, Ljcifs/netbios/NodeStatusResponse;->addressArray:[Ljcifs/netbios/NbtAddress;

    return-object p1

    :cond_1
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 415
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 416
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 417
    :cond_2
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_3
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object p1, p1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iget-object p1, p1, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 5

    .line 176
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 177
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    sget v1, Ljcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 179
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget v1, p0, Ljcifs/netbios/NameServiceClient;->closeTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 180
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 182
    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 183
    sget-object v0, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    const-string v2, "NetBIOS: new data read from socket"

    invoke-virtual {v0, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 185
    :cond_1
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljcifs/netbios/NameServicePacket;->readNameTrnId([BI)I

    move-result v0

    .line 186
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NameServicePacket;

    if-eqz v0, :cond_0

    .line 187
    iget-boolean v3, v0, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 190
    :cond_2
    monitor-enter v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    invoke-virtual {v0, v3, v2}, Ljcifs/netbios/NameServicePacket;->readWireFormat([BI)I

    const/4 v3, 0x1

    .line 192
    iput-boolean v3, v0, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 194
    sget-object v3, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-le v3, v1, :cond_3

    .line 195
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v0}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 196
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    iget-object v3, p0, Ljcifs/netbios/NameServiceClient;->rcv_buf:[B

    iget-object v4, p0, Ljcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 199
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 200
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 204
    :try_start_3
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    .line 205
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 207
    :goto_1
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    throw v0

    :catch_1
    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->tryClose()V

    return-void
.end method

.method send(Ljcifs/netbios/NameServicePacket;Ljcifs/netbios/NameServicePacket;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    sget-object v0, Ljcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 218
    :cond_0
    monitor-enter p2

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_6

    .line 221
    :try_start_0
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 222
    :try_start_1
    invoke-virtual {p0}, Ljcifs/netbios/NameServiceClient;->getNextNameTrnId()I

    move-result v3

    iput v3, p1, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    .line 223
    new-instance v3, Ljava/lang/Integer;

    iget v4, p1, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 225
    :try_start_2
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    iget-object v4, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-virtual {v1, v4}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 226
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    iget-object v4, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Ljcifs/netbios/NameServicePacket;->writeWireFormat([BI)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 227
    iput-boolean v5, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 229
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit16 v1, p3, 0x3e8

    .line 230
    invoke-virtual {p0, v1}, Ljcifs/netbios/NameServiceClient;->ensureOpen(I)V

    .line 231
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget-object v4, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 233
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x3

    if-le v1, v4, :cond_1

    .line 234
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, p1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 235
    sget-object v1, Ljcifs/netbios/NameServiceClient;->log:Ljcifs/util/LogStream;

    iget-object v4, p0, Ljcifs/netbios/NameServiceClient;->snd_buf:[B

    iget-object v6, p0, Ljcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-static {v1, v4, v5, v6}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 237
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 239
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_1
    if-lez p3, :cond_3

    int-to-long v6, p3

    .line 241
    invoke-virtual {p2, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 248
    iget-boolean p3, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    if-eqz p3, :cond_2

    iget p3, p1, Ljcifs/netbios/NameServicePacket;->questionType:I

    iget v4, p2, Ljcifs/netbios/NameServicePacket;->recordType:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p3, v4, :cond_2

    .line 258
    :try_start_4
    iget-object p1, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    return-void

    .line 251
    :cond_2
    :try_start_5
    iput-boolean v5, p2, Ljcifs/netbios/NameServicePacket;->received:Z

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 p3, 0x0

    sub-long/2addr v8, v0

    sub-long/2addr v6, v8

    long-to-int p3, v6

    goto :goto_1

    .line 258
    :cond_3
    :try_start_6
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 262
    :try_start_7
    iget-object v1, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-static {v1}, Ljcifs/netbios/NbtAddress;->isWINS(Ljava/net/InetAddress;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 263
    monitor-exit v0

    goto :goto_5

    .line 268
    :cond_4
    iget-object v1, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-ne v1, v4, :cond_5

    .line 269
    invoke-static {}, Ljcifs/netbios/NbtAddress;->switchWINS()Ljava/net/InetAddress;

    .line 270
    :cond_5
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p1, Ljcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 271
    monitor-exit v0

    move v0, v2

    move-object v1, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_1
    move-exception p1

    move-object v1, v3

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v1, v3

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v1, v3

    goto :goto_2

    :catchall_3
    move-exception p1

    .line 237
    :goto_2
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw p1
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 256
    :goto_3
    :try_start_b
    new-instance p3, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 258
    :goto_4
    :try_start_c
    iget-object p3, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1

    .line 273
    :cond_6
    :goto_5
    monitor-exit p2

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw p1
.end method

.method tryClose()V
    .locals 3

    .line 153
    iget-object v0, p0, Ljcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 165
    iput-object v2, p0, Ljcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    .line 167
    :cond_0
    iput-object v2, p0, Ljcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    .line 168
    iget-object v1, p0, Ljcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 169
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
