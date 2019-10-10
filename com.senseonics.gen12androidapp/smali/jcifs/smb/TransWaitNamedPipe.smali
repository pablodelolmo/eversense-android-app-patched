.class Ljcifs/smb/TransWaitNamedPipe;
.super Ljcifs/smb/SmbComTransaction;
.source "TransWaitNamedPipe.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 24
    iput-object p1, p0, Ljcifs/smb/TransWaitNamedPipe;->name:Ljava/lang/String;

    const/16 p1, 0x25

    .line 25
    iput-byte p1, p0, Ljcifs/smb/TransWaitNamedPipe;->command:B

    const/16 p1, 0x53

    .line 26
    iput-byte p1, p0, Ljcifs/smb/TransWaitNamedPipe;->subCommand:B

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Ljcifs/smb/TransWaitNamedPipe;->timeout:I

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Ljcifs/smb/TransWaitNamedPipe;->maxParameterCount:I

    .line 29
    iput p1, p0, Ljcifs/smb/TransWaitNamedPipe;->maxDataCount:I

    .line 30
    iput-byte p1, p0, Ljcifs/smb/TransWaitNamedPipe;->maxSetupCount:B

    const/4 p1, 0x2

    .line 31
    iput p1, p0, Ljcifs/smb/TransWaitNamedPipe;->setupCount:I

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

    .line 57
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransWaitNamedPipe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",pipeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/TransWaitNamedPipe;->name:Ljava/lang/String;

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
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 35
    iget-byte v1, p0, Ljcifs/smb/TransWaitNamedPipe;->subCommand:B

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    const/4 v1, 0x0

    .line 36
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    .line 37
    aput-byte v1, p1, p2

    .line 38
    aput-byte v1, p1, v0

    const/4 p1, 0x4

    return p1
.end method
