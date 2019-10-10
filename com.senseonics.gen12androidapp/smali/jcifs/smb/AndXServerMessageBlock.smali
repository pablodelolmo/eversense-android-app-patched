.class abstract Ljcifs/smb/AndXServerMessageBlock;
.super Ljcifs/smb/ServerMessageBlock;
.source "AndXServerMessageBlock.java"


# static fields
.field private static final ANDX_COMMAND_OFFSET:I = 0x1

.field private static final ANDX_OFFSET_OFFSET:I = 0x3

.field private static final ANDX_RESERVED_OFFSET:I = 0x2


# instance fields
.field andx:Ljcifs/smb/ServerMessageBlock;

.field private andxCommand:B

.field private andxOffset:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput-byte v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    return-void
.end method

.method constructor <init>(Ljcifs/smb/ServerMessageBlock;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput-byte v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 41
    iget-byte p1, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-byte p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    :cond_0
    return-void
.end method


# virtual methods
.method decode([BI)I
    .locals 1

    .line 83
    iput p2, p0, Ljcifs/smb/AndXServerMessageBlock;->headerStart:I

    .line 85
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/AndXServerMessageBlock;->readHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    .line 86
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->readAndXWireFormat([BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    .line 88
    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->length:I

    .line 89
    iget p1, p0, Ljcifs/smb/AndXServerMessageBlock;->length:I

    return p1
.end method

.method encode([BI)I
    .locals 6

    .line 62
    iput p2, p0, Ljcifs/smb/AndXServerMessageBlock;->headerStart:I

    .line 64
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/AndXServerMessageBlock;->writeHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    .line 65
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->writeAndXWireFormat([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    .line 66
    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->length:I

    .line 68
    iget-object p2, p0, Ljcifs/smb/AndXServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-eqz p2, :cond_0

    .line 69
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->headerStart:I

    iget v3, p0, Ljcifs/smb/AndXServerMessageBlock;->length:I

    iget-object v5, p0, Ljcifs/smb/AndXServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SigningDigest;->sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 72
    :cond_0
    iget p1, p0, Ljcifs/smb/AndXServerMessageBlock;->length:I

    return p1
.end method

.method getBatchLimit(B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method readAndXWireFormat([BI)I
    .locals 5

    add-int/lit8 v0, p2, 0x1

    .line 187
    aget-byte v1, p1, p2

    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    .line 189
    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    .line 195
    aget-byte v1, p1, v0

    iput-byte v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    add-int/lit8 v1, v0, 0x2

    .line 196
    invoke-static {p1, v1}, Ljcifs/smb/AndXServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    .line 198
    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    if-nez v1, :cond_0

    .line 199
    iput-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 207
    :cond_0
    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    if-le v1, v3, :cond_1

    add-int/lit8 v1, v0, 0x4

    .line 208
    invoke-virtual {p0, p1, v1}, Ljcifs/smb/AndXServerMessageBlock;->readParameterWordsWireFormat([BI)I

    .line 216
    iget-byte v1, p0, Ljcifs/smb/AndXServerMessageBlock;->command:B

    const/16 v4, -0x5e

    if-ne v1, v4, :cond_1

    move-object v1, p0

    check-cast v1, Ljcifs/smb/SmbComNTCreateAndXResponse;

    iget-boolean v1, v1, Ljcifs/smb/SmbComNTCreateAndXResponse;->isExtended:Z

    if-eqz v1, :cond_1

    .line 217
    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    .line 220
    :cond_1
    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 223
    :cond_2
    invoke-static {p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->byteCount:I

    add-int/2addr v0, v3

    .line 225
    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->byteCount:I

    if-eqz v1, :cond_3

    .line 227
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->readBytesWireFormat([BI)I

    .line 228
    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->byteCount:I

    add-int/2addr v0, v1

    .line 238
    :cond_3
    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->errorCode:I

    if-nez v1, :cond_9

    iget-byte v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    if-ne v1, v2, :cond_4

    goto/16 :goto_1

    .line 241
    :cond_4
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    if-nez v0, :cond_5

    .line 242
    iput-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 243
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "no andx command supplied with response"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 250
    :cond_5
    iget v0, p0, Ljcifs/smb/AndXServerMessageBlock;->headerStart:I

    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    add-int/2addr v0, v1

    .line 252
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->headerStart:I

    iput v2, v1, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 253
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    iput-byte v2, v1, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 254
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->errorCode:I

    iput v2, v1, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 255
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->flags:B

    iput-byte v2, v1, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 256
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->flags2:I

    iput v2, v1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 257
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->tid:I

    iput v2, v1, Ljcifs/smb/ServerMessageBlock;->tid:I

    .line 258
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->pid:I

    iput v2, v1, Ljcifs/smb/ServerMessageBlock;->pid:I

    .line 259
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->uid:I

    iput v2, v1, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 260
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->mid:I

    iput v2, v1, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 261
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-boolean v2, p0, Ljcifs/smb/AndXServerMessageBlock;->useUnicode:Z

    iput-boolean v2, v1, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 263
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    instance-of v1, v1, Ljcifs/smb/AndXServerMessageBlock;

    if-eqz v1, :cond_6

    .line 264
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    check-cast v1, Ljcifs/smb/AndXServerMessageBlock;

    invoke-virtual {v1, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->readAndXWireFormat([BI)I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v0, 0x1

    .line 272
    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, v2, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 274
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v0, v0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    if-eqz v0, :cond_7

    .line 280
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v0, v0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    if-le v0, v3, :cond_7

    .line 281
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    invoke-virtual {v0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    move-result v0

    add-int/2addr v1, v0

    .line 285
    :cond_7
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    invoke-static {p1, v1}, Ljcifs/smb/AndXServerMessageBlock;->readInt2([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr v1, v3

    .line 288
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v0, v0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-eqz v0, :cond_8

    .line 289
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    invoke-virtual {v0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    .line 290
    iget-object p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget p1, p1, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr v1, p1

    :cond_8
    move v0, v1

    .line 293
    :goto_0
    iget-object p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    const/4 v1, 0x1

    iput-boolean v1, p1, Ljcifs/smb/ServerMessageBlock;->received:Z

    goto :goto_2

    .line 239
    :cond_9
    :goto_1
    iput-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 p1, 0x0

    .line 240
    iput-object p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    :goto_2
    sub-int/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 299
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",andxCommand=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",andxOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeAndXWireFormat([BI)I
    .locals 5

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, v0, 0x2

    .line 94
    invoke-virtual {p0, p1, v1}, Ljcifs/smb/AndXServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    .line 96
    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    .line 97
    iget v1, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p2

    .line 98
    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    .line 99
    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->wordCount:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 v2, v1, 0x2

    .line 101
    invoke-virtual {p0, p1, v2}, Ljcifs/smb/AndXServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/AndXServerMessageBlock;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    .line 102
    iget v3, p0, Ljcifs/smb/AndXServerMessageBlock;->byteCount:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    .line 103
    iget v3, p0, Ljcifs/smb/AndXServerMessageBlock;->byteCount:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 104
    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->byteCount:I

    add-int/2addr v1, v2

    .line 116
    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget-boolean v2, Ljcifs/smb/AndXServerMessageBlock;->USE_BATCHING:Z

    if-eqz v2, :cond_2

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->batchLevel:I

    iget-object v4, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-byte v4, v4, Ljcifs/smb/ServerMessageBlock;->command:B

    invoke-virtual {p0, v4}, Ljcifs/smb/AndXServerMessageBlock;->getBatchLimit(B)I

    move-result v4

    if-lt v2, v4, :cond_0

    goto/16 :goto_1

    .line 139
    :cond_0
    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v4, p0, Ljcifs/smb/AndXServerMessageBlock;->batchLevel:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    add-int/lit8 v2, p2, 0x1

    .line 142
    iget-byte v4, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    aput-byte v4, p1, v2

    add-int/lit8 v2, p2, 0x2

    .line 143
    aput-byte v3, p1, v2

    .line 144
    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->headerStart:I

    sub-int v2, v1, v2

    iput v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    .line 145
    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->writeInt2(J[BI)V

    .line 147
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-boolean v2, p0, Ljcifs/smb/AndXServerMessageBlock;->useUnicode:Z

    iput-boolean v2, v0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 148
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    instance-of v0, v0, Ljcifs/smb/AndXServerMessageBlock;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->uid:I

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 166
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    check-cast v0, Ljcifs/smb/AndXServerMessageBlock;

    invoke-virtual {v0, p1, v1}, Ljcifs/smb/AndXServerMessageBlock;->writeAndXWireFormat([BI)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    invoke-virtual {v2, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 172
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v0, v0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    .line 173
    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v3, v2, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 174
    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, v2, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 176
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, p1, v3}, Ljcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/lit8 v1, v0, 0x1

    .line 177
    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, v2, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 178
    iget-object v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, v2, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 179
    iget-object p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget p1, p1, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int v1, v0, p1

    :goto_0
    sub-int/2addr v1, p2

    return v1

    :cond_2
    :goto_1
    const/4 v2, -0x1

    .line 118
    iput-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v4, 0x0

    .line 119
    iput-object v4, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    add-int/lit8 v4, p2, 0x1

    .line 121
    aput-byte v2, p1, v4

    add-int/lit8 v2, p2, 0x2

    .line 122
    aput-byte v3, p1, v2

    const/16 v2, -0x22

    .line 125
    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 126
    aput-byte v2, p1, v0

    sub-int/2addr v1, p2

    return v1
.end method
