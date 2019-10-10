.class Ljcifs/smb/NetServerEnum2Response;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "NetServerEnum2Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/NetServerEnum2Response$ServerInfo1;
    }
.end annotation


# instance fields
.field private converter:I

.field lastName:Ljava/lang/String;

.field private totalAvailableEntries:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 7

    .line 101
    iget p3, p0, Ljcifs/smb/NetServerEnum2Response;->numEntries:I

    new-array p3, p3, [Ljcifs/smb/NetServerEnum2Response$ServerInfo1;

    iput-object p3, p0, Ljcifs/smb/NetServerEnum2Response;->results:[Ljcifs/smb/FileEntry;

    const/4 p3, 0x0

    const/4 v0, 0x0

    move v2, p2

    move-object v3, p3

    const/4 v1, 0x0

    .line 102
    :goto_0
    iget v4, p0, Ljcifs/smb/NetServerEnum2Response;->numEntries:I

    if-ge v1, v4, :cond_1

    .line 103
    iget-object v3, p0, Ljcifs/smb/NetServerEnum2Response;->results:[Ljcifs/smb/FileEntry;

    new-instance v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;

    invoke-direct {v4, p0}, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;-><init>(Ljcifs/smb/NetServerEnum2Response;)V

    aput-object v4, v3, v1

    const/16 v3, 0x10

    .line 104
    invoke-virtual {p0, p1, v2, v3, v0}, Ljcifs/smb/NetServerEnum2Response;->readString([BIIZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v2, 0x1

    .line 106
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMajor:I

    add-int/lit8 v2, v3, 0x1

    .line 107
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMinor:I

    .line 108
    invoke-static {p1, v2}, Ljcifs/smb/NetServerEnum2Response;->readInt4([BI)I

    move-result v3

    iput v3, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->type:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    .line 110
    invoke-static {p1, v2}, Ljcifs/smb/NetServerEnum2Response;->readInt4([BI)I

    move-result v5

    add-int/2addr v2, v3

    const v6, 0xffff

    and-int/2addr v5, v6

    .line 112
    iget v6, p0, Ljcifs/smb/NetServerEnum2Response;->converter:I

    sub-int/2addr v5, v6

    add-int/2addr v5, p2

    const/16 v6, 0x30

    .line 114
    invoke-virtual {p0, p1, v5, v6, v0}, Ljcifs/smb/NetServerEnum2Response;->readString([BIIZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->commentOrMasterBrowser:Ljava/lang/String;

    .line 116
    sget-object v5, Ljcifs/smb/NetServerEnum2Response;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    if-lt v5, v3, :cond_0

    .line 117
    sget-object v3, Ljcifs/smb/NetServerEnum2Response;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object v3, v4

    goto :goto_0

    .line 119
    :cond_1
    iget p1, p0, Ljcifs/smb/NetServerEnum2Response;->numEntries:I

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p3, v3, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    :goto_1
    iput-object p3, p0, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    sub-int/2addr v2, p2

    return v2
.end method

.method readParametersWireFormat([BII)I
    .locals 1

    .line 86
    invoke-static {p1, p2}, Ljcifs/smb/NetServerEnum2Response;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/NetServerEnum2Response;->status:I

    add-int/lit8 p3, p2, 0x2

    .line 88
    invoke-static {p1, p3}, Ljcifs/smb/NetServerEnum2Response;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/NetServerEnum2Response;->converter:I

    add-int/lit8 p3, p3, 0x2

    .line 90
    invoke-static {p1, p3}, Ljcifs/smb/NetServerEnum2Response;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/NetServerEnum2Response;->numEntries:I

    add-int/lit8 p3, p3, 0x2

    .line 92
    invoke-static {p1, p3}, Ljcifs/smb/NetServerEnum2Response;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/NetServerEnum2Response;->totalAvailableEntries:I

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

    .line 124
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetServerEnum2Response["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/NetServerEnum2Response;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",converter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/NetServerEnum2Response;->converter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",entriesReturned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/NetServerEnum2Response;->numEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",totalAvailableEntries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/NetServerEnum2Response;->totalAvailableEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",lastName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

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
