.class public Ljcifs/smb/SmbException;
.super Ljava/io/IOException;
.source "SmbException.java"

# interfaces
.implements Ljcifs/smb/NtStatus;
.implements Ljcifs/smb/DosError;
.implements Ljcifs/smb/WinError;


# instance fields
.field private rootCause:Ljava/lang/Throwable;

.field private status:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    .line 134
    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-static {p1}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result p1

    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    .line 136
    iput-object p2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 148
    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByWinerrCode(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    goto :goto_1

    .line 149
    :cond_1
    invoke-static {p1}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result p1

    :goto_1
    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const p1, -0x3fffffff    # -2.0000002f

    .line 140
    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 144
    iput-object p2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    const p1, -0x3fffffff    # -2.0000002f

    .line 145
    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    return-void
.end method

.method static getMessageByCode(I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "NT_STATUS_SUCCESS"

    return-object p0

    :cond_0
    const/high16 v0, -0x40000000    # -2.0f

    and-int v1, p0, v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_3

    .line 54
    sget-object v0, Ljcifs/smb/SmbException;->NT_STATUS_CODES:[I

    array-length v0, v0

    sub-int/2addr v0, v2

    :goto_0
    if-lt v0, v2, :cond_6

    add-int v1, v2, v0

    .line 57
    div-int/lit8 v1, v1, 0x2

    .line 59
    sget-object v3, Ljcifs/smb/SmbException;->NT_STATUS_CODES:[I

    aget v3, v3, v1

    if-le p0, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Ljcifs/smb/SmbException;->NT_STATUS_CODES:[I

    aget v0, v0, v1

    if-ge p0, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_0

    .line 64
    :cond_2
    sget-object p0, Ljcifs/smb/SmbException;->NT_STATUS_MESSAGES:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    .line 69
    :cond_3
    sget-object v0, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    array-length v0, v0

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-lt v0, v2, :cond_6

    add-int v3, v2, v0

    .line 72
    div-int/lit8 v3, v3, 0x2

    .line 74
    sget-object v4, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object v4, v4, v3

    aget v4, v4, v1

    if-le p0, v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_1

    .line 76
    :cond_4
    sget-object v0, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object v0, v0, v3

    aget v0, v0, v1

    if-ge p0, v0, :cond_5

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_1

    .line 79
    :cond_5
    sget-object p0, Ljcifs/smb/SmbException;->DOS_ERROR_MESSAGES:[Ljava/lang/String;

    aget-object p0, p0, v3

    return-object p0

    .line 84
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {p0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getMessageByWinerrCode(I)Ljava/lang/String;
    .locals 4

    .line 110
    sget-object v0, Ljcifs/smb/SmbException;->WINERR_CODES:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-lt v0, v1, :cond_2

    add-int v2, v1, v0

    .line 113
    div-int/lit8 v2, v2, 0x2

    .line 115
    sget-object v3, Ljcifs/smb/SmbException;->WINERR_CODES:[I

    aget v3, v3, v2

    if-le p0, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    .line 117
    :cond_0
    sget-object v0, Ljcifs/smb/SmbException;->WINERR_CODES:[I

    aget v0, v0, v2

    if-ge p0, v0, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    .line 120
    :cond_1
    sget-object p0, Ljcifs/smb/SmbException;->WINERR_MESSAGES:[Ljava/lang/String;

    aget-object p0, p0, v2

    return-object p0

    .line 124
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getStatusByCode(I)I
    .locals 6

    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    return p0

    .line 91
    :cond_0
    sget-object v0, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v0, v3, :cond_3

    add-int v4, v3, v0

    .line 94
    div-int/lit8 v4, v4, 0x2

    .line 96
    sget-object v5, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object v5, v5, v4

    aget v5, v5, v2

    if-le p0, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    goto :goto_0

    .line 98
    :cond_1
    sget-object v0, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object v0, v0, v4

    aget v0, v0, v2

    if-ge p0, v0, :cond_2

    add-int/lit8 v4, v4, -0x1

    move v0, v4

    goto :goto_0

    .line 101
    :cond_2
    sget-object p0, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object p0, p0, v4

    aget p0, p0, v1

    return p0

    :cond_3
    const p0, -0x3fffffff    # -2.0000002f

    return p0
.end method


# virtual methods
.method public getNtStatus()I
    .locals 1

    .line 153
    iget v0, p0, Ljcifs/smb/SmbException;->status:I

    return v0
.end method

.method public getRootCause()Ljava/lang/Throwable;
    .locals 1

    .line 156
    iget-object v0, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 159
    iget-object v0, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 161
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 162
    iget-object v2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
