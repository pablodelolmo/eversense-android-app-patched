.class Ljcifs/smb/TransPeekNamedPipe;
.super Ljcifs/smb/SmbComTransaction;
.source "TransPeekNamedPipe.java"


# instance fields
.field private fid:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 26
    iput-object p1, p0, Ljcifs/smb/TransPeekNamedPipe;->name:Ljava/lang/String;

    .line 27
    iput p2, p0, Ljcifs/smb/TransPeekNamedPipe;->fid:I

    const/16 p1, 0x25

    .line 28
    iput-byte p1, p0, Ljcifs/smb/TransPeekNamedPipe;->command:B

    const/16 p1, 0x23

    .line 29
    iput-byte p1, p0, Ljcifs/smb/TransPeekNamedPipe;->subCommand:B

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Ljcifs/smb/TransPeekNamedPipe;->timeout:I

    const/4 p1, 0x6

    .line 31
    iput p1, p0, Ljcifs/smb/TransPeekNamedPipe;->maxParameterCount:I

    const/4 p1, 0x1

    .line 32
    iput p1, p0, Ljcifs/smb/TransPeekNamedPipe;->maxDataCount:I

    const/4 p1, 0x0

    .line 33
    iput-byte p1, p0, Ljcifs/smb/TransPeekNamedPipe;->maxSetupCount:B

    const/4 p1, 0x2

    .line 34
    iput p1, p0, Ljcifs/smb/TransPeekNamedPipe;->setupCount:I

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

    .line 60
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransPeekNamedPipe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",pipeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/TransPeekNamedPipe;->name:Ljava/lang/String;

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

    .line 38
    iget-byte v1, p0, Ljcifs/smb/TransPeekNamedPipe;->subCommand:B

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    const/4 v1, 0x0

    .line 39
    aput-byte v1, p1, v0

    .line 41
    iget v0, p0, Ljcifs/smb/TransPeekNamedPipe;->fid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/TransPeekNamedPipe;->writeInt2(J[BI)V

    const/4 p1, 0x4

    return p1
.end method
