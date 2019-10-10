.class abstract Ljcifs/smb/SmbComNtTransaction;
.super Ljcifs/smb/SmbComTransaction;
.source "SmbComNtTransaction.java"


# static fields
.field private static final NTT_PRIMARY_SETUP_OFFSET:I = 0x45

.field private static final NTT_SECONDARY_PARAMETER_OFFSET:I = 0x33

.field static final NT_TRANSACT_QUERY_SECURITY_DESC:I = 0x6


# instance fields
.field function:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    const/16 v0, 0x45

    .line 33
    iput v0, p0, Ljcifs/smb/SmbComNtTransaction;->primarySetupOffset:I

    const/16 v0, 0x33

    .line 34
    iput v0, p0, Ljcifs/smb/SmbComNtTransaction;->secondaryParameterOffset:I

    return-void
.end method


# virtual methods
.method writeParameterWordsWireFormat([BI)I
    .locals 5

    .line 40
    iget-byte v0, p0, Ljcifs/smb/SmbComNtTransaction;->command:B

    const/16 v1, -0x5f

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 41
    iget-byte v3, p0, Ljcifs/smb/SmbComNtTransaction;->maxSetupCount:B

    aput-byte v3, p1, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 43
    aput-byte v2, p1, p2

    :goto_0
    add-int/lit8 v3, v0, 0x1

    .line 45
    aput-byte v2, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 46
    aput-byte v2, p1, v3

    .line 47
    iget v3, p0, Ljcifs/smb/SmbComNtTransaction;->totalParameterCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    .line 49
    iget v3, p0, Ljcifs/smb/SmbComNtTransaction;->totalDataCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    .line 51
    iget-byte v3, p0, Ljcifs/smb/SmbComNtTransaction;->command:B

    if-eq v3, v1, :cond_1

    .line 52
    iget v3, p0, Ljcifs/smb/SmbComNtTransaction;->maxParameterCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    .line 54
    iget v3, p0, Ljcifs/smb/SmbComNtTransaction;->maxDataCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    .line 57
    :cond_1
    iget v3, p0, Ljcifs/smb/SmbComNtTransaction;->parameterCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    .line 59
    iget v3, p0, Ljcifs/smb/SmbComNtTransaction;->parameterCount:I

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget v3, p0, Ljcifs/smb/SmbComNtTransaction;->parameterOffset:I

    :goto_1
    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    .line 61
    iget-byte v3, p0, Ljcifs/smb/SmbComNtTransaction;->command:B

    if-ne v3, v1, :cond_3

    .line 62
    iget v3, p0, Ljcifs/smb/SmbComNtTransaction;->parameterDisplacement:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    .line 65
    :cond_3
    iget v3, p0, Ljcifs/smb/SmbComNtTransaction;->dataCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    .line 67
    iget v3, p0, Ljcifs/smb/SmbComNtTransaction;->dataCount:I

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    iget v3, p0, Ljcifs/smb/SmbComNtTransaction;->dataOffset:I

    :goto_2
    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    .line 69
    iget-byte v3, p0, Ljcifs/smb/SmbComNtTransaction;->command:B

    if-ne v3, v1, :cond_5

    .line 70
    iget v1, p0, Ljcifs/smb/SmbComNtTransaction;->dataDisplacement:I

    int-to-long v3, v1

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    .line 72
    aput-byte v2, p1, v0

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v0, 0x1

    .line 74
    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->setupCount:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 75
    iget v0, p0, Ljcifs/smb/SmbComNtTransaction;->function:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/SmbComNtTransaction;->writeInt2(J[BI)V

    add-int/lit8 v1, v1, 0x2

    .line 77
    invoke-virtual {p0, p1, v1}, Ljcifs/smb/SmbComNtTransaction;->writeSetupWireFormat([BI)I

    move-result p1

    add-int/2addr v1, p1

    :goto_3
    sub-int/2addr v1, p2

    return v1
.end method
