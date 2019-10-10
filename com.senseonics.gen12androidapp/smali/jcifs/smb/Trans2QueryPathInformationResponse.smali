.class Ljcifs/smb/Trans2QueryPathInformationResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "Trans2QueryPathInformationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;,
        Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;
    }
.end annotation


# static fields
.field static final SMB_QUERY_FILE_BASIC_INFO:I = 0x101

.field static final SMB_QUERY_FILE_STANDARD_INFO:I = 0x102


# instance fields
.field info:Ljcifs/smb/Info;

.field private informationLevel:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 92
    iput p1, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->informationLevel:I

    const/4 p1, 0x5

    .line 93
    iput-byte p1, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->subCommand:B

    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 0

    .line 113
    iget p3, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->informationLevel:I

    packed-switch p3, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 117
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readSmbQueryFileStandardInfoWireFormat([BI)I

    move-result p1

    return p1

    .line 115
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readSmbQueryFileBasicInfoWireFormat([BI)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method readParametersWireFormat([BII)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method readSetupWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method readSmbQueryFileBasicInfoWireFormat([BI)I
    .locals 4

    .line 141
    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;-><init>(Ljcifs/smb/Trans2QueryPathInformationResponse;)V

    .line 142
    invoke-static {p1, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readTime([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->createTime:J

    add-int/lit8 v1, p2, 0x8

    .line 144
    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastAccessTime:J

    add-int/lit8 v1, v1, 0x8

    .line 146
    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastWriteTime:J

    add-int/lit8 v1, v1, 0x8

    .line 148
    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->changeTime:J

    add-int/lit8 v1, v1, 0x8

    .line 150
    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readInt2([BI)I

    move-result p1

    iput p1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->attributes:I

    add-int/lit8 v1, v1, 0x2

    .line 152
    iput-object v0, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    sub-int/2addr v1, p2

    return v1
.end method

.method readSmbQueryFileStandardInfoWireFormat([BI)I
    .locals 5

    .line 125
    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;-><init>(Ljcifs/smb/Trans2QueryPathInformationResponse;)V

    .line 126
    invoke-static {p1, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readInt8([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->allocationSize:J

    add-int/lit8 v1, p2, 0x8

    .line 128
    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->endOfFile:J

    add-int/lit8 v1, v1, 0x8

    .line 130
    invoke-static {p1, v1}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readInt4([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->numberOfLinks:I

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v1, 0x1

    .line 132
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->deletePending:Z

    add-int/lit8 v1, v2, 0x1

    .line 133
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    if-lez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->directory:Z

    .line 134
    iput-object v0, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    sub-int/2addr v1, p2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 157
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2QueryPathInformationResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method writeSetupWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
