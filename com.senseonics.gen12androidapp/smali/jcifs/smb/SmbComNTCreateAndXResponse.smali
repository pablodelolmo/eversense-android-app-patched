.class Ljcifs/smb/SmbComNTCreateAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComNTCreateAndXResponse.java"


# static fields
.field static final BATCH_OPLOCK_GRANTED:I = 0x2

.field static final EXCLUSIVE_OPLOCK_GRANTED:I = 0x1

.field static final LEVEL_II_OPLOCK_GRANTED:I = 0x3


# instance fields
.field allocationSize:J

.field changeTime:J

.field createAction:I

.field creationTime:J

.field deviceState:I

.field directory:Z

.field endOfFile:J

.field extFileAttributes:I

.field fid:I

.field fileType:I

.field isExtended:Z

.field lastAccessTime:J

.field lastWriteTime:J

.field oplockLevel:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
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
    .locals 3

    add-int/lit8 v0, p2, 0x1

    .line 57
    aget-byte v1, p1, p2

    iput-byte v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->oplockLevel:B

    .line 58
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    add-int/lit8 v0, v0, 0x2

    .line 60
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->createAction:I

    add-int/lit8 v0, v0, 0x4

    .line 62
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readTime([BI)J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->creationTime:J

    add-int/lit8 v0, v0, 0x8

    .line 64
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readTime([BI)J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastAccessTime:J

    add-int/lit8 v0, v0, 0x8

    .line 66
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readTime([BI)J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastWriteTime:J

    add-int/lit8 v0, v0, 0x8

    .line 68
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readTime([BI)J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->changeTime:J

    add-int/lit8 v0, v0, 0x8

    .line 70
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    add-int/lit8 v0, v0, 0x4

    .line 72
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readInt8([BI)J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->allocationSize:J

    add-int/lit8 v0, v0, 0x8

    .line 74
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readInt8([BI)J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->endOfFile:J

    add-int/lit8 v0, v0, 0x8

    .line 76
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fileType:I

    add-int/lit8 v0, v0, 0x2

    .line 78
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->deviceState:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    .line 80
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->directory:Z

    sub-int/2addr v1, p2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 88
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComNTCreateAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",oplockLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->oplockLevel:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",createAction=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->createAction:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",creationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->creationTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",lastAccessTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastAccessTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastWriteTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",changeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->changeTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",extFileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",allocationSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->allocationSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",endOfFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->endOfFile:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",fileType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fileType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",deviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->deviceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",directory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->directory:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
