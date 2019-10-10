.class Ljcifs/smb/SmbComQueryInformationResponse;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComQueryInformationResponse.java"

# interfaces
.implements Ljcifs/smb/Info;


# instance fields
.field private fileAttributes:I

.field private fileSize:I

.field private lastWriteTime:J

.field private serverTimeZoneOffset:J


# direct methods
.method constructor <init>(J)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    const-wide/16 v1, 0x0

    .line 27
    iput-wide v1, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    .line 29
    iput v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    .line 32
    iput-wide p1, p0, Ljcifs/smb/SmbComQueryInformationResponse;->serverTimeZoneOffset:J

    const/16 p1, 0x8

    .line 33
    iput-byte p1, p0, Ljcifs/smb/SmbComQueryInformationResponse;->command:B

    return-void
.end method


# virtual methods
.method public getAttributes()I
    .locals 1

    .line 37
    iget v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    return v0
.end method

.method public getCreateTime()J
    .locals 4

    .line 40
    iget-wide v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    iget-wide v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->serverTimeZoneOffset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastWriteTime()J
    .locals 4

    .line 43
    iget-wide v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    iget-wide v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->serverTimeZoneOffset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 46
    iget v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method readBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 2

    .line 55
    iget v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->wordCount:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 58
    :cond_0
    invoke-static {p1, p2}, Ljcifs/smb/SmbComQueryInformationResponse;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    add-int/lit8 p2, p2, 0x2

    .line 60
    invoke-static {p1, p2}, Ljcifs/smb/SmbComQueryInformationResponse;->readUTime([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    add-int/lit8 p2, p2, 0x4

    .line 62
    invoke-static {p1, p2}, Ljcifs/smb/SmbComQueryInformationResponse;->readInt4([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    const/16 p1, 0x14

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 69
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComQueryInformationResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",fileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",fileSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
