.class Ljcifs/smb/SmbComWriteAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComWriteAndX.java"


# static fields
.field private static final CLOSE_BATCH_LIMIT:I

.field private static final READ_ANDX_BATCH_LIMIT:I


# instance fields
.field private b:[B

.field private dataLength:I

.field private dataOffset:I

.field private fid:I

.field private off:I

.field private offset:J

.field private pad:I

.field private remaining:I

.field writeMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.WriteAndX.ReadAndX"

    const/4 v1, 0x1

    .line 26
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComWriteAndX;->READ_ANDX_BATCH_LIMIT:I

    const-string v0, "jcifs.smb.client.WriteAndX.Close"

    .line 28
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComWriteAndX;->CLOSE_BATCH_LIMIT:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const/16 v0, 0x2f

    .line 45
    iput-byte v0, p0, Ljcifs/smb/SmbComWriteAndX;->command:B

    return-void
.end method

.method constructor <init>(IJI[BIILjcifs/smb/ServerMessageBlock;)V
    .locals 0

    .line 49
    invoke-direct {p0, p8}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 50
    iput p1, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    .line 51
    iput-wide p2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    .line 52
    iput p4, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    .line 53
    iput-object p5, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    .line 54
    iput p6, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    .line 55
    iput p7, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    const/16 p1, 0x2f

    .line 56
    iput-byte p1, p0, Ljcifs/smb/SmbComWriteAndX;->command:B

    return-void
.end method


# virtual methods
.method getBatchLimit(B)I
    .locals 1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_0

    .line 73
    sget p1, Ljcifs/smb/SmbComWriteAndX;->READ_ANDX_BATCH_LIMIT:I

    return p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 76
    sget p1, Ljcifs/smb/SmbComWriteAndX;->CLOSE_BATCH_LIMIT:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method readBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method setParam(IJI[BII)V
    .locals 0

    .line 61
    iput p1, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    .line 62
    iput-wide p2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    .line 63
    iput p4, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    .line 64
    iput-object p5, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    .line 65
    iput p6, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    .line 66
    iput p7, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Ljcifs/smb/SmbComWriteAndX;->digest:Ljcifs/smb/SigningDigest;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 129
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComWriteAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",writeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .locals 4

    move v0, p2

    .line 114
    :goto_0
    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, -0x12

    .line 115
    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget p1, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 6

    .line 83
    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->headerStart:I

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, 0x1a

    iput v0, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    .line 85
    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    iget v1, p0, Ljcifs/smb/SmbComWriteAndX;->headerStart:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    rem-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    .line 86
    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    rsub-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    .line 87
    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    add-int/2addr v0, v3

    iput v0, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    .line 89
    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    int-to-long v3, v0

    invoke-static {v3, v4, p1, p2}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    .line 91
    iget-wide v3, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/SmbComWriteAndX;->writeInt4(J[BI)V

    add-int/2addr v0, v1

    move v3, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    add-int/lit8 v4, v3, 0x1

    const/4 v5, -0x1

    .line 94
    aput-byte v5, p1, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_1

    .line 96
    :cond_1
    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    int-to-long v4, v0

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    add-int/lit8 v3, v3, 0x2

    .line 98
    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    int-to-long v4, v0

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v3, 0x1

    .line 100
    aput-byte v2, p1, v3

    add-int/lit8 v3, v0, 0x1

    .line 101
    aput-byte v2, p1, v0

    .line 102
    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    int-to-long v4, v0

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    add-int/lit8 v3, v3, 0x2

    .line 104
    iget v0, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    int-to-long v4, v0

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    add-int/lit8 v3, v3, 0x2

    .line 106
    iget-wide v4, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    const/16 v0, 0x20

    shr-long/2addr v4, v0

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/SmbComWriteAndX;->writeInt4(J[BI)V

    add-int/2addr v3, v1

    sub-int/2addr v3, p2

    return v3
.end method
