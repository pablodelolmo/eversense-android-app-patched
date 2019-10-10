.class Ljcifs/smb/NtTransQuerySecurityDescResponse;
.super Ljcifs/smb/SmbComNtTransactionResponse;
.source "NtTransQuerySecurityDescResponse.java"


# instance fields
.field securityDescriptor:Ljcifs/smb/SecurityDescriptor;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljcifs/smb/SmbComNtTransactionResponse;-><init>()V

    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1

    .line 50
    iget v0, p0, Ljcifs/smb/NtTransQuerySecurityDescResponse;->errorCode:I

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 54
    :cond_0
    :try_start_0
    new-instance v0, Ljcifs/smb/SecurityDescriptor;

    invoke-direct {v0}, Ljcifs/smb/SecurityDescriptor;-><init>()V

    iput-object v0, p0, Ljcifs/smb/NtTransQuerySecurityDescResponse;->securityDescriptor:Ljcifs/smb/SecurityDescriptor;

    .line 55
    iget-object v0, p0, Ljcifs/smb/NtTransQuerySecurityDescResponse;->securityDescriptor:Ljcifs/smb/SecurityDescriptor;

    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/SecurityDescriptor;->decode([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p2

    sub-int/2addr p1, p2

    return p1

    :catch_0
    move-exception p1

    .line 57
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method readParametersWireFormat([BII)I
    .locals 0

    .line 44
    invoke-static {p1, p2}, Ljcifs/smb/NtTransQuerySecurityDescResponse;->readInt4([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/NtTransQuerySecurityDescResponse;->length:I

    const/4 p1, 0x4

    return p1
.end method

.method readSetupWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NtTransQuerySecurityResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComNtTransactionResponse;->toString()Ljava/lang/String;

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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method writeSetupWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
