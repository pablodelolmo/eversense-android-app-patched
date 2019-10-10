.class abstract Ljcifs/smb/SmbComNtTransactionResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "SmbComNtTransactionResponse.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    return-void
.end method


# virtual methods
.method readParameterWordsWireFormat([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    .line 30
    aput-byte v1, p1, p2

    add-int/lit8 v2, v0, 0x1

    .line 31
    aput-byte v1, p1, v0

    add-int/lit8 v0, v2, 0x1

    .line 32
    aput-byte v1, p1, v2

    .line 34
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->totalParameterCount:I

    .line 35
    iget v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->bufDataStart:I

    if-nez v1, :cond_0

    .line 36
    iget v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->totalParameterCount:I

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->bufDataStart:I

    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 39
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->totalDataCount:I

    add-int/lit8 v0, v0, 0x4

    .line 41
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->parameterCount:I

    add-int/lit8 v0, v0, 0x4

    .line 43
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->parameterOffset:I

    add-int/lit8 v0, v0, 0x4

    .line 45
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->parameterDisplacement:I

    add-int/lit8 v0, v0, 0x4

    .line 47
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->dataCount:I

    add-int/lit8 v0, v0, 0x4

    .line 49
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->dataOffset:I

    add-int/lit8 v0, v0, 0x4

    .line 51
    invoke-static {p1, v0}, Ljcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->dataDisplacement:I

    add-int/lit8 v0, v0, 0x4

    .line 53
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->setupCount:I

    add-int/lit8 v0, v0, 0x2

    .line 55
    iget p1, p0, Ljcifs/smb/SmbComNtTransactionResponse;->setupCount:I

    if-eqz p1, :cond_1

    .line 56
    sget-object p1, Ljcifs/smb/SmbComNtTransactionResponse;->log:Ljcifs/util/LogStream;

    sget p1, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt p1, v1, :cond_1

    .line 57
    sget-object p1, Ljcifs/smb/SmbComNtTransactionResponse;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupCount is not zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComNtTransactionResponse;->setupCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method
