.class Ljcifs/smb/NetShareEnumResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "NetShareEnumResponse.java"


# instance fields
.field private converter:I

.field private totalAvailableEntries:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 6

    const/4 p3, 0x0

    .line 62
    iput-boolean p3, p0, Ljcifs/smb/NetShareEnumResponse;->useUnicode:Z

    .line 64
    iget v0, p0, Ljcifs/smb/NetShareEnumResponse;->numEntries:I

    new-array v0, v0, [Ljcifs/smb/SmbShareInfo;

    iput-object v0, p0, Ljcifs/smb/NetShareEnumResponse;->results:[Ljcifs/smb/FileEntry;

    move v1, p2

    const/4 v0, 0x0

    .line 65
    :goto_0
    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->numEntries:I

    if-ge v0, v2, :cond_1

    .line 66
    iget-object v2, p0, Ljcifs/smb/NetShareEnumResponse;->results:[Ljcifs/smb/FileEntry;

    new-instance v3, Ljcifs/smb/SmbShareInfo;

    invoke-direct {v3}, Ljcifs/smb/SmbShareInfo;-><init>()V

    aput-object v3, v2, v0

    const/16 v2, 0xd

    .line 67
    invoke-virtual {p0, p1, v1, v2, p3}, Ljcifs/smb/NetShareEnumResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    add-int/lit8 v1, v1, 0xe

    .line 69
    invoke-static {p1, v1}, Ljcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result v2

    iput v2, v3, Ljcifs/smb/SmbShareInfo;->type:I

    add-int/lit8 v1, v1, 0x2

    .line 71
    invoke-static {p1, v1}, Ljcifs/smb/NetShareEnumResponse;->readInt4([BI)I

    move-result v2

    const/4 v4, 0x4

    add-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v2, v5

    .line 73
    iget v5, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    sub-int/2addr v2, v5

    add-int/2addr v2, p2

    const/16 v5, 0x80

    .line 75
    invoke-virtual {p0, p1, v2, v5, p3}, Ljcifs/smb/NetShareEnumResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Ljcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    .line 77
    sget-object v2, Ljcifs/smb/NetShareEnumResponse;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v4, :cond_0

    .line 78
    sget-object v2, Ljcifs/smb/NetShareEnumResponse;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v1, p2

    return v1
.end method

.method readParametersWireFormat([BII)I
    .locals 1

    .line 47
    invoke-static {p1, p2}, Ljcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/NetShareEnumResponse;->status:I

    add-int/lit8 p3, p2, 0x2

    .line 49
    invoke-static {p1, p3}, Ljcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    add-int/lit8 p3, p3, 0x2

    .line 51
    invoke-static {p1, p3}, Ljcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/NetShareEnumResponse;->numEntries:I

    add-int/lit8 p3, p3, 0x2

    .line 53
    invoke-static {p1, p3}, Ljcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/NetShareEnumResponse;->totalAvailableEntries:I

    add-int/lit8 p3, p3, 0x2

    sub-int/2addr p3, p2

    return p3
.end method

.method readSetupWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetShareEnumResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",converter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->converter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",entriesReturned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->numEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",totalAvailableEntries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/NetShareEnumResponse;->totalAvailableEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
