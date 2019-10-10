.class Ljcifs/smb/NetServerEnum2;
.super Ljcifs/smb/SmbComTransaction;
.source "NetServerEnum2.java"


# static fields
.field static final DESCR:[Ljava/lang/String;

.field static final SV_TYPE_ALL:I = -0x1

.field static final SV_TYPE_DOMAIN_ENUM:I = -0x80000000


# instance fields
.field domain:Ljava/lang/String;

.field lastName:Ljava/lang/String;

.field serverTypes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WrLehDO\u0000B16BBDz\u0000"

    const-string v1, "WrLehDz\u0000B16BBDz\u0000"

    .line 29
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NetServerEnum2;->DESCR:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Ljcifs/smb/NetServerEnum2;->domain:Ljava/lang/String;

    .line 39
    iput p2, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    const/16 p1, 0x25

    .line 40
    iput-byte p1, p0, Ljcifs/smb/NetServerEnum2;->command:B

    const/16 p1, 0x68

    .line 41
    iput-byte p1, p0, Ljcifs/smb/NetServerEnum2;->subCommand:B

    const-string p1, "\\PIPE\\LANMAN"

    .line 42
    iput-object p1, p0, Ljcifs/smb/NetServerEnum2;->name:Ljava/lang/String;

    const/16 p1, 0x8

    .line 44
    iput p1, p0, Ljcifs/smb/NetServerEnum2;->maxParameterCount:I

    const/16 p1, 0x4000

    .line 45
    iput p1, p0, Ljcifs/smb/NetServerEnum2;->maxDataCount:I

    const/4 p1, 0x0

    .line 46
    iput-byte p1, p0, Ljcifs/smb/NetServerEnum2;->maxSetupCount:B

    .line 47
    iput p1, p0, Ljcifs/smb/NetServerEnum2;->setupCount:I

    const/16 p1, 0x1388

    .line 48
    iput p1, p0, Ljcifs/smb/NetServerEnum2;->timeout:I

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

    .line 52
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

    .line 53
    iput-object p2, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 100
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetServerEnum2["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/NetServerEnum2;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",serverTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v2, "SV_TYPE_ALL"

    goto :goto_0

    :cond_0
    const-string v2, "SV_TYPE_DOMAIN_ENUM"

    :goto_0
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
    .locals 7

    .line 62
    iget-byte v0, p0, Ljcifs/smb/NetServerEnum2;->subCommand:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x68

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 65
    :goto_0
    :try_start_0
    sget-object v3, Ljcifs/smb/NetServerEnum2;->DESCR:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-byte v4, p0, Ljcifs/smb/NetServerEnum2;->subCommand:B

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/NetServerEnum2;->writeInt2(J[BI)V

    add-int/lit8 v4, p2, 0x2

    .line 72
    array-length v5, v3

    invoke-static {v3, v2, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    array-length v3, v3

    add-int/2addr v4, v3

    const-wide/16 v5, 0x1

    .line 74
    invoke-static {v5, v6, p1, v4}, Ljcifs/smb/NetServerEnum2;->writeInt2(J[BI)V

    add-int/lit8 v4, v4, 0x2

    .line 76
    iget v3, p0, Ljcifs/smb/NetServerEnum2;->maxDataCount:I

    int-to-long v5, v3

    invoke-static {v5, v6, p1, v4}, Ljcifs/smb/NetServerEnum2;->writeInt2(J[BI)V

    add-int/lit8 v4, v4, 0x2

    .line 78
    iget v3, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    int-to-long v5, v3

    invoke-static {v5, v6, p1, v4}, Ljcifs/smb/NetServerEnum2;->writeInt4(J[BI)V

    add-int/lit8 v4, v4, 0x4

    .line 80
    iget-object v3, p0, Ljcifs/smb/NetServerEnum2;->domain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1, v4, v2}, Ljcifs/smb/NetServerEnum2;->writeString(Ljava/lang/String;[BIZ)I

    move-result v3

    add-int/2addr v4, v3

    if-ne v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v4, v2}, Ljcifs/smb/NetServerEnum2;->writeString(Ljava/lang/String;[BIZ)I

    move-result p1

    add-int/2addr v4, p1

    :cond_1
    sub-int/2addr v4, p2

    return v4

    :catch_0
    return v2
.end method

.method writeSetupWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
