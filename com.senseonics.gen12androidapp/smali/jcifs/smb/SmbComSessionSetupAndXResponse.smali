.class Ljcifs/smb/SmbComSessionSetupAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComSessionSetupAndXResponse.java"


# instance fields
.field blob:[B

.field isLoggedInAsGuest:Z

.field private nativeLanMan:Ljava/lang/String;

.field private nativeOs:Ljava/lang/String;

.field private primaryDomain:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljcifs/smb/ServerMessageBlock;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const-string p1, ""

    .line 25
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    const-string p1, ""

    .line 26
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    const-string p1, ""

    .line 27
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 8

    .line 56
    iget-boolean v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->extendedSecurity:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    array-length v2, v2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    array-length v0, v0

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    .line 60
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndXResponse;->readString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbComSessionSetupAndXResponse;->stringWireLength(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    iget v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->byteCount:I

    add-int v5, p2, v1

    const/16 v6, 0xff

    iget-boolean v7, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->useUnicode:Z

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbComSessionSetupAndXResponse;->readString([BIIIZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbComSessionSetupAndXResponse;->stringWireLength(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    iget-boolean v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->extendedSecurity:Z

    if-nez v1, :cond_1

    .line 65
    iget v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->byteCount:I

    add-int v5, p2, v1

    const/16 v6, 0xff

    iget-boolean v7, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->useUnicode:Z

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbComSessionSetupAndXResponse;->readString([BIIIZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndXResponse;->stringWireLength(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr v0, p1

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 2

    .line 44
    aget-byte v0, p1, p2

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    add-int/lit8 v0, p2, 0x2

    .line 46
    iget-boolean v1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->extendedSecurity:Z

    if-eqz v1, :cond_1

    .line 47
    invoke-static {p1, v0}, Ljcifs/smb/SmbComSessionSetupAndXResponse;->readInt2([BI)I

    move-result p1

    add-int/lit8 v0, v0, 0x2

    .line 49
    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComSessionSetupAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isLoggedInAsGuest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",nativeOs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",nativeLanMan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",primaryDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
