.class Ljcifs/netbios/SocketInputStream;
.super Ljava/io/InputStream;
.source "SocketInputStream.java"


# static fields
.field private static final TMP_BUFFER_SIZE:I = 0x100


# instance fields
.field private bip:I

.field private header:[B

.field private in:Ljava/io/InputStream;

.field private n:I

.field private ssp:Ljcifs/netbios/SessionServicePacket;

.field private tmp:[B

.field private tot:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 34
    iput-object p1, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    const/4 p1, 0x4

    .line 35
    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    const/16 p1, 0x100

    .line 36
    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget v0, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    if-lez v0, :cond_0

    .line 104
    iget v0, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/netbios/SocketInputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    .line 41
    monitor-exit p0

    return v0

    .line 43
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    aget-byte v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 39
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 46
    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/netbios/SocketInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 55
    monitor-exit p0

    return v0

    .line 57
    :cond_0
    :try_start_0
    iput v0, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    .line 60
    :cond_1
    :goto_0
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    const/4 v2, -0x1

    if-lez v1, :cond_4

    .line 61
    iget-object v1, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    iget v3, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->n:I

    .line 62
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->n:I

    if-ne v1, v2, :cond_3

    .line 63
    iget p1, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    if-lez p1, :cond_2

    iget v2, p0, Ljcifs/netbios/SocketInputStream;->tot:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return v2

    .line 65
    :cond_3
    :try_start_1
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    iget v2, p0, Ljcifs/netbios/SocketInputStream;->n:I

    add-int/2addr v1, v2

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    .line 66
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->n:I

    add-int/2addr p2, v1

    .line 67
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->n:I

    sub-int/2addr p3, v1

    .line 68
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    iget v2, p0, Ljcifs/netbios/SocketInputStream;->n:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    if-nez p3, :cond_1

    .line 70
    iget p1, p0, Ljcifs/netbios/SocketInputStream;->tot:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 74
    :cond_4
    :try_start_2
    iget-object v1, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    invoke-static {v1, v3, v0}, Ljcifs/netbios/SessionServicePacket;->readPacketType(Ljava/io/InputStream;[BI)I

    move-result v1

    const/16 v3, 0x85

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    iget-object v1, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    invoke-static {v1, v0}, Ljcifs/netbios/SessionServicePacket;->readLength([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    goto :goto_0

    .line 81
    :pswitch_1
    iget p1, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    if-lez p1, :cond_5

    .line 82
    iget p1, p0, Ljcifs/netbios/SocketInputStream;->tot:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    .line 84
    :cond_5
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 90
    monitor-exit p0

    return-wide v0

    :cond_0
    move-wide v2, p1

    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    .line 94
    :try_start_0
    iget-object v4, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    const/4 v5, 0x0

    const-wide/16 v6, 0x100

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p0, v4, v5, v6}, Ljcifs/netbios/SocketInputStream;->read([BII)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 88
    monitor-exit p0

    throw p1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    sub-long/2addr p1, v2

    .line 100
    monitor-exit p0

    return-wide p1
.end method
