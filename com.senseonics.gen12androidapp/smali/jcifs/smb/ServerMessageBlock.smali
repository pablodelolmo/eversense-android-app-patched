.class abstract Ljcifs/smb/ServerMessageBlock;
.super Ljcifs/util/transport/Response;
.source "ServerMessageBlock.java"

# interfaces
.implements Ljcifs/util/transport/Request;
.implements Ljcifs/smb/SmbConstants;


# static fields
.field static final SMB_COM_CHECK_DIRECTORY:B = 0x10t

.field static final SMB_COM_CLOSE:B = 0x4t

.field static final SMB_COM_CREATE_DIRECTORY:B = 0x0t

.field static final SMB_COM_DELETE:B = 0x6t

.field static final SMB_COM_DELETE_DIRECTORY:B = 0x1t

.field static final SMB_COM_ECHO:B = 0x2bt

.field static final SMB_COM_FIND_CLOSE2:B = 0x34t

.field static final SMB_COM_LOGOFF_ANDX:B = 0x74t

.field static final SMB_COM_MOVE:B = 0x2at

.field static final SMB_COM_NEGOTIATE:B = 0x72t

.field static final SMB_COM_NT_CREATE_ANDX:B = -0x5et

.field static final SMB_COM_NT_TRANSACT:B = -0x60t

.field static final SMB_COM_NT_TRANSACT_SECONDARY:B = -0x5ft

.field static final SMB_COM_OPEN_ANDX:B = 0x2dt

.field static final SMB_COM_QUERY_INFORMATION:B = 0x8t

.field static final SMB_COM_READ_ANDX:B = 0x2et

.field static final SMB_COM_RENAME:B = 0x7t

.field static final SMB_COM_SESSION_SETUP_ANDX:B = 0x73t

.field static final SMB_COM_TRANSACTION:B = 0x25t

.field static final SMB_COM_TRANSACTION2:B = 0x32t

.field static final SMB_COM_TRANSACTION_SECONDARY:B = 0x26t

.field static final SMB_COM_TREE_CONNECT_ANDX:B = 0x75t

.field static final SMB_COM_TREE_DISCONNECT:B = 0x71t

.field static final SMB_COM_WRITE:B = 0xbt

.field static final SMB_COM_WRITE_ANDX:B = 0x2ft

.field static final header:[B

.field static log:Ljcifs/util/LogStream;


# instance fields
.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field batchLevel:I

.field byteCount:I

.field command:B

.field digest:Ljcifs/smb/SigningDigest;

.field errorCode:I

.field extendedSecurity:Z

.field flags:B

.field flags2:I

.field headerStart:I

.field length:I

.field mid:I

.field path:Ljava/lang/String;

.field pid:I

.field received:Z

.field response:Ljcifs/smb/ServerMessageBlock;

.field responseTimeout:J

.field signSeq:I

.field tid:I

.field uid:I

.field useUnicode:Z

.field verifyFailed:Z

.field wordCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    const/16 v0, 0x18

    .line 36
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljcifs/smb/ServerMessageBlock;->header:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x53t
        0x4dt
        0x42t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .line 188
    invoke-direct {p0}, Ljcifs/util/transport/Response;-><init>()V

    const-wide/16 v0, 0x1

    .line 180
    iput-wide v0, p0, Ljcifs/smb/ServerMessageBlock;->responseTimeout:J

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 185
    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    const/16 v0, 0x18

    .line 189
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 190
    sget v0, Ljcifs/smb/ServerMessageBlock;->PID:I

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    return-void
.end method

.method static readInt2([BI)I
    .locals 1

    .line 56
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    return v0
.end method

.method static readInt4([BI)I
    .locals 2

    .line 60
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    add-int/2addr v0, p0

    return v0
.end method

.method static readInt8([BI)J
    .locals 4

    .line 66
    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method static readTime([BI)J
    .locals 4

    .line 80
    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    .line 81
    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p0

    int-to-long p0, p0

    const/16 v1, 0x20

    shl-long/2addr p0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    const-wide/16 v0, 0x2710

    .line 83
    div-long/2addr p0, v0

    const-wide v0, 0xa9730b66800L

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method static readUTime([BI)J
    .locals 2

    .line 93
    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    return-wide p0
.end method

.method static writeInt2(J[BI)V
    .locals 1

    long-to-int v0, p0

    int-to-byte v0, v0

    .line 46
    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    const/16 v0, 0x8

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    .line 47
    aput-byte p0, p2, p3

    return-void
.end method

.method static writeInt4(J[BI)V
    .locals 2

    long-to-int v0, p0

    int-to-byte v0, v0

    .line 50
    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    const/16 v0, 0x8

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    .line 51
    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    .line 52
    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    .line 53
    aput-byte p0, p2, p3

    return-void
.end method

.method static writeInt8(J[BI)V
    .locals 2

    long-to-int v0, p0

    int-to-byte v0, v0

    .line 70
    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    const/16 v0, 0x8

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    .line 71
    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    .line 72
    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    .line 73
    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    .line 74
    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    .line 75
    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    .line 76
    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    .line 77
    aput-byte p0, p2, p3

    return-void
.end method

.method static writeTime(J[BI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide v0, 0xa9730b66800L

    add-long/2addr p0, v0

    const-wide/16 v0, 0x2710

    mul-long p0, p0, v0

    .line 90
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    return-void
.end method

.method static writeUTime(J[BI)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    cmp-long v0, p0, v1

    if-nez v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Ljcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    const-wide/32 v2, 0x36ee80

    if-eqz v1, :cond_2

    .line 103
    sget-object v1, Ljcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    sub-long/2addr p0, v2

    goto :goto_0

    .line 111
    :cond_2
    sget-object v1, Ljcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-long/2addr p0, v2

    .line 118
    :cond_3
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x3e8

    .line 119
    div-long/2addr p0, v0

    long-to-int p0, p0

    int-to-long p0, p0

    invoke-static {p0, p1, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    return-void

    :catchall_0
    move-exception p0

    .line 118
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 97
    :cond_4
    :goto_1
    invoke-static {v1, v2, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    return-void
.end method


# virtual methods
.method decode([BI)I
    .locals 6

    .line 348
    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 350
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->readHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v1, v0, 0x1

    .line 352
    aget-byte v0, p1, v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 353
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    const/4 v2, 0x5

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    move-result v0

    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v3, v3, 0x2

    if-eq v0, v3, :cond_0

    .line 356
    sget-object v3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v2, :cond_0

    .line 357
    sget-object v3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wordCount * 2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " but readParameterWordsWireFormat returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 361
    :cond_0
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 364
    :cond_1
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/lit8 v1, v1, 0x2

    .line 367
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    move-result p1

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-eq p1, v0, :cond_2

    .line 370
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v2, :cond_2

    .line 371
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but readBytesWireFormat returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 378
    :cond_2
    iget p1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr v1, p1

    :cond_3
    sub-int/2addr v1, p2

    .line 381
    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 382
    iget p1, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    return p1
.end method

.method encode([BI)I
    .locals 6

    .line 327
    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 329
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v1, v0, 0x1

    .line 330
    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 331
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v2, v2, 0x2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 332
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/2addr v1, v0

    .line 333
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/lit8 v0, v1, 0x2

    .line 334
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/lit8 v0, v1, 0x1

    .line 335
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    .line 336
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 337
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr v1, v0

    sub-int/2addr v1, p2

    .line 339
    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 341
    iget-object p2, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-eqz p2, :cond_0

    .line 342
    iget-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    iget-object v5, p0, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SigningDigest;->sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 345
    :cond_0
    iget p1, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 441
    instance-of v0, p1, Ljcifs/smb/ServerMessageBlock;

    if-eqz v0, :cond_0

    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    iget p1, p1, Ljcifs/smb/ServerMessageBlock;->mid:I

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 438
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    return v0
.end method

.method isResponse()Z
    .locals 2

    .line 408
    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method abstract readBytesWireFormat([BI)I
.end method

.method readHeaderWireFormat([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x4

    .line 397
    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    add-int/lit8 v0, p2, 0x5

    .line 398
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    add-int/lit8 v0, p2, 0x9

    .line 399
    aget-byte v1, p1, v0

    iput-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    add-int/lit8 v0, v0, 0x1

    .line 400
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    add-int/lit8 p2, p2, 0x18

    .line 401
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    add-int/lit8 v0, p2, 0x2

    .line 402
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    add-int/lit8 v0, p2, 0x4

    .line 403
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    add-int/lit8 p2, p2, 0x6

    .line 404
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    const/16 p1, 0x20

    return p1
.end method

.method abstract readParameterWordsWireFormat([BI)I
.end method

.method readString([BI)Ljava/lang/String;
    .locals 2

    .line 232
    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    const/16 v1, 0x100

    invoke-virtual {p0, p1, p2, v1, v0}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method readString([BIIIZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x80

    if-eqz p5, :cond_6

    .line 276
    :try_start_0
    iget p5, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int p5, p2, p5

    rem-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    :goto_0
    add-int p5, p2, v0

    add-int/lit8 v2, p5, 0x1

    if-ge v2, p3, :cond_5

    .line 280
    aget-byte p5, p1, p5

    if-nez p5, :cond_1

    aget-byte p5, p1, v2

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    if-le v0, p4, :cond_4

    .line 284
    sget-object p3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget p3, Ljcifs/util/LogStream;->level:I

    if-lez p3, :cond_3

    .line 285
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v1, :cond_2

    add-int/lit8 v1, p4, 0x8

    :cond_2
    invoke-static {p3, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 286
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "zero termination not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 289
    :cond_5
    :goto_1
    new-instance p3, Ljava/lang/String;

    const-string p4, "UTF-16LE"

    invoke-direct {p3, p1, p2, v0, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_6
    :goto_2
    if-ge p2, p3, :cond_b

    add-int p5, p2, v0

    .line 292
    aget-byte p5, p1, p5

    if-nez p5, :cond_7

    goto :goto_3

    :cond_7
    if-le v0, p4, :cond_a

    .line 296
    sget-object p3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget p3, Ljcifs/util/LogStream;->level:I

    if-lez p3, :cond_9

    .line 297
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v1, :cond_8

    add-int/lit8 v1, p4, 0x8

    :cond_8
    invoke-static {p3, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 298
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "zero termination not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 301
    :cond_b
    :goto_3
    new-instance p3, Ljava/lang/String;

    sget-object p4, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {p3, p1, p2, v0, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 304
    :goto_4
    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_c

    .line 305
    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_c
    const/4 p3, 0x0

    :goto_5
    return-object p3
.end method

.method readString([BIIZ)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x80

    const/4 v1, 0x0

    if-eqz p4, :cond_5

    .line 240
    :try_start_0
    iget p4, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int p4, p2, p4

    rem-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    add-int p4, p2, v1

    .line 244
    aget-byte v2, p1, p4

    if-nez v2, :cond_2

    add-int/lit8 p4, p4, 0x1

    aget-byte p4, p1, p4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    new-instance p3, Ljava/lang/String;

    const-string p4, "UTF-16LE"

    invoke-direct {p3, p1, p2, v1, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_0
    add-int/lit8 v1, v1, 0x2

    if-le v1, p3, :cond_0

    .line 247
    sget-object p4, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget p4, Ljcifs/util/LogStream;->level:I

    if-lez p4, :cond_4

    .line 248
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v0, :cond_3

    add-int/lit8 v0, p3, 0x8

    :cond_3
    invoke-static {p4, p1, p2, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 249
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "zero termination not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_5
    add-int p4, p2, v1

    .line 254
    aget-byte p4, p1, p4

    if-eqz p4, :cond_8

    add-int/lit8 v1, v1, 0x1

    if-le v1, p3, :cond_5

    .line 257
    sget-object p4, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget p4, Ljcifs/util/LogStream;->level:I

    if-lez p4, :cond_7

    .line 258
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v0, :cond_6

    add-int/lit8 v0, p3, 0x8

    :cond_6
    invoke-static {p4, p1, p2, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 259
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "zero termination not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_8
    new-instance p3, Ljava/lang/String;

    sget-object p4, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {p3, p1, p2, v1, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 265
    :goto_1
    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_9

    .line 266
    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_9
    const/4 p3, 0x0

    :goto_2
    return-object p3
.end method

.method readStringLength([BII)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    add-int v1, p2, v0

    .line 319
    aget-byte v1, p1, v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    if-le v0, p3, :cond_0

    .line 321
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "zero termination not found: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    const/16 v0, 0x18

    .line 195
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 197
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 198
    iput-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->received:Z

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    return-void
.end method

.method stringWireLength(Ljava/lang/String;I)I
    .locals 2

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 311
    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x2

    .line 313
    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    move v0, p1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 445
    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    sparse-switch v0, :sswitch_data_0

    const-string v0, "UNKNOWN"

    goto :goto_0

    :sswitch_0
    const-string v0, "SMB_COM_TREE_CONNECT_ANDX"

    goto :goto_0

    :sswitch_1
    const-string v0, "SMB_COM_LOGOFF_ANDX"

    goto :goto_0

    :sswitch_2
    const-string v0, "SMB_COM_SESSION_SETUP_ANDX"

    goto :goto_0

    :sswitch_3
    const-string v0, "SMB_COM_NEGOTIATE"

    goto :goto_0

    :sswitch_4
    const-string v0, "SMB_COM_TREE_DISCONNECT"

    goto :goto_0

    :sswitch_5
    const-string v0, "SMB_COM_FIND_CLOSE2"

    goto :goto_0

    :sswitch_6
    const-string v0, "SMB_COM_TRANSACTION2"

    goto :goto_0

    :sswitch_7
    const-string v0, "SMB_COM_WRITE_ANDX"

    goto :goto_0

    :sswitch_8
    const-string v0, "SMB_COM_READ_ANDX"

    goto :goto_0

    :sswitch_9
    const-string v0, "SMB_COM_OPEN_ANDX"

    goto :goto_0

    :sswitch_a
    const-string v0, "SMB_COM_ECHO"

    goto :goto_0

    :sswitch_b
    const-string v0, "SMB_COM_MOVE"

    goto :goto_0

    :sswitch_c
    const-string v0, "SMB_COM_TRANSACTION_SECONDARY"

    goto :goto_0

    :sswitch_d
    const-string v0, "SMB_COM_TRANSACTION"

    goto :goto_0

    :sswitch_e
    const-string v0, "SMB_COM_CHECK_DIRECTORY"

    goto :goto_0

    :sswitch_f
    const-string v0, "SMB_COM_QUERY_INFORMATION"

    goto :goto_0

    :sswitch_10
    const-string v0, "SMB_COM_RENAME"

    goto :goto_0

    :sswitch_11
    const-string v0, "SMB_COM_DELETE"

    goto :goto_0

    :sswitch_12
    const-string v0, "SMB_COM_CLOSE"

    goto :goto_0

    :sswitch_13
    const-string v0, "SMB_COM_DELETE_DIRECTORY"

    goto :goto_0

    :sswitch_14
    const-string v0, "SMB_COM_CREATE_DIRECTORY"

    goto :goto_0

    :sswitch_15
    const-string v0, "SMB_COM_NT_CREATE_ANDX"

    goto :goto_0

    :sswitch_16
    const-string v0, "SMB_COM_NT_TRANSACT_SECONDARY"

    goto :goto_0

    :sswitch_17
    const-string v0, "SMB_COM_NT_TRANSACT"

    .line 521
    :goto_0
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v1, :cond_0

    const-string v1, "0"

    goto :goto_1

    :cond_0
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-static {v1}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v1

    .line 522
    :goto_1
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",received="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->received:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",errorCode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",flags=0x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",flags2=0x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    invoke-static {v0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",signSeq="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",tid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",pid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",uid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",wordCount="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",byteCount="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x60 -> :sswitch_17
        -0x5f -> :sswitch_16
        -0x5e -> :sswitch_15
        0x0 -> :sswitch_14
        0x1 -> :sswitch_13
        0x4 -> :sswitch_12
        0x6 -> :sswitch_11
        0x7 -> :sswitch_10
        0x8 -> :sswitch_f
        0x10 -> :sswitch_e
        0x25 -> :sswitch_d
        0x26 -> :sswitch_c
        0x2a -> :sswitch_b
        0x2b -> :sswitch_a
        0x2d -> :sswitch_9
        0x2e -> :sswitch_8
        0x2f -> :sswitch_7
        0x32 -> :sswitch_6
        0x34 -> :sswitch_5
        0x71 -> :sswitch_4
        0x72 -> :sswitch_3
        0x73 -> :sswitch_2
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method abstract writeBytesWireFormat([BI)I
.end method

.method writeHeaderWireFormat([BI)I
    .locals 3

    .line 385
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->header:[B

    sget-object v1, Ljcifs/smb/ServerMessageBlock;->header:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0x4

    .line 386
    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x9

    .line 387
    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    aput-byte v1, p1, v0

    .line 388
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    int-to-long v1, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 p2, p2, 0x18

    .line 390
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 391
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x2

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 392
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x4

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 393
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    int-to-long v0, v0

    add-int/lit8 p2, p2, 0x6

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    const/16 p1, 0x20

    return p1
.end method

.method abstract writeParameterWordsWireFormat([BI)I
.end method

.method writeString(Ljava/lang/String;[BI)I
    .locals 1

    .line 202
    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BIZ)I

    move-result p1

    return p1
.end method

.method writeString(Ljava/lang/String;[BIZ)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 210
    :try_start_0
    iget p4, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int p4, p3, p4

    rem-int/lit8 p4, p4, 0x2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p4, :cond_0

    add-int/lit8 p4, p3, 0x1

    .line 211
    :try_start_1
    aput-byte v0, p2, p3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move p4, p3

    :goto_0
    const-string v1, "UTF-16LE"

    .line 213
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v0, p2, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p4, p1

    add-int/lit8 p1, p4, 0x1

    .line 216
    :try_start_2
    aput-byte v0, p2, p4
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 p4, p1, 0x1

    .line 217
    :try_start_3
    aput-byte v0, p2, p1
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_1
    move-exception p2

    move p4, p1

    move-object p1, p2

    goto :goto_1

    :catch_2
    move-exception p1

    move p4, p3

    goto :goto_1

    .line 219
    :cond_1
    :try_start_4
    sget-object p4, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 220
    array-length p4, p1

    invoke-static {p1, v0, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    array-length p1, p1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    add-int/2addr p1, p3

    add-int/lit8 p4, p1, 0x1

    .line 222
    :try_start_5
    aput-byte v0, p2, p1
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 225
    :goto_1
    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x1

    if-le p2, v0, :cond_2

    .line 226
    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    :goto_2
    sub-int/2addr p4, p3

    return p4
.end method
