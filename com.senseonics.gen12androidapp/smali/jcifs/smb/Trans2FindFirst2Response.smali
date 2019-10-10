.class Ljcifs/smb/Trans2FindFirst2Response;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "Trans2FindFirst2Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;
    }
.end annotation


# static fields
.field static final SMB_FILE_BOTH_DIRECTORY_INFO:I = 0x104

.field static final SMB_FILE_NAMES_INFO:I = 0x103

.field static final SMB_FIND_FILE_DIRECTORY_INFO:I = 0x101

.field static final SMB_FIND_FILE_FULL_DIRECTORY_INFO:I = 0x102

.field static final SMB_INFO_QUERY_EAS_FROM_LIST:I = 0x3

.field static final SMB_INFO_QUERY_EA_SIZE:I = 0x2

.field static final SMB_INFO_STANDARD:I = 0x1


# instance fields
.field eaErrorOffset:I

.field isEndOfSearch:Z

.field lastName:Ljava/lang/String;

.field lastNameBufferIndex:I

.field lastNameOffset:I

.field resumeKey:I

.field sid:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    const/16 v0, 0x32

    .line 99
    iput-byte v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->command:B

    const/4 v0, 0x1

    .line 100
    iput-byte v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->subCommand:B

    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 4

    .line 168
    iget p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    add-int/2addr p3, p2

    iput p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    .line 170
    iget p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->numEntries:I

    new-array p3, p3, [Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;

    iput-object p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->results:[Ljcifs/smb/FileEntry;

    const/4 p3, 0x0

    .line 171
    :goto_0
    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->numEntries:I

    if-ge p3, v0, :cond_2

    .line 172
    iget-object v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->results:[Ljcifs/smb/FileEntry;

    new-instance v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;

    invoke-direct {v1, p0}, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;-><init>(Ljcifs/smb/Trans2FindFirst2Response;)V

    aput-object v1, v0, p3

    .line 174
    invoke-static {p1, p2}, Ljcifs/smb/Trans2FindFirst2Response;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    add-int/lit8 v0, p2, 0x4

    .line 175
    invoke-static {p1, v0}, Ljcifs/smb/Trans2FindFirst2Response;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileIndex:I

    add-int/lit8 v0, p2, 0x8

    .line 176
    invoke-static {p1, v0}, Ljcifs/smb/Trans2FindFirst2Response;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->creationTime:J

    add-int/lit8 v0, p2, 0x18

    .line 178
    invoke-static {p1, v0}, Ljcifs/smb/Trans2FindFirst2Response;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->lastWriteTime:J

    add-int/lit8 v0, p2, 0x28

    .line 180
    invoke-static {p1, v0}, Ljcifs/smb/Trans2FindFirst2Response;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->endOfFile:J

    add-int/lit8 v0, p2, 0x38

    .line 182
    invoke-static {p1, v0}, Ljcifs/smb/Trans2FindFirst2Response;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->extFileAttributes:I

    add-int/lit8 v0, p2, 0x3c

    .line 183
    invoke-static {p1, v0}, Ljcifs/smb/Trans2FindFirst2Response;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileNameLength:I

    add-int/lit8 v0, p2, 0x5e

    .line 191
    iget v2, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileNameLength:I

    invoke-virtual {p0, p1, v0, v2}, Ljcifs/smb/Trans2FindFirst2Response;->readString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->filename:Ljava/lang/String;

    .line 201
    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    if-lt v0, p2, :cond_1

    iget v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    if-eqz v0, :cond_0

    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    iget v2, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    add-int/2addr v2, p2

    if-ge v0, v2, :cond_1

    .line 203
    :cond_0
    iget-object v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->filename:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    .line 204
    iget v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileIndex:I

    iput v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    .line 207
    :cond_1
    iget v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    add-int/2addr p2, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 216
    :cond_2
    iget p1, p0, Ljcifs/smb/Trans2FindFirst2Response;->dataCount:I

    return p1
.end method

.method readParametersWireFormat([BII)I
    .locals 2

    .line 149
    iget-byte p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->subCommand:B

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 150
    invoke-static {p1, p2}, Ljcifs/smb/Trans2FindFirst2Response;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    add-int/lit8 p3, p2, 0x2

    goto :goto_0

    :cond_0
    move p3, p2

    .line 153
    :goto_0
    invoke-static {p1, p3}, Ljcifs/smb/Trans2FindFirst2Response;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/Trans2FindFirst2Response;->numEntries:I

    add-int/lit8 p3, p3, 0x2

    .line 155
    aget-byte v1, p1, p3

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    add-int/lit8 p3, p3, 0x2

    .line 157
    invoke-static {p1, p3}, Ljcifs/smb/Trans2FindFirst2Response;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->eaErrorOffset:I

    add-int/lit8 p3, p3, 0x2

    .line 159
    invoke-static {p1, p3}, Ljcifs/smb/Trans2FindFirst2Response;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    add-int/lit8 p3, p3, 0x2

    sub-int/2addr p3, p2

    return p3
.end method

.method readSetupWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method readString([BII)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 106
    :try_start_0
    iget-boolean v1, p0, Ljcifs/smb/Trans2FindFirst2Response;->useUnicode:Z

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    add-int v1, p2, p3

    sub-int/2addr v1, v0

    .line 123
    aget-byte v1, p1, v1

    if-nez v1, :cond_1

    add-int/lit8 p3, p3, -0x1

    .line 126
    :cond_1
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    sget-object p2, Ljcifs/smb/Trans2FindFirst2Response;->log:Ljcifs/util/LogStream;

    sget p2, Ljcifs/util/LogStream;->level:I

    if-le p2, v0, :cond_2

    .line 130
    sget-object p2, Ljcifs/smb/Trans2FindFirst2Response;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 220
    iget-byte v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->subCommand:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Trans2FindFirst2Response["

    goto :goto_0

    :cond_0
    const-string v0, "Trans2FindNext2Response["

    .line 225
    :goto_0
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",sid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",searchCount="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->numEntries:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isEndOfSearch="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",eaErrorOffset="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->eaErrorOffset:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",lastNameOffset="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",lastName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
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
