.class Ljcifs/smb/NetShareEnum;
.super Ljcifs/smb/SmbComTransaction;
.source "NetShareEnum.java"


# static fields
.field private static final DESCR:Ljava/lang/String; = "WrLeh\u0000B13BWz\u0000"


# direct methods
.method constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    const/16 v0, 0x25

    .line 28
    iput-byte v0, p0, Ljcifs/smb/NetShareEnum;->command:B

    const/4 v0, 0x0

    .line 29
    iput-byte v0, p0, Ljcifs/smb/NetShareEnum;->subCommand:B

    .line 30
    new-instance v1, Ljava/lang/String;

    const-string v2, "\\PIPE\\LANMAN"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljcifs/smb/NetShareEnum;->name:Ljava/lang/String;

    const/16 v1, 0x8

    .line 31
    iput v1, p0, Ljcifs/smb/NetShareEnum;->maxParameterCount:I

    .line 34
    iput-byte v0, p0, Ljcifs/smb/NetShareEnum;->maxSetupCount:B

    .line 35
    iput v0, p0, Ljcifs/smb/NetShareEnum;->setupCount:I

    const/16 v0, 0x1388

    .line 36
    iput v0, p0, Ljcifs/smb/NetShareEnum;->timeout:I

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

    .line 76
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetShareEnum["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

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
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "WrLeh\u0000B13BWz\u0000"

    const-string v2, "ASCII"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    .line 52
    invoke-static {v2, v3, p1, p2}, Ljcifs/smb/NetShareEnum;->writeInt2(J[BI)V

    add-int/lit8 v2, p2, 0x2

    .line 54
    array-length v3, v1

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    array-length v0, v1

    add-int/2addr v2, v0

    const-wide/16 v0, 0x1

    .line 56
    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/NetShareEnum;->writeInt2(J[BI)V

    add-int/lit8 v2, v2, 0x2

    .line 58
    iget v0, p0, Ljcifs/smb/NetShareEnum;->maxDataCount:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/NetShareEnum;->writeInt2(J[BI)V

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, p2

    return v2

    :catch_0
    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
