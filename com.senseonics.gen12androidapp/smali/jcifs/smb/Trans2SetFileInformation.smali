.class Ljcifs/smb/Trans2SetFileInformation;
.super Ljcifs/smb/SmbComTransaction;
.source "Trans2SetFileInformation.java"


# static fields
.field static final SMB_FILE_BASIC_INFO:I = 0x101


# instance fields
.field private attributes:I

.field private createTime:J

.field private fid:I

.field private lastWriteTime:J


# direct methods
.method constructor <init>(IIJJ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 30
    iput p1, p0, Ljcifs/smb/Trans2SetFileInformation;->fid:I

    .line 31
    iput p2, p0, Ljcifs/smb/Trans2SetFileInformation;->attributes:I

    .line 32
    iput-wide p3, p0, Ljcifs/smb/Trans2SetFileInformation;->createTime:J

    .line 33
    iput-wide p5, p0, Ljcifs/smb/Trans2SetFileInformation;->lastWriteTime:J

    const/16 p1, 0x32

    .line 34
    iput-byte p1, p0, Ljcifs/smb/Trans2SetFileInformation;->command:B

    const/16 p1, 0x8

    .line 35
    iput-byte p1, p0, Ljcifs/smb/Trans2SetFileInformation;->subCommand:B

    const/4 p1, 0x6

    .line 36
    iput p1, p0, Ljcifs/smb/Trans2SetFileInformation;->maxParameterCount:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Ljcifs/smb/Trans2SetFileInformation;->maxDataCount:I

    .line 38
    iput-byte p1, p0, Ljcifs/smb/Trans2SetFileInformation;->maxSetupCount:B

    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method readParametersWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method readSetupWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2SetFileInformation["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2SetFileInformation;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeDataWireFormat([BI)I
    .locals 5

    .line 61
    iget-wide v0, p0, Ljcifs/smb/Trans2SetFileInformation;->createTime:J

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/Trans2SetFileInformation;->writeTime(J[BI)V

    add-int/lit8 v0, p2, 0x8

    const-wide/16 v1, 0x0

    .line 62
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/Trans2SetFileInformation;->writeInt8(J[BI)V

    add-int/lit8 v0, v0, 0x8

    .line 63
    iget-wide v3, p0, Ljcifs/smb/Trans2SetFileInformation;->lastWriteTime:J

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/Trans2SetFileInformation;->writeTime(J[BI)V

    add-int/lit8 v0, v0, 0x8

    .line 64
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/Trans2SetFileInformation;->writeInt8(J[BI)V

    add-int/lit8 v0, v0, 0x8

    .line 67
    iget v3, p0, Ljcifs/smb/Trans2SetFileInformation;->attributes:I

    or-int/lit16 v3, v3, 0x80

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 69
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/Trans2SetFileInformation;->writeInt8(J[BI)V

    add-int/lit8 v0, v0, 0x6

    sub-int/2addr v0, p2

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 3

    .line 49
    iget v0, p0, Ljcifs/smb/Trans2SetFileInformation;->fid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    const-wide/16 v1, 0x101

    .line 51
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    const-wide/16 v1, 0x0

    .line 53
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 42
    iget-byte v1, p0, Ljcifs/smb/Trans2SetFileInformation;->subCommand:B

    aput-byte v1, p1, p2

    const/4 p2, 0x0

    .line 43
    aput-byte p2, p1, v0

    const/4 p1, 0x2

    return p1
.end method
