.class Ljcifs/smb/SmbComReadAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComReadAndX.java"


# static fields
.field private static final BATCH_LIMIT:I


# instance fields
.field private fid:I

.field maxCount:I

.field minCount:I

.field private offset:J

.field private openTimeout:I

.field remaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.ReadAndX.Close"

    const/4 v1, 0x1

    .line 25
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComReadAndX;->BATCH_LIMIT:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const/16 v0, 0x2e

    .line 34
    iput-byte v0, p0, Ljcifs/smb/SmbComReadAndX;->command:B

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Ljcifs/smb/SmbComReadAndX;->openTimeout:I

    return-void
.end method

.method constructor <init>(IJILjcifs/smb/ServerMessageBlock;)V
    .locals 0

    .line 38
    invoke-direct {p0, p5}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 39
    iput p1, p0, Ljcifs/smb/SmbComReadAndX;->fid:I

    .line 40
    iput-wide p2, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    .line 41
    iput p4, p0, Ljcifs/smb/SmbComReadAndX;->minCount:I

    iput p4, p0, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    const/16 p1, 0x2e

    .line 42
    iput-byte p1, p0, Ljcifs/smb/SmbComReadAndX;->command:B

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Ljcifs/smb/SmbComReadAndX;->openTimeout:I

    return-void
.end method


# virtual methods
.method getBatchLimit(B)I
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 52
    sget p1, Ljcifs/smb/SmbComReadAndX;->BATCH_LIMIT:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
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

.method setParam(IJI)V
    .locals 0

    .line 47
    iput p1, p0, Ljcifs/smb/SmbComReadAndX;->fid:I

    .line 48
    iput-wide p2, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    .line 49
    iput p4, p0, Ljcifs/smb/SmbComReadAndX;->minCount:I

    iput p4, p0, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 84
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComReadAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComReadAndX;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",maxCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",minCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComReadAndX;->minCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",openTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComReadAndX;->openTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComReadAndX;->remaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    .locals 4

    .line 57
    iget v0, p0, Ljcifs/smb/SmbComReadAndX;->fid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/SmbComReadAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    .line 59
    iget-wide v1, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComReadAndX;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    .line 61
    iget v1, p0, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComReadAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 63
    iget v1, p0, Ljcifs/smb/SmbComReadAndX;->minCount:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComReadAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 65
    iget v1, p0, Ljcifs/smb/SmbComReadAndX;->openTimeout:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComReadAndX;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    .line 67
    iget v1, p0, Ljcifs/smb/SmbComReadAndX;->remaining:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComReadAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 69
    iget-wide v1, p0, Ljcifs/smb/SmbComReadAndX;->offset:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComReadAndX;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method
