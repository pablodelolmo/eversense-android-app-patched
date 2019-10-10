.class Ljcifs/smb/Trans2GetDfsReferral;
.super Ljcifs/smb/SmbComTransaction;
.source "Trans2GetDfsReferral.java"


# instance fields
.field private maxReferralLevel:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    const/4 v0, 0x3

    .line 23
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxReferralLevel:I

    .line 26
    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferral;->path:Ljava/lang/String;

    const/16 p1, 0x32

    .line 27
    iput-byte p1, p0, Ljcifs/smb/Trans2GetDfsReferral;->command:B

    const/16 p1, 0x10

    .line 28
    iput-byte p1, p0, Ljcifs/smb/Trans2GetDfsReferral;->subCommand:B

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Ljcifs/smb/Trans2GetDfsReferral;->totalDataCount:I

    .line 30
    iput p1, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxParameterCount:I

    const/16 v0, 0x1000

    .line 31
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxDataCount:I

    .line 32
    iput-byte p1, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxSetupCount:B

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

    .line 62
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2GetDfsReferral["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",maxReferralLevel=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxReferralLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",filename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferral;->path:Ljava/lang/String;

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
    .locals 2

    .line 43
    iget v0, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxReferralLevel:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/Trans2GetDfsReferral;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    .line 45
    iget-object v1, p0, Ljcifs/smb/Trans2GetDfsReferral;->path:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/Trans2GetDfsReferral;->writeString(Ljava/lang/String;[BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 36
    iget-byte v1, p0, Ljcifs/smb/Trans2GetDfsReferral;->subCommand:B

    aput-byte v1, p1, p2

    const/4 p2, 0x0

    .line 37
    aput-byte p2, p1, v0

    const/4 p1, 0x2

    return p1
.end method
