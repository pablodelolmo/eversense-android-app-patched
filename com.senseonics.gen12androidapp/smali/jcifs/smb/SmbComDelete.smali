.class Ljcifs/smb/SmbComDelete;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComDelete.java"


# instance fields
.field private searchAttributes:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 28
    iput-object p1, p0, Ljcifs/smb/SmbComDelete;->path:Ljava/lang/String;

    const/4 p1, 0x6

    .line 29
    iput-byte p1, p0, Ljcifs/smb/SmbComDelete;->command:B

    .line 30
    iput p1, p0, Ljcifs/smb/SmbComDelete;->searchAttributes:I

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

    .line 52
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComDelete["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",searchAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComDelete;->searchAttributes:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComDelete;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x4

    .line 40
    aput-byte v1, p1, p2

    .line 41
    iget-object v1, p0, Ljcifs/smb/SmbComDelete;->path:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/SmbComDelete;->writeString(Ljava/lang/String;[BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 2

    .line 34
    iget v0, p0, Ljcifs/smb/SmbComDelete;->searchAttributes:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/SmbComDelete;->writeInt2(J[BI)V

    const/4 p1, 0x2

    return p1
.end method
