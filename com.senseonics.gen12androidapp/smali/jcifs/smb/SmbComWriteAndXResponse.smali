.class Ljcifs/smb/SmbComWriteAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComWriteAndXResponse.java"


# instance fields
.field count:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljcifs/smb/AndXServerMessageBlock;-><init>()V

    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 2

    .line 35
    invoke-static {p1, p2}, Ljcifs/smb/SmbComWriteAndXResponse;->readInt2([BI)I

    move-result p1

    int-to-long p1, p1

    const-wide/32 v0, 0xffff

    and-long/2addr p1, v0

    iput-wide p1, p0, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

    const/16 p1, 0x8

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 42
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComWriteAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
