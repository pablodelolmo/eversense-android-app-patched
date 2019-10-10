.class Ljcifs/smb/SmbComNegotiateResponse;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComNegotiateResponse.java"


# instance fields
.field dialectIndex:I

.field server:Ljcifs/smb/SmbTransport$ServerData;


# direct methods
.method constructor <init>(Ljcifs/smb/SmbTransport$ServerData;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 31
    iput-object p1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 5

    .line 69
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 70
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    new-array v2, v2, [B

    iput-object v2, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    .line 71
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    add-int/2addr v0, p2

    .line 74
    iget v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->byteCount:I

    iget-object v3, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    if-le v2, v3, :cond_6

    .line 78
    :try_start_0
    iget v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->flags2:I

    const v3, 0x8000

    and-int/2addr v2, v3

    const/16 v4, 0x100

    if-ne v2, v3, :cond_3

    :cond_0
    add-int v2, v0, v1

    .line 80
    aget-byte v3, p1, v2

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v3, p1, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, v2, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    add-int/lit8 v1, v1, 0x2

    if-le v1, v4, :cond_0

    .line 83
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v2, "zero termination not found"

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int v2, v0, v1

    .line 89
    aget-byte v2, p1, v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    if-le v1, v4, :cond_3

    .line 92
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v2, "zero termination not found"

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_4
    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v3, p1, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, v2, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 99
    sget-object v2, Ljcifs/smb/SmbComNegotiateResponse;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 100
    sget-object v2, Ljcifs/smb/SmbComNegotiateResponse;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_5
    :goto_1
    add-int p1, v0, v1

    goto :goto_2

    .line 104
    :cond_6
    iget-object p1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p1, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    move p1, v0

    goto :goto_2

    .line 107
    :cond_7
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    const/16 v2, 0x10

    new-array v3, v2, [B

    iput-object v3, v0, Ljcifs/smb/SmbTransport$ServerData;->guid:[B

    .line 108
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v0, v0, Ljcifs/smb/SmbTransport$ServerData;->guid:[B

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget-object p1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p1, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    move p1, p2

    :goto_2
    sub-int/2addr p1, p2

    return p1
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 8

    .line 44
    invoke-static {p1, p2}, Ljcifs/smb/SmbComNegotiateResponse;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    add-int/lit8 v0, p2, 0x2

    .line 45
    iget v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    sub-int/2addr v0, p2

    return v0

    .line 48
    :cond_0
    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v1, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    .line 49
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    const/4 v3, 0x1

    and-int/2addr v1, v3

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->security:I

    .line 50
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    const/4 v4, 0x2

    and-int/2addr v1, v4

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    .line 51
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    const/4 v6, 0x4

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesEnabled:Z

    .line 52
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v1, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    const/16 v7, 0x8

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v0, Ljcifs/smb/SmbTransport$ServerData;->signaturesRequired:Z

    .line 53
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/SmbComNegotiateResponse;->readInt2([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    add-int/2addr v2, v4

    .line 54
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/SmbComNegotiateResponse;->readInt2([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->maxNumberVcs:I

    add-int/2addr v2, v4

    .line 55
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/SmbComNegotiateResponse;->readInt4([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    add-int/2addr v2, v6

    .line 56
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/SmbComNegotiateResponse;->readInt4([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->maxRawSize:I

    add-int/2addr v2, v6

    .line 57
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/SmbComNegotiateResponse;->readInt4([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->sessionKey:I

    add-int/2addr v2, v6

    .line 58
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/SmbComNegotiateResponse;->readInt4([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    add-int/2addr v2, v6

    .line 59
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/SmbComNegotiateResponse;->readTime([BI)J

    move-result-wide v5

    iput-wide v5, v0, Ljcifs/smb/SmbTransport$ServerData;->serverTime:J

    add-int/2addr v2, v7

    .line 60
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-static {p1, v2}, Ljcifs/smb/SmbComNegotiateResponse;->readInt2([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    add-int/2addr v2, v4

    .line 61
    iget-object v0, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    add-int/lit8 v1, v2, 0x1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    iput p1, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    sub-int/2addr v1, p2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 116
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComNegotiateResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",wordCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->wordCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dialectIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",securityMode=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->securityMode:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",security="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->security:I

    if-nez v2, :cond_0

    const-string v2, "share"

    goto :goto_0

    :cond_0
    const-string v2, "user"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",encryptedPasswords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",maxMpxCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxNumberVcs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxNumberVcs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxBufferSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxRawSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->maxRawSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sessionKey=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->sessionKey:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",capabilities=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",serverTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-wide v3, v3, Ljcifs/smb/SmbTransport$ServerData;->serverTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",serverTimeZone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",encryptionKeyLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",byteCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->byteCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",oemDomainName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComNegotiateResponse;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v2, v2, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
