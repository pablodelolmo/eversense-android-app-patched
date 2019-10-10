.class public Ljcifs/smb/SmbFileInputStream;
.super Ljava/io/InputStream;
.source "SmbFileInputStream.java"


# instance fields
.field private access:I

.field file:Ljcifs/smb/SmbFile;

.field private fp:J

.field private openFlags:I

.field private readSize:I

.field private tmp:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljcifs/smb/SmbFile;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;I)V

    return-void
.end method

.method constructor <init>(Ljcifs/smb/SmbFile;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    .line 69
    iput-object p1, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    const v0, 0xffff

    and-int v1, p2, v0

    .line 70
    iput v1, p0, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    ushr-int/lit8 v1, p2, 0x10

    and-int/2addr v0, v1

    .line 71
    iput v0, p0, Ljcifs/smb/SmbFileInputStream;->access:I

    .line 72
    iget v0, p1, Ljcifs/smb/SmbFile;->type:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 73
    iget v0, p0, Ljcifs/smb/SmbFileInputStream;->access:I

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 74
    iget p2, p0, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    and-int/lit8 p2, p2, -0x51

    iput p2, p0, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->connect0()V

    .line 78
    :goto_0
    iget-object p2, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object p2, p2, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object p2, p2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget p2, p2, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 p2, p2, -0x46

    iget-object p1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object p1, p1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget p1, p1, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    add-int/lit8 p1, p1, -0x46

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Ljcifs/smb/SmbFileInputStream;->readSize:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v0, v0, Ljcifs/smb/SmbFile;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    return v1

    .line 216
    :cond_0
    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    check-cast v0, Ljcifs/smb/SmbNamedPipe;

    .line 217
    iget-object v2, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    const/16 v3, 0x20

    iget v4, v0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    const/16 v5, 0x80

    invoke-virtual {v2, v3, v4, v5, v1}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 219
    new-instance v2, Ljcifs/smb/TransPeekNamedPipe;

    iget-object v3, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget-object v3, v3, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget-object v4, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v4, v4, Ljcifs/smb/SmbFile;->fid:I

    invoke-direct {v2, v3, v4}, Ljcifs/smb/TransPeekNamedPipe;-><init>(Ljava/lang/String;I)V

    .line 220
    new-instance v3, Ljcifs/smb/TransPeekNamedPipeResponse;

    invoke-direct {v3, v0}, Ljcifs/smb/TransPeekNamedPipeResponse;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    .line 222
    invoke-virtual {v0, v2, v3}, Ljcifs/smb/SmbNamedPipe;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 223
    iget v0, v3, Ljcifs/smb/TransPeekNamedPipeResponse;->status:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget v0, v3, Ljcifs/smb/TransPeekNamedPipeResponse;->status:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 228
    :cond_1
    iget v0, v3, Ljcifs/smb/TransPeekNamedPipeResponse;->available:I

    return v0

    .line 225
    :cond_2
    :goto_0
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iput-boolean v1, v0, Ljcifs/smb/SmbFile;->opened:Z
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFileInputStream;->seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->close()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFileInputStream;->seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v2

    .line 122
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/SmbFileInputStream;->readDirect([BII)I

    move-result p1

    return p1
.end method

.method public readDirect([BII)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    return v4

    .line 148
    :cond_0
    iget-wide v5, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    .line 150
    iget-object v7, v1, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    if-nez v7, :cond_1

    .line 151
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bad file descriptor"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_1
    iget-object v7, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v8, v1, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    iget v9, v1, Ljcifs/smb/SmbFileInputStream;->access:I

    const/16 v10, 0x80

    invoke-virtual {v7, v8, v9, v10, v4}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 160
    iget-object v4, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v7, 0x4

    if-lt v4, v7, :cond_2

    .line 161
    iget-object v4, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read: fid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v9, v9, Ljcifs/smb/SmbFile;->fid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",off="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",len="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 163
    :cond_2
    new-instance v4, Ljcifs/smb/SmbComReadAndXResponse;

    move-object/from16 v8, p1

    invoke-direct {v4, v8, v2}, Ljcifs/smb/SmbComReadAndXResponse;-><init>([BI)V

    .line 165
    iget-object v2, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v2, v2, Ljcifs/smb/SmbFile;->type:I

    const-wide/16 v8, 0x0

    const/16 v10, 0x10

    if-ne v2, v10, :cond_3

    .line 166
    iput-wide v8, v4, Ljcifs/smb/SmbComReadAndXResponse;->responseTimeout:J

    .line 171
    :cond_3
    :goto_0
    iget v2, v1, Ljcifs/smb/SmbFileInputStream;->readSize:I

    if-le v3, v2, :cond_4

    iget v2, v1, Ljcifs/smb/SmbFileInputStream;->readSize:I

    goto :goto_1

    :cond_4
    move v2, v3

    .line 173
    :goto_1
    iget-object v11, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    sget-object v11, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v11, Ljcifs/util/LogStream;->level:I

    if-lt v11, v7, :cond_5

    .line 174
    iget-object v11, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    sget-object v11, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "read: len="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",r="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",fp="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 177
    :cond_5
    :try_start_0
    new-instance v15, Ljcifs/smb/SmbComReadAndX;

    iget-object v11, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v12, v11, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v13, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    const/16 v16, 0x0

    move-object v11, v15

    move-object v7, v15

    move v15, v2

    invoke-direct/range {v11 .. v16}, Ljcifs/smb/SmbComReadAndX;-><init>(IJILjcifs/smb/ServerMessageBlock;)V

    .line 178
    iget-object v11, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v11, v11, Ljcifs/smb/SmbFile;->type:I

    if-ne v11, v10, :cond_6

    const/16 v11, 0x400

    .line 179
    iput v11, v7, Ljcifs/smb/SmbComReadAndX;->remaining:I

    iput v11, v7, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    iput v11, v7, Ljcifs/smb/SmbComReadAndX;->minCount:I

    .line 181
    :cond_6
    iget-object v11, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v11, v7, v4}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    iget v7, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-gtz v7, :cond_8

    .line 190
    iget-wide v2, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    sub-long/2addr v2, v5

    cmp-long v2, v2, v8

    if-lez v2, :cond_7

    iget-wide v2, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    sub-long/2addr v2, v5

    goto :goto_2

    :cond_7
    const-wide/16 v2, -0x1

    :goto_2
    long-to-int v2, v2

    return v2

    .line 192
    :cond_8
    iget-wide v11, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    int-to-long v13, v7

    add-long/2addr v11, v13

    iput-wide v11, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    sub-int/2addr v3, v7

    .line 194
    iget v11, v4, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    add-int/2addr v11, v7

    iput v11, v4, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    if-lez v3, :cond_a

    if-eq v7, v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v7, 0x4

    goto/16 :goto_0

    .line 197
    :cond_a
    :goto_3
    iget-wide v2, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    sub-long/2addr v2, v5

    long-to-int v2, v2

    return v2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 183
    iget-object v3, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v3, v3, Ljcifs/smb/SmbFile;->type:I

    if-ne v3, v10, :cond_b

    invoke-virtual {v2}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v3

    const v4, -0x3ffffeb5    # -2.000079f

    if-ne v3, v4, :cond_b

    const/4 v2, -0x1

    return v2

    .line 187
    :cond_b
    invoke-virtual {v1, v2}, Ljcifs/smb/SmbFileInputStream;->seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method protected seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;
    .locals 2

    .line 84
    invoke-virtual {p1}, Ljcifs/smb/SmbException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 85
    instance-of v1, v0, Ljcifs/util/transport/TransportException;

    if-eqz v1, :cond_0

    .line 86
    move-object p1, v0

    check-cast p1, Ljcifs/util/transport/TransportException;

    .line 87
    move-object v0, p1

    check-cast v0, Ljcifs/util/transport/TransportException;

    invoke-virtual {v0}, Ljcifs/util/transport/TransportException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 89
    :cond_0
    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_1

    .line 90
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object p1
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 241
    iget-wide v0, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    return-wide p1

    :cond_0
    return-wide v0
.end method
