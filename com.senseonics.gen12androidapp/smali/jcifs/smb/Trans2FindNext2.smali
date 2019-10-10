.class Ljcifs/smb/Trans2FindNext2;
.super Ljcifs/smb/SmbComTransaction;
.source "Trans2FindNext2.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private flags:I

.field private informationLevel:I

.field private resumeKey:I

.field private sid:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 30
    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->sid:I

    .line 31
    iput p2, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    .line 32
    iput-object p3, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    const/16 p1, 0x32

    .line 33
    iput-byte p1, p0, Ljcifs/smb/Trans2FindNext2;->command:B

    const/4 p1, 0x2

    .line 34
    iput-byte p1, p0, Ljcifs/smb/Trans2FindNext2;->subCommand:B

    const/16 p1, 0x104

    .line 35
    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->informationLevel:I

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->flags:I

    const/16 p2, 0x8

    .line 37
    iput p2, p0, Ljcifs/smb/Trans2FindNext2;->maxParameterCount:I

    .line 38
    sget p2, Ljcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    iput p2, p0, Ljcifs/smb/Trans2FindNext2;->maxDataCount:I

    .line 39
    iput-byte p1, p0, Ljcifs/smb/Trans2FindNext2;->maxSetupCount:B

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

.method reset(ILjava/lang/String;)V
    .locals 0

    .line 43
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

    .line 44
    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    .line 45
    iput-object p2, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Ljcifs/smb/Trans2FindNext2;->flags2:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 84
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2FindNext2["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->sid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",searchCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Ljcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",informationLevel=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->informationLevel:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",resumeKey=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2FindNext2;->flags:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",filename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

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
    .locals 3

    .line 57
    iget v0, p0, Ljcifs/smb/Trans2FindNext2;->sid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/Trans2FindNext2;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    .line 59
    sget v1, Ljcifs/smb/Trans2FindFirst2;->LIST_COUNT:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/Trans2FindNext2;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 61
    iget v1, p0, Ljcifs/smb/Trans2FindNext2;->informationLevel:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/Trans2FindNext2;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 63
    iget v1, p0, Ljcifs/smb/Trans2FindNext2;->resumeKey:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/Trans2FindNext2;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    .line 65
    iget v1, p0, Ljcifs/smb/Trans2FindNext2;->flags:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/Trans2FindNext2;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 67
    iget-object v1, p0, Ljcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/Trans2FindNext2;->writeString(Ljava/lang/String;[BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 50
    iget-byte v1, p0, Ljcifs/smb/Trans2FindNext2;->subCommand:B

    aput-byte v1, p1, p2

    const/4 p2, 0x0

    .line 51
    aput-byte p2, p1, v0

    const/4 p1, 0x2

    return p1
.end method
