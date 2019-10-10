.class Ljcifs/smb/NtTransQuerySecurityDesc;
.super Ljcifs/smb/SmbComNtTransaction;
.source "NtTransQuerySecurityDesc.java"


# instance fields
.field fid:I

.field securityInformation:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljcifs/smb/SmbComNtTransaction;-><init>()V

    .line 29
    iput p1, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->fid:I

    .line 30
    iput p2, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->securityInformation:I

    const/16 p1, -0x60

    .line 31
    iput-byte p1, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->command:B

    const/4 p1, 0x6

    .line 32
    iput p1, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->function:I

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->setupCount:I

    .line 34
    iput p1, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->totalDataCount:I

    const/4 p2, 0x4

    .line 35
    iput p2, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->maxParameterCount:I

    const p2, 0x8000

    .line 36
    iput p2, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->maxDataCount:I

    .line 37
    iput-byte p1, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->maxSetupCount:B

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
    .locals 4

    .line 68
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NtTransQuerySecurityDesc["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComNtTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",fid=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->fid:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",securityInformation=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->securityInformation:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method writeParametersWireFormat([BI)I
    .locals 3

    .line 46
    iget v0, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->fid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/NtTransQuerySecurityDesc;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    .line 48
    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 49
    aput-byte v2, p1, v1

    .line 50
    iget v1, p0, Ljcifs/smb/NtTransQuerySecurityDesc;->securityInformation:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/NtTransQuerySecurityDesc;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
