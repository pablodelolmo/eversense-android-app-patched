.class Ljcifs/smb/TransTransactNamedPipe;
.super Ljcifs/smb/SmbComTransaction;
.source "TransTransactNamedPipe.java"


# instance fields
.field private pipeData:[B

.field private pipeDataLen:I

.field private pipeDataOff:I

.field private pipeFid:I


# direct methods
.method constructor <init>(I[BII)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 27
    iput p1, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeFid:I

    .line 28
    iput-object p2, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeData:[B

    .line 29
    iput p3, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataOff:I

    .line 30
    iput p4, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    const/16 p1, 0x25

    .line 31
    iput-byte p1, p0, Ljcifs/smb/TransTransactNamedPipe;->command:B

    const/16 p1, 0x26

    .line 32
    iput-byte p1, p0, Ljcifs/smb/TransTransactNamedPipe;->subCommand:B

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Ljcifs/smb/TransTransactNamedPipe;->maxParameterCount:I

    const p2, 0xffff

    .line 34
    iput p2, p0, Ljcifs/smb/TransTransactNamedPipe;->maxDataCount:I

    .line 35
    iput-byte p1, p0, Ljcifs/smb/TransTransactNamedPipe;->maxSetupCount:B

    const/4 p1, 0x2

    .line 36
    iput p1, p0, Ljcifs/smb/TransTransactNamedPipe;->setupCount:I

    const-string p1, "\\PIPE\\"

    .line 37
    iput-object p1, p0, Ljcifs/smb/TransTransactNamedPipe;->name:Ljava/lang/String;

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

    .line 69
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransTransactNamedPipe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",pipeFid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeFid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeDataWireFormat([BI)I
    .locals 3

    .line 54
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    if-ge v0, v1, :cond_1

    .line 55
    sget-object p1, Ljcifs/smb/TransTransactNamedPipe;->log:Ljcifs/util/LogStream;

    sget p1, Ljcifs/util/LogStream;->level:I

    const/4 p2, 0x3

    if-lt p1, p2, :cond_0

    .line 56
    sget-object p1, Ljcifs/smb/TransTransactNamedPipe;->log:Ljcifs/util/LogStream;

    const-string p2, "TransTransactNamedPipe data too long for buffer"

    invoke-virtual {p1, p2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 59
    :cond_1
    iget-object v0, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeData:[B

    iget v1, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataOff:I

    iget v2, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget p1, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    return p1
.end method

.method writeParametersWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method writeSetupWireFormat([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 41
    iget-byte v1, p0, Ljcifs/smb/TransTransactNamedPipe;->subCommand:B

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    const/4 v1, 0x0

    .line 42
    aput-byte v1, p1, v0

    .line 43
    iget v0, p0, Ljcifs/smb/TransTransactNamedPipe;->pipeFid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/TransTransactNamedPipe;->writeInt2(J[BI)V

    const/4 p1, 0x4

    return p1
.end method
