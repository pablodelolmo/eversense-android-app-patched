.class abstract Ljcifs/smb/SmbComTransactionResponse;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComTransactionResponse.java"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final DISCONNECT_TID:I = 0x1

.field private static final ONE_WAY_TRANSACTION:I = 0x2

.field private static final SETUP_OFFSET:I = 0x3d


# instance fields
.field protected bufDataStart:I

.field protected bufParameterStart:I

.field dataCount:I

.field protected dataDisplacement:I

.field private dataDone:Z

.field protected dataOffset:I

.field hasMore:Z

.field isPrimary:Z

.field numEntries:I

.field private pad:I

.field private pad1:I

.field protected parameterCount:I

.field protected parameterDisplacement:I

.field protected parameterOffset:I

.field private parametersDone:Z

.field results:[Ljcifs/smb/FileEntry;

.field protected setupCount:I

.field status:I

.field subCommand:B

.field protected totalDataCount:I

.field protected totalParameterCount:I

.field txn_buf:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->hasMore:Z

    .line 49
    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 68
    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->errorCode:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->hasMore:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 71
    iget-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    :cond_0
    return-object p0
.end method

.method readBytesWireFormat([BI)I
    .locals 4

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->pad1:I

    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->pad:I

    .line 117
    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    if-lez v1, :cond_0

    .line 118
    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->headerStart:I

    sub-int v2, p2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->pad:I

    add-int/2addr p2, v1

    .line 119
    iget-object v1, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->bufParameterStart:I

    iget v3, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    add-int/2addr v2, v3

    iget v3, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    invoke-static {p1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    add-int/2addr p2, v1

    .line 123
    :cond_0
    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    if-lez v1, :cond_1

    .line 124
    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataOffset:I

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->headerStart:I

    sub-int v2, p2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->pad1:I

    add-int/2addr p2, v1

    .line 125
    iget-object v1, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    iget v3, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    add-int/2addr v2, v3

    iget v3, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    invoke-static {p1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget p1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    .line 134
    :cond_1
    iget-boolean p1, p0, Ljcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    const/4 p2, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    add-int/2addr p1, v1

    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    if-ne p1, v1, :cond_2

    .line 136
    iput-boolean p2, p0, Ljcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    .line 139
    :cond_2
    iget-boolean p1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDone:Z

    if-nez p1, :cond_3

    iget p1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    add-int/2addr p1, v1

    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    if-ne p1, v1, :cond_3

    .line 140
    iput-boolean p2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDone:Z

    .line 143
    :cond_3
    iget-boolean p1, p0, Ljcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDone:Z

    if-eqz p1, :cond_4

    .line 144
    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->hasMore:Z

    .line 145
    iget-object p1, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->bufParameterStart:I

    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/SmbComTransactionResponse;->readParametersWireFormat([BII)I

    .line 146
    iget-object p1, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/SmbComTransactionResponse;->readDataWireFormat([BII)I

    .line 149
    :cond_4
    iget p1, p0, Ljcifs/smb/SmbComTransactionResponse;->pad:I

    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    add-int/2addr p1, p2

    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->pad1:I

    add-int/2addr p1, p2

    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    add-int/2addr p1, p2

    return p1
.end method

.method abstract readDataWireFormat([BII)I
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 3

    .line 85
    invoke-static {p1, p2}, Ljcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    .line 86
    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    if-nez v0, :cond_0

    .line 87
    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    :cond_0
    add-int/lit8 v0, p2, 0x2

    .line 90
    invoke-static {p1, v0}, Ljcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    add-int/lit8 v0, v0, 0x4

    .line 92
    invoke-static {p1, v0}, Ljcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    .line 94
    invoke-static {p1, v0}, Ljcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    add-int/2addr v0, v1

    .line 96
    invoke-static {p1, v0}, Ljcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    add-int/2addr v0, v1

    .line 98
    invoke-static {p1, v0}, Ljcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    add-int/2addr v0, v1

    .line 100
    invoke-static {p1, v0}, Ljcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataOffset:I

    add-int/2addr v0, v1

    .line 102
    invoke-static {p1, v0}, Ljcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    add-int/2addr v0, v1

    .line 104
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Ljcifs/smb/SmbComTransactionResponse;->setupCount:I

    add-int/2addr v0, v1

    .line 106
    iget p1, p0, Ljcifs/smb/SmbComTransactionResponse;->setupCount:I

    if-eqz p1, :cond_1

    .line 107
    sget-object p1, Ljcifs/smb/SmbComTransactionResponse;->log:Ljcifs/util/LogStream;

    sget p1, Ljcifs/util/LogStream;->level:I

    if-le p1, v1, :cond_1

    .line 108
    sget-object p1, Ljcifs/smb/SmbComTransactionResponse;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupCount is not zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->setupCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method

.method abstract readParametersWireFormat([BII)I
.end method

.method abstract readSetupWireFormat([BII)I
.end method

.method reset()V
    .locals 2

    .line 62
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->reset()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Ljcifs/smb/SmbComTransactionResponse;->hasMore:Z

    iput-boolean v1, p0, Ljcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    .line 65
    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDone:Z

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 160
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",totalParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",totalDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",parameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",parameterOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",parameterDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",setupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->setupCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->pad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pad1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->pad1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

.method abstract writeDataWireFormat([BI)I
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method abstract writeParametersWireFormat([BI)I
.end method

.method abstract writeSetupWireFormat([BI)I
.end method
