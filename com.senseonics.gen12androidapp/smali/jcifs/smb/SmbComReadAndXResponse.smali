.class Ljcifs/smb/SmbComReadAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComReadAndXResponse.java"


# instance fields
.field b:[B

.field dataCompactionMode:I

.field dataLength:I

.field dataOffset:I

.field off:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljcifs/smb/AndXServerMessageBlock;-><init>()V

    return-void
.end method

.method constructor <init>([BI)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljcifs/smb/AndXServerMessageBlock;-><init>()V

    .line 29
    iput-object p1, p0, Ljcifs/smb/SmbComReadAndXResponse;->b:[B

    .line 30
    iput p2, p0, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x2

    .line 47
    invoke-static {p1, v0}, Ljcifs/smb/SmbComReadAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComReadAndXResponse;->dataCompactionMode:I

    add-int/lit8 v0, v0, 0x4

    .line 49
    invoke-static {p1, v0}, Ljcifs/smb/SmbComReadAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    add-int/lit8 v0, v0, 0x2

    .line 51
    invoke-static {p1, v0}, Ljcifs/smb/SmbComReadAndXResponse;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/SmbComReadAndXResponse;->dataOffset:I

    add-int/lit8 v0, v0, 0xc

    sub-int/2addr v0, p2

    return v0
.end method

.method setParam([BI)V
    .locals 0

    .line 34
    iput-object p1, p0, Ljcifs/smb/SmbComReadAndXResponse;->b:[B

    .line 35
    iput p2, p0, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComReadAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",dataCompactionMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComReadAndXResponse;->dataCompactionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComReadAndXResponse;->dataOffset:I

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
