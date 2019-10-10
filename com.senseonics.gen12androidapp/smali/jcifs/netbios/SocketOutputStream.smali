.class Ljcifs/netbios/SocketOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SocketOutputStream.java"


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const v0, 0xffff

    if-le p3, v0, :cond_0

    .line 33
    :try_start_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "write too large: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    .line 35
    new-instance p1, Ljava/io/IOException;

    const-string p2, "NetBIOS socket output buffer requires 4 bytes available before off"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 p2, p2, -0x4

    add-int/lit8 v1, p2, 0x0

    const/4 v2, 0x0

    .line 40
    aput-byte v2, p1, v1

    add-int/lit8 v1, p2, 0x1

    .line 41
    aput-byte v2, p1, v1

    add-int/lit8 v1, p2, 0x2

    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 42
    aput-byte v2, p1, v1

    add-int/lit8 v1, p2, 0x3

    and-int/lit16 v2, p3, 0xff

    int-to-byte v2, v2

    .line 43
    aput-byte v2, p1, v1

    .line 45
    iget-object v1, p0, Ljcifs/netbios/SocketOutputStream;->out:Ljava/io/OutputStream;

    add-int/2addr p3, v0

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 31
    :goto_0
    monitor-exit p0

    throw p1
.end method
