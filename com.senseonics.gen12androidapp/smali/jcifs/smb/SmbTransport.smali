.class public Ljcifs/smb/SmbTransport;
.super Ljcifs/util/transport/Transport;
.source "SmbTransport.java"

# interfaces
.implements Ljcifs/smb/SmbConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/SmbTransport$ServerData;
    }
.end annotation


# static fields
.field static final BUF:[B

.field static final NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

.field static dfsRoots:Ljava/util/HashMap;

.field static log:Ljcifs/util/LogStream;


# instance fields
.field address:Ljcifs/UniAddress;

.field capabilities:I

.field digest:Ljcifs/smb/SigningDigest;

.field flags2:I

.field in:Ljava/io/InputStream;

.field key:Ljcifs/smb/SmbComBlankResponse;

.field localAddr:Ljava/net/InetAddress;

.field localPort:I

.field maxMpxCount:I

.field mid:I

.field out:Ljava/io/OutputStream;

.field port:I

.field rcv_buf_size:I

.field referrals:Ljava/util/LinkedList;

.field sbuf:[B

.field server:Ljcifs/smb/SmbTransport$ServerData;

.field sessionExpiration:J

.field sessionKey:I

.field sessions:Ljava/util/LinkedList;

.field snd_buf_size:I

.field socket:Ljava/net/Socket;

.field tconHostName:Ljava/lang/String;

.field useUnicode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xffff

    .line 35
    new-array v0, v0, [B

    sput-object v0, Ljcifs/smb/SmbTransport;->BUF:[B

    .line 36
    new-instance v0, Ljcifs/smb/SmbComNegotiate;

    invoke-direct {v0}, Ljcifs/smb/SmbComNegotiate;-><init>()V

    sput-object v0, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    .line 37
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method constructor <init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V
    .locals 4

    .line 112
    invoke-direct {p0}, Ljcifs/util/transport/Transport;-><init>()V

    const/16 v0, 0x200

    .line 95
    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 96
    new-instance v0, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->referrals:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 100
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    .line 101
    new-instance v1, Ljcifs/smb/SmbTransport$ServerData;

    invoke-direct {v1, p0}, Ljcifs/smb/SmbTransport$ServerData;-><init>(Ljcifs/smb/SmbTransport;)V

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 103
    sget v1, Ljcifs/smb/SmbTransport;->FLAGS2:I

    iput v1, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 104
    sget v1, Ljcifs/smb/SmbTransport;->MAX_MPX_COUNT:I

    iput v1, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 105
    sget v1, Ljcifs/smb/SmbTransport;->SND_BUF_SIZE:I

    iput v1, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 106
    sget v1, Ljcifs/smb/SmbTransport;->RCV_BUF_SIZE:I

    iput v1, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    .line 107
    sget v1, Ljcifs/smb/SmbTransport;->CAPABILITIES:I

    iput v1, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    const/4 v1, 0x0

    .line 108
    iput v1, p0, Ljcifs/smb/SmbTransport;->sessionKey:I

    .line 109
    sget-boolean v1, Ljcifs/smb/SmbTransport;->USE_UNICODE:Z

    iput-boolean v1, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    .line 110
    iput-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    .line 114
    iput p2, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 115
    iput-object p3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    .line 116
    iput p4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    return-void
.end method

.method static declared-synchronized getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;
    .locals 4

    const-class v0, Ljcifs/smb/SmbTransport;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Ljcifs/smb/SmbTransport;->LADDR:Ljava/net/InetAddress;

    sget v2, Ljcifs/smb/SmbTransport;->LPORT:I

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v2, v3}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;
    .locals 10

    const-class v0, Ljcifs/smb/SmbTransport;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Ljcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    sget v2, Ljcifs/smb/SmbTransport;->SSN_LIMIT:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 49
    sget-object v2, Ljcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 50
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljcifs/smb/SmbTransport;

    move-object v4, v3

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    .line 52
    invoke-virtual/range {v4 .. v9}, Ljcifs/smb/SmbTransport;->matches(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Ljcifs/smb/SmbTransport;->SSN_LIMIT:I

    if-eqz v4, :cond_1

    iget-object v4, v3, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    sget v5, Ljcifs/smb/SmbTransport;->SSN_LIMIT:I

    if-ge v4, v5, :cond_0

    .line 54
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v3

    .line 59
    :cond_2
    :try_start_2
    new-instance p4, Ljcifs/smb/SmbTransport;

    invoke-direct {p4, p0, p1, p2, p3}, Ljcifs/smb/SmbTransport;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V

    .line 60
    sget-object p0, Ljcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 61
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    monitor-exit v0

    return-object p4

    :catchall_0
    move-exception p0

    .line 61
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 46
    monitor-exit v0

    throw p0
.end method

.method private negotiate(ILjcifs/smb/ServerMessageBlock;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    monitor-enter v0

    const/16 v1, 0x8b

    if-ne p1, v1, :cond_0

    .line 249
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->ssn139()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x1bd

    .line 261
    :cond_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 262
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 264
    :cond_2
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v3}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget p1, Ljcifs/smb/SmbTransport;->CONN_TIMEOUT:I

    invoke-virtual {v1, v2, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 265
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    sget v1, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 267
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 268
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 271
    :goto_0
    iget p1, p0, Ljcifs/smb/SmbTransport;->mid:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Ljcifs/smb/SmbTransport;->mid:I

    const/16 v2, 0x7d00

    if-ne p1, v2, :cond_3

    iput v1, p0, Ljcifs/smb/SmbTransport;->mid:I

    .line 272
    :cond_3
    sget-object p1, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    iget v1, p0, Ljcifs/smb/SmbTransport;->mid:I

    iput v1, p1, Ljcifs/smb/SmbComNegotiate;->mid:I

    .line 273
    sget-object p1, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljcifs/smb/SmbComNegotiate;->encode([BI)I

    move-result p1

    const v1, 0xffff

    and-int v3, p1, v1

    .line 274
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 276
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x6

    if-lt v3, v2, :cond_4

    .line 277
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget-object v6, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    invoke-virtual {v3, v6}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 278
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v4, :cond_4

    .line 279
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object v6, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v3, v6, v2, p1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 283
    :cond_4
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    add-int/lit8 v7, p1, 0x4

    invoke-virtual {v3, v6, v5, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 284
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 288
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->peekKey()Ljcifs/util/transport/Request;

    move-result-object v3

    if-nez v3, :cond_5

    .line 289
    new-instance p1, Ljava/io/IOException;

    const-string p2, "transport closed in negotiate"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 290
    :cond_5
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x2

    invoke-static {v3, v5}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v3

    and-int/2addr v1, v3

    const/16 v3, 0x21

    if-lt v1, v3, :cond_8

    add-int/lit8 v3, v1, 0x4

    .line 291
    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    array-length v5, v5

    if-le v3, v5, :cond_6

    goto :goto_1

    .line 294
    :cond_6
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/16 v6, 0x24

    add-int/lit8 v1, v1, -0x20

    invoke-static {v3, v5, v6, v1}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 295
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-virtual {p2, v1, v2}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 297
    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lt v1, v2, :cond_7

    .line 298
    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, p2}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 299
    sget-object p2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget p2, Ljcifs/util/LogStream;->level:I

    if-lt p2, v4, :cond_7

    .line 300
    sget-object p2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {p2, v1, v2, p1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 303
    :cond_7
    monitor-exit v0

    return-void

    .line 292
    :cond_8
    :goto_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid payload size: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method __getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)[Ljcifs/smb/DfsReferral;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 746
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    const-string v1, "IPC$"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    .line 747
    new-instance v1, Ljcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {v1}, Ljcifs/smb/Trans2GetDfsReferralResponse;-><init>()V

    .line 748
    new-instance v2, Ljcifs/smb/Trans2GetDfsReferral;

    invoke-direct {v2, p2}, Ljcifs/smb/Trans2GetDfsReferral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    if-eqz p3, :cond_0

    .line 750
    iget v0, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    if-ge v0, p3, :cond_1

    .line 751
    :cond_0
    iget p3, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    .line 754
    :cond_1
    new-array p3, p3, [Ljcifs/smb/DfsReferral;

    const/4 v0, 0x4

    .line 755
    new-array v0, v0, [Ljava/lang/String;

    .line 756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x0

    .line 758
    :goto_0
    array-length v5, p3

    if-ge v4, v5, :cond_3

    .line 759
    new-instance v5, Ljcifs/smb/DfsReferral;

    invoke-direct {v5}, Ljcifs/smb/DfsReferral;-><init>()V

    .line 762
    iget-boolean v6, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-boolean v6, v5, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    .line 763
    iget-object v6, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v6, v6, v4

    iget v6, v6, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    int-to-long v6, v6

    iput-wide v6, v5, Ljcifs/smb/DfsReferral;->ttl:J

    .line 764
    iput-wide v2, v5, Ljcifs/smb/DfsReferral;->expiration:J

    const-string v6, ""

    .line 765
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 766
    iget-object v6, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v6, v6, v4

    iget-object v6, v6, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    goto :goto_1

    .line 768
    :cond_2
    iget-object v6, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v6, v6, v4

    iget-object v6, v6, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    invoke-virtual {p0, v6, v0}, Ljcifs/smb/SmbTransport;->dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V

    .line 769
    aget-object v6, v0, v7

    iput-object v6, v5, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    const/4 v6, 0x2

    .line 770
    aget-object v6, v0, v6

    iput-object v6, v5, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    const/4 v6, 0x3

    .line 771
    aget-object v6, v0, v6

    iput-object v6, v5, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    .line 773
    :goto_1
    iget v6, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    iput v6, v5, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 774
    aput-object v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object p3
.end method

.method checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 532
    iget v0, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-static {v0}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result v0

    iput v0, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 533
    iget v0, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    const v1, -0x7ffffffb

    if-eq v0, v1, :cond_4

    const v1, -0x3fffffea    # -2.0000052f

    if-eq v0, v1, :cond_4

    const v1, -0x3fffffde    # -2.000008f

    if-eq v0, v1, :cond_3

    const v1, -0x3fffff96    # -2.0000253f

    if-eq v0, v1, :cond_3

    const v1, -0x3ffffe74    # -2.0000944f

    if-eq v0, v1, :cond_3

    const v1, -0x3ffffdcc    # -2.0001345f

    if-eq v0, v1, :cond_3

    const v1, -0x3ffffda9    # -2.0001428f

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 563
    new-instance p1, Ljcifs/smb/SmbException;

    iget p2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {p1, p2, v2}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 548
    :cond_0
    iget-object v0, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    if-nez v0, :cond_1

    .line 549
    new-instance p1, Ljcifs/smb/SmbException;

    iget p2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {p1, p2, v2}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 552
    :cond_1
    iget-object v0, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object v0

    if-nez v0, :cond_2

    .line 554
    new-instance p1, Ljcifs/smb/SmbException;

    iget p2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {p1, p2, v2}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 556
    :cond_2
    sget-object p2, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object p1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljcifs/smb/Dfs;->insert(Ljava/lang/String;Ljcifs/smb/DfsReferral;)V

    .line 557
    throw v0

    .line 546
    :cond_3
    :pswitch_0
    new-instance p1, Ljcifs/smb/SmbAuthException;

    iget p2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {p1, p2}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw p1

    .line 565
    :cond_4
    iget-boolean p1, p2, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    if-eqz p1, :cond_5

    .line 566
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "Signature verification failed."

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3fffff93
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 307
    :try_start_0
    sget v0, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v0, v0

    invoke-super {p0, v0, v1}, Ljcifs/util/transport/Transport;->connect(J)V
    :try_end_0
    .catch Ljcifs/util/transport/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 309
    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 680
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 681
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ne v2, v0, :cond_0

    .line 685
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    return-void

    :cond_0
    if-eq v4, v1, :cond_1

    .line 688
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_2

    :cond_1
    add-int/lit8 v5, v2, 0x1

    .line 689
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    add-int/lit8 v2, v4, 0x1

    move v3, v2

    move v2, v5

    :cond_2
    add-int/lit8 v5, v4, 0x1

    if-lt v4, v1, :cond_4

    .line 694
    :goto_1
    array-length p1, p2

    if-ge v2, p1, :cond_3

    add-int/lit8 p1, v2, 0x1

    const-string v0, ""

    .line 695
    aput-object v0, p2, v2

    move v2, p1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    move v4, v5

    goto :goto_0
.end method

.method protected doConnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    new-instance v0, Ljcifs/smb/SmbComNegotiateResponse;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-direct {v0, v1}, Ljcifs/smb/SmbComNegotiateResponse;-><init>(Ljcifs/smb/SmbTransport$ServerData;)V

    const/16 v1, 0x8b

    const/16 v2, 0x1bd

    .line 319
    :try_start_0
    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v3, v0}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 324
    :catch_0
    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eqz v3, :cond_1

    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1bd

    :cond_1
    :goto_0
    iput v1, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 325
    iget v1, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v1, v0}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V

    goto :goto_2

    .line 321
    :catch_1
    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eqz v3, :cond_3

    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x1bd

    :cond_3
    :goto_1
    iput v1, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 322
    iget v1, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v1, v0}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V

    .line 328
    :goto_2
    iget v0, v0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_4

    .line 329
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "This client does not support the negotiated dialect."

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_4
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    sget v0, Ljcifs/smb/SmbTransport;->LM_COMPATIBILITY:I

    if-nez v0, :cond_5

    .line 334
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected encryption key length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_5
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v0, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesRequired:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v0, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesEnabled:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Ljcifs/smb/SmbTransport;->SIGNPREF:Z

    if-eqz v0, :cond_6

    goto :goto_3

    .line 343
    :cond_6
    iget v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    const v2, 0xfffb

    and-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    goto :goto_4

    .line 341
    :cond_7
    :goto_3
    iget v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 345
    :goto_4
    iget v0, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 346
    iget v0, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_8

    iput v2, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 347
    :cond_8
    iget v0, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 348
    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 349
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    .line 350
    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    or-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 352
    :cond_9
    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_b

    .line 354
    sget-boolean v0, Ljcifs/smb/SmbTransport;->FORCE_UNICODE:Z

    if-eqz v0, :cond_a

    .line 355
    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    .line 358
    iget v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    and-int/lit16 v0, v0, 0x7fff

    iput v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    :cond_b
    :goto_5
    return-void
.end method

.method protected doDisconnect(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 365
    :try_start_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljcifs/smb/SmbSession;

    .line 367
    invoke-virtual {v2, p1}, Ljcifs/smb/SmbSession;->logoff(Z)V

    goto :goto_0

    .line 369
    :cond_0
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V

    .line 370
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 371
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 372
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 375
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 376
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    .line 374
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 375
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 376
    iput-object v1, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    throw p1
.end method

.method protected doRecv(Ljcifs/util/transport/Response;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    move-object v0, p1

    check-cast v0, Ljcifs/smb/ServerMessageBlock;

    .line 473
    iget-boolean v1, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    iput-boolean v1, v0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 474
    iget v1, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    .line 476
    sget-object v1, Ljcifs/smb/SmbTransport;->BUF:[B

    monitor-enter v1

    .line 477
    :try_start_0
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    sget-object v4, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v5, 0x24

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    sget-object v2, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    const/16 v3, 0x21

    if-lt v2, v3, :cond_8

    add-int/lit8 v3, v2, 0x4

    .line 479
    iget v4, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    if-le v3, v4, :cond_1

    goto/16 :goto_2

    .line 482
    :cond_1
    sget-object v3, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v4, 0x9

    invoke-static {v3, v4}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v3

    and-int/lit8 v3, v3, -0x1

    .line 483
    iget-byte v4, v0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v6, 0x2e

    const/4 v7, 0x4

    if-ne v4, v6, :cond_4

    if-eqz v3, :cond_2

    const v4, -0x7ffffffb

    if-ne v3, v4, :cond_4

    .line 486
    :cond_2
    move-object v3, v0

    check-cast v3, Ljcifs/smb/SmbComReadAndXResponse;

    .line 489
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v6, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v8, 0x1b

    invoke-static {v4, v6, v5, v8}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 490
    sget-object v4, Ljcifs/smb/SmbTransport;->BUF:[B

    invoke-virtual {v0, v4, v7}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 492
    iget v4, v3, Ljcifs/smb/SmbComReadAndXResponse;->dataOffset:I

    add-int/lit8 v4, v4, -0x3b

    .line 493
    iget v5, v3, Ljcifs/smb/SmbComReadAndXResponse;->byteCount:I

    if-lez v5, :cond_3

    if-lez v4, :cond_3

    if-ge v4, v7, :cond_3

    .line 494
    iget-object v5, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v6, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v8, 0x3f

    invoke-static {v5, v6, v8, v4}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 496
    :cond_3
    iget v4, v3, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-lez v4, :cond_5

    .line 497
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v5, v3, Ljcifs/smb/SmbComReadAndXResponse;->b:[B

    iget v6, v3, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    iget v3, v3, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    invoke-static {v4, v5, v6, v3}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    goto :goto_1

    .line 499
    :cond_4
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v4, Ljcifs/smb/SmbTransport;->BUF:[B

    add-int/lit8 v6, v2, -0x20

    invoke-static {v3, v4, v5, v6}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 500
    sget-object v3, Ljcifs/smb/SmbTransport;->BUF:[B

    invoke-virtual {v0, v3, v7}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 501
    instance-of v3, v0, Ljcifs/smb/SmbComTransactionResponse;

    if-eqz v3, :cond_5

    .line 502
    move-object v3, v0

    check-cast v3, Ljcifs/smb/SmbComTransactionResponse;

    invoke-virtual {v3}, Ljcifs/smb/SmbComTransactionResponse;->nextElement()Ljava/lang/Object;

    .line 510
    :cond_5
    :goto_1
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v3, :cond_6

    iget v3, v0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v3, :cond_6

    .line 511
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    sget-object v4, Ljcifs/smb/SmbTransport;->BUF:[B

    invoke-virtual {v3, v4, v7, v0}, Ljcifs/smb/SigningDigest;->verify([BILjcifs/smb/ServerMessageBlock;)Z

    .line 514
    :cond_6
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v7, :cond_7

    .line 515
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, p1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 516
    sget-object p1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget p1, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x6

    if-lt p1, v0, :cond_7

    .line 517
    sget-object p1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget-object v0, Ljcifs/smb/SmbTransport;->BUF:[B

    invoke-static {p1, v0, v7, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 520
    :cond_7
    monitor-exit v1

    return-void

    .line 480
    :cond_8
    :goto_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid payload size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 520
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected doSend(Ljcifs/util/transport/Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    sget-object v0, Ljcifs/smb/SmbTransport;->BUF:[B

    monitor-enter v0

    .line 438
    :try_start_0
    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    .line 439
    sget-object v1, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljcifs/smb/ServerMessageBlock;->encode([BI)I

    move-result v1

    const v3, 0xffff

    and-int/2addr v3, v1

    .line 440
    sget-object v4, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 441
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v2, :cond_2

    .line 443
    :cond_0
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, p1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 445
    instance-of v3, p1, Ljcifs/smb/AndXServerMessageBlock;

    if-eqz v3, :cond_1

    check-cast p1, Ljcifs/smb/AndXServerMessageBlock;

    iget-object p1, p1, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    if-nez p1, :cond_0

    .line 446
    :cond_1
    sget-object p1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget p1, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x6

    if-lt p1, v3, :cond_2

    .line 447
    sget-object p1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget-object v3, Ljcifs/smb/SmbTransport;->BUF:[B

    invoke-static {p1, v3, v2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 453
    :cond_2
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    sget-object v3, Ljcifs/smb/SmbTransport;->BUF:[B

    add-int/2addr v1, v2

    invoke-virtual {p1, v3, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 454
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected doSend0(Ljcifs/util/transport/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->doSend(Ljcifs/util/transport/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 460
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 461
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    const/4 v0, 0x1

    .line 463
    :try_start_1
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbTransport;->disconnect(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 465
    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 467
    :goto_0
    throw p1
.end method

.method protected doSkip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x4

    .line 524
    iget v2, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    add-int/lit8 v0, v0, -0x20

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    goto :goto_1

    .line 526
    :cond_1
    :goto_0
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    :goto_1
    return-void
.end method

.method getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 701
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    const-string v1, "IPC$"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    .line 702
    new-instance v1, Ljcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {v1}, Ljcifs/smb/Trans2GetDfsReferralResponse;-><init>()V

    .line 703
    new-instance v3, Ljcifs/smb/Trans2GetDfsReferral;

    invoke-direct {v3, p2}, Ljcifs/smb/Trans2GetDfsReferral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 705
    iget v0, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    if-eqz p3, :cond_1

    .line 707
    iget v0, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    if-ge v0, p3, :cond_2

    .line 708
    :cond_1
    iget p3, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    .line 711
    :cond_2
    new-instance v0, Ljcifs/smb/DfsReferral;

    invoke-direct {v0}, Ljcifs/smb/DfsReferral;-><init>()V

    const/4 v2, 0x4

    .line 713
    new-array v2, v2, [Ljava/lang/String;

    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    add-long/2addr v3, v5

    const/4 v5, 0x0

    .line 720
    :goto_0
    iget-boolean v6, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-boolean v6, v0, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    .line 721
    iget-object v6, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v6, v6, v5

    iget v6, v6, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    int-to-long v6, v6

    iput-wide v6, v0, Ljcifs/smb/DfsReferral;->ttl:J

    .line 722
    iput-wide v3, v0, Ljcifs/smb/DfsReferral;->expiration:J

    const-string v6, ""

    .line 723
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    .line 724
    iget-object v6, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v6, v6, v5

    iget-object v6, v6, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    goto :goto_1

    .line 726
    :cond_3
    iget-object v6, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v6, v6, v5

    iget-object v6, v6, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    invoke-virtual {p0, v6, v2}, Ljcifs/smb/SmbTransport;->dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V

    .line 727
    aget-object v6, v2, v7

    iput-object v6, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    const/4 v6, 0x2

    .line 728
    aget-object v6, v2, v6

    iput-object v6, v0, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    const/4 v6, 0x3

    .line 729
    aget-object v6, v2, v6

    iput-object v6, v0, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    .line 731
    :goto_1
    iget v6, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    iput v6, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    add-int/lit8 v5, v5, 0x1

    if-ne v5, p3, :cond_4

    .line 741
    iget-object p1, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    return-object p1

    .line 737
    :cond_4
    new-instance v6, Ljcifs/smb/DfsReferral;

    invoke-direct {v6}, Ljcifs/smb/DfsReferral;-><init>()V

    invoke-virtual {v0, v6}, Ljcifs/smb/DfsReferral;->append(Ljcifs/smb/DfsReferral;)V

    .line 738
    iget-object v0, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    goto :goto_0
.end method

.method declared-synchronized getSmbSession()Ljcifs/smb/SmbSession;
    .locals 2

    monitor-enter p0

    .line 120
    :try_start_0
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;
    .locals 7

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 127
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/SmbSession;

    .line 129
    invoke-virtual {v1, p1}, Ljcifs/smb/SmbSession;->matches(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iput-object p1, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-object v1

    .line 136
    :cond_1
    :try_start_1
    sget v0, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    if-lez v0, :cond_3

    iget-wide v0, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 137
    sget v0, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    .line 138
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 139
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/SmbSession;

    .line 141
    iget-wide v4, v1, Ljcifs/smb/SmbSession;->expiration:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    const/4 v4, 0x0

    .line 142
    invoke-virtual {v1, v4}, Ljcifs/smb/SmbSession;->logoff(Z)V

    goto :goto_0

    .line 147
    :cond_3
    new-instance v6, Ljcifs/smb/SmbSession;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    iget v2, p0, Ljcifs/smb/SmbTransport;->port:I

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SmbSession;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V

    .line 148
    iput-object p0, v6, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 149
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {p1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    monitor-exit p0

    return-object v6

    :catchall_0
    move-exception p1

    .line 125
    monitor-exit p0

    throw p1
.end method

.method hasCapability(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 168
    :try_start_0
    sget v0, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbTransport;->connect(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    iget v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 170
    new-instance v0, Ljcifs/smb/SmbException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .locals 1

    .line 175
    iget v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    if-nez v0, :cond_0

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected makeKey(Ljcifs/util/transport/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    iget v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    const/16 v2, 0x7d00

    if-ne v0, v2, :cond_0

    iput v1, p0, Ljcifs/smb/SmbTransport;->mid:I

    .line 383
    :cond_0
    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    iget v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->mid:I

    return-void
.end method

.method matches(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z
    .locals 1

    if-nez p5, :cond_0

    .line 155
    invoke-virtual {p1}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    move-result-object p5

    .line 156
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_4

    :cond_1
    iget-object p5, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {p1, p5}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_2

    iget p1, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eq p2, p1, :cond_2

    const/16 p1, 0x1bd

    if-ne p2, p1, :cond_4

    iget p1, p0, Ljcifs/smb/SmbTransport;->port:I

    const/16 p2, 0x8b

    if-ne p1, p2, :cond_4

    :cond_2
    iget-object p1, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eq p3, p1, :cond_3

    if-eqz p3, :cond_4

    iget-object p1, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    invoke-virtual {p3, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget p1, p0, Ljcifs/smb/SmbTransport;->localPort:I

    if-ne p4, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected peekKey()Ljcifs/util/transport/Request;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, v3, :cond_1

    return-object v1

    .line 390
    :cond_1
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v0, v0, v2

    const/16 v4, -0x7b

    if-eq v0, v4, :cond_0

    .line 392
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/16 v5, 0x20

    invoke-static {v0, v4, v3, v5}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v0

    if-ge v0, v5, :cond_2

    return-object v1

    .line 394
    :cond_2
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v3, :cond_3

    .line 395
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New data read: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 396
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v0, v4, v3, v5}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 407
    :cond_3
    :goto_0
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v0, v0, v2

    const/4 v4, -0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x1

    aget-byte v0, v0, v5

    if-nez v0, :cond_4

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v0, v0, v3

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x5

    aget-byte v0, v0, v5

    const/16 v5, 0x53

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x6

    aget-byte v0, v0, v5

    const/16 v5, 0x4d

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x7

    aget-byte v0, v0, v5

    const/16 v5, 0x42

    if-ne v0, v5, :cond_4

    .line 425
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/16 v2, 0x22

    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Ljcifs/smb/SmbComBlankResponse;->mid:I

    .line 433
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    return-object v0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    const/16 v5, 0x23

    if-ge v0, v5, :cond_5

    .line 418
    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    iget-object v6, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    add-int/lit8 v7, v0, 0x1

    aget-byte v6, v6, v7

    aput-byte v6, v5, v0

    move v0, v7

    goto :goto_1

    .line 421
    :cond_5
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v4, :cond_6

    return-object v1

    .line 422
    :cond_6
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    goto :goto_0
.end method

.method send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 571
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->connect()V

    .line 573
    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    iget v1, p0, Ljcifs/smb/SmbTransport;->flags2:I

    or-int/2addr v0, v1

    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 574
    iget-boolean v0, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    iput-boolean v0, p1, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 575
    iput-object p2, p1, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    .line 576
    iget-object v0, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    iput-object v0, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    :cond_0
    if-nez p2, :cond_1

    .line 581
    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->doSend0(Ljcifs/util/transport/Request;)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    .line 583
    :cond_1
    instance-of v0, p1, Ljcifs/smb/SmbComTransaction;

    if-eqz v0, :cond_9

    .line 584
    iget-byte v0, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-byte v0, p2, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 585
    move-object v0, p1

    check-cast v0, Ljcifs/smb/SmbComTransaction;

    .line 586
    move-object v1, p2

    check-cast v1, Ljcifs/smb/SmbComTransactionResponse;

    .line 588
    iget v2, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iput v2, v0, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    .line 589
    invoke-virtual {v1}, Ljcifs/smb/SmbComTransactionResponse;->reset()V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :try_start_1
    invoke-static {v0, v1}, Ljcifs/smb/BufferCache;->getBuffers(Ljcifs/smb/SmbComTransaction;Ljcifs/smb/SmbComTransactionResponse;)V

    .line 598
    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    .line 599
    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 600
    new-instance v2, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v2}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    .line 601
    sget v3, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v3, v3

    invoke-super {p0, v0, v2, v3, v4}, Ljcifs/util/transport/Transport;->sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V

    .line 602
    iget v3, v2, Ljcifs/smb/SmbComBlankResponse;->errorCode:I

    if-eqz v3, :cond_2

    .line 603
    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 605
    :cond_2
    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    goto :goto_0

    .line 607
    :cond_3
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbTransport;->makeKey(Ljcifs/util/transport/Request;)V

    .line 610
    :goto_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    .line 611
    :try_start_2
    iput-boolean v2, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 612
    iput-boolean v2, v1, Ljcifs/smb/SmbComTransactionResponse;->isReceived:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 614
    :try_start_3
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :cond_4
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbTransport;->doSend0(Ljcifs/util/transport/Request;)V

    .line 622
    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 628
    :cond_5
    sget v2, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v2, v2

    .line 629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    add-long/2addr v4, v2

    iput-wide v4, v1, Ljcifs/smb/SmbComTransactionResponse;->expiration:J

    .line 630
    :cond_6
    invoke-virtual {v1}, Ljcifs/smb/SmbComTransactionResponse;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 631
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 632
    iget-wide v2, v1, Ljcifs/smb/SmbComTransactionResponse;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_6

    .line 634
    new-instance p1, Ljcifs/util/transport/TransportException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " timedout waiting for response to "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 639
    :cond_7
    iget v2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-eqz v2, :cond_8

    .line 640
    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 645
    :cond_8
    :try_start_4
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 649
    :try_start_5
    iget-object v0, v0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    invoke-static {v0}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 650
    iget-object v0, v1, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    invoke-static {v0}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V
    :try_end_5
    .catch Ljcifs/smb/SmbException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 643
    :try_start_6
    new-instance p2, Ljcifs/util/transport/TransportException;

    invoke-direct {p2, p1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 645
    :goto_1
    :try_start_7
    iget-object p2, p0, Ljcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1

    :catchall_1
    move-exception p1

    .line 647
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    .line 649
    :try_start_9
    iget-object p2, v0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    invoke-static {p2}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 650
    iget-object p2, v1, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    invoke-static {p2}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    throw p1

    .line 654
    :cond_9
    iget-byte v0, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-byte v0, p2, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 655
    sget v0, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v0, v0

    invoke-super {p0, p1, p2, v0, v1}, Ljcifs/util/transport/Transport;->sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V
    :try_end_9
    .catch Ljcifs/smb/SmbException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 663
    :goto_2
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-void

    .line 660
    :goto_3
    new-instance p2, Ljcifs/smb/SmbException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 658
    :goto_4
    throw p1
.end method

.method ssn139()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    new-instance v0, Ljcifs/netbios/Name;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v1}, Ljcifs/UniAddress;->firstCalledName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    :cond_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 194
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 196
    :cond_1
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v3}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8b

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget v3, Ljcifs/smb/SmbTransport;->CONN_TIMEOUT:I

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 197
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    sget v2, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 199
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 200
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 202
    new-instance v1, Ljcifs/netbios/SessionRequestPacket;

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalName()Ljcifs/netbios/Name;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljcifs/netbios/SessionRequestPacket;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/Name;)V

    .line 204
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljcifs/netbios/SessionServicePacket;->writeWireFormat([BI)I

    move-result v1

    invoke-virtual {v2, v3, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 205
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v3, 0x4

    invoke-static {v1, v2, v5, v3}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 207
    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :catch_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF during NetBIOS session request"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_2
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    const/4 v2, -0x1

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eq v1, v2, :cond_5

    packed-switch v1, :pswitch_data_0

    .line 234
    invoke-virtual {p0, v6}, Ljcifs/smb/SmbTransport;->disconnect(Z)V

    .line 235
    new-instance v0, Ljcifs/netbios/NbtException;

    invoke-direct {v0, v4, v5}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    .line 218
    :pswitch_0
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x80

    if-eq v1, v2, :cond_3

    const/16 v2, 0x82

    if-eq v1, v2, :cond_3

    .line 225
    invoke-virtual {p0, v6}, Ljcifs/smb/SmbTransport;->disconnect(Z)V

    .line 226
    new-instance v0, Ljcifs/netbios/NbtException;

    invoke-direct {v0, v4, v1}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    .line 222
    :cond_3
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 237
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v1}, Ljcifs/UniAddress;->nextCalledName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 239
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to establish session with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :pswitch_1
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v3, :cond_4

    .line 215
    sget-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session established ok with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 230
    :cond_5
    invoke-virtual {p0, v6}, Ljcifs/smb/SmbTransport;->disconnect(Z)V

    .line 231
    new-instance v0, Ljcifs/netbios/NbtException;

    invoke-direct {v0, v4, v2}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljcifs/util/transport/Transport;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
