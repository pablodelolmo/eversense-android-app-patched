.class Ljcifs/smb/SmbComClose;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComClose.java"


# instance fields
.field private fid:I

.field private lastWriteTime:J


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 29
    iput p1, p0, Ljcifs/smb/SmbComClose;->fid:I

    .line 30
    iput-wide p2, p0, Ljcifs/smb/SmbComClose;->lastWriteTime:J

    const/4 p1, 0x4

    .line 31
    iput-byte p1, p0, Ljcifs/smb/SmbComClose;->command:B

    return-void
.end method


# virtual methods
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

.method public toString()Ljava/lang/String;
    .locals 4

    .line 50
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComClose["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComClose;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljcifs/smb/SmbComClose;->lastWriteTime:J

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
    .locals 2

    .line 35
    iget v0, p0, Ljcifs/smb/SmbComClose;->fid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/SmbComClose;->writeInt2(J[BI)V

    add-int/lit8 p2, p2, 0x2

    .line 37
    iget-wide v0, p0, Ljcifs/smb/SmbComClose;->lastWriteTime:J

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/SmbComClose;->writeUTime(J[BI)V

    const/4 p1, 0x6

    return p1
.end method
