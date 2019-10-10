.class Ljcifs/smb/SmbComSessionSetupAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComSessionSetupAndX.java"


# static fields
.field private static final BATCH_LIMIT:I

.field private static final DISABLE_PLAIN_TEXT_PASSWORDS:Z


# instance fields
.field private accountName:Ljava/lang/String;

.field private blob:[B

.field private capabilities:I

.field cred:Ljava/lang/Object;

.field private lmHash:[B

.field private ntHash:[B

.field private primaryDomain:Ljava/lang/String;

.field session:Ljcifs/smb/SmbSession;

.field private sessionKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.SessionSetupAndX.TreeConnectAndX"

    const/4 v1, 0x1

    .line 26
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComSessionSetupAndX;->BATCH_LIMIT:I

    const-string v0, "jcifs.smb.client.disablePlainTextPasswords"

    .line 28
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbComSessionSetupAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    return-void
.end method

.method constructor <init>(Ljcifs/smb/SmbSession;Ljcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p2}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->blob:[B

    const/16 p2, 0x73

    .line 40
    iput-byte p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->command:B

    .line 41
    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    .line 42
    iput-object p3, p0, Ljcifs/smb/SmbComSessionSetupAndX;->cred:Ljava/lang/Object;

    .line 44
    iget-object p2, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget p2, p2, Ljcifs/smb/SmbTransport;->sessionKey:I

    iput p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->sessionKey:I

    .line 45
    iget-object p2, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget p2, p2, Ljcifs/smb/SmbTransport;->capabilities:I

    iput p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->capabilities:I

    .line 47
    iget-object p2, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object p2, p2, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget p2, p2, Ljcifs/smb/SmbTransport$ServerData;->security:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_8

    .line 48
    instance-of p2, p3, Ljcifs/smb/NtlmPasswordAuthentication;

    if-eqz p2, :cond_6

    .line 49
    check-cast p3, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 51
    sget-object p2, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    if-ne p3, p2, :cond_0

    .line 52
    new-array p1, v1, [B

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 53
    new-array p1, v1, [B

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 54
    iget p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->capabilities:I

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    iput p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->capabilities:I

    goto :goto_0

    .line 55
    :cond_0
    iget-object p2, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object p2, p2, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean p2, p2, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    if-eqz p2, :cond_1

    .line 56
    iget-object p2, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object p2, p2, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p2, p2, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p3, p2}, Ljcifs/smb/NtlmPasswordAuthentication;->getAnsiHash([B)[B

    move-result-object p2

    iput-object p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 57
    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p1, p1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p3, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 59
    iget-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    array-length p1, p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    array-length p1, p1

    if-nez p1, :cond_4

    .line 60
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Null setup prohibited."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    sget-boolean p1, Ljcifs/smb/SmbComSessionSetupAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    if-eqz p1, :cond_2

    .line 63
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Plain text passwords are disabled"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2
    iget-boolean p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->useUnicode:Z

    if-eqz p1, :cond_3

    .line 66
    invoke-virtual {p3}, Ljcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object p1

    .line 67
    new-array p2, v1, [B

    iput-object p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [B

    iput-object p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 69
    iget-object p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    invoke-virtual {p0, p1, p2, v1}, Ljcifs/smb/SmbComSessionSetupAndX;->writeString(Ljava/lang/String;[BI)I

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p3}, Ljcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [B

    iput-object p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 74
    new-array p2, v1, [B

    iput-object p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 75
    iget-object p2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    invoke-virtual {p0, p1, p2, v1}, Ljcifs/smb/SmbComSessionSetupAndX;->writeString(Ljava/lang/String;[BI)I

    .line 77
    :cond_4
    :goto_0
    iget-object p1, p3, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    .line 78
    iget-boolean p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->useUnicode:Z

    if-eqz p1, :cond_5

    .line 79
    iget-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    .line 80
    :cond_5
    iget-object p1, p3, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->primaryDomain:Ljava/lang/String;

    goto :goto_1

    .line 81
    :cond_6
    instance-of p1, p3, [B

    if-eqz p1, :cond_7

    .line 82
    check-cast p3, [B

    iput-object p3, p0, Ljcifs/smb/SmbComSessionSetupAndX;->blob:[B

    goto :goto_1

    .line 84
    :cond_7
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "Unsupported credential type"

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_8
    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget p1, p1, Ljcifs/smb/SmbTransport$ServerData;->security:I

    if-nez p1, :cond_b

    .line 87
    instance-of p1, p3, Ljcifs/smb/NtlmPasswordAuthentication;

    if-eqz p1, :cond_a

    .line 88
    check-cast p3, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 89
    new-array p1, v1, [B

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    .line 90
    new-array p1, v1, [B

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    .line 91
    iget-object p1, p3, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    .line 92
    iget-boolean p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->useUnicode:Z

    if-eqz p1, :cond_9

    .line 93
    iget-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    .line 94
    :cond_9
    iget-object p1, p3, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->primaryDomain:Ljava/lang/String;

    :goto_1
    return-void

    .line 96
    :cond_a
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "Unsupported credential type"

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_b
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "Unsupported"

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getBatchLimit(B)I
    .locals 1

    const/16 v0, 0x75

    if-ne p1, v0, :cond_0

    .line 104
    sget p1, Ljcifs/smb/SmbComSessionSetupAndX;->BATCH_LIMIT:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method readBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 162
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComSessionSetupAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",snd_buf_size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v2, v2, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxMpxCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v2, v2, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",VC_NUMBER="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sessionKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->sessionKey:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",lmHash.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    array-length v2, v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",ntHash.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    array-length v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->capabilities:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",accountName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",primaryDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->primaryDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",NATIVE_OS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v2, Ljcifs/smb/SmbTransport;->NATIVE_OS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",NATIVE_LANMAN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v2, Ljcifs/smb/SmbTransport;->NATIVE_LANMAN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .locals 4

    .line 138
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndX;->blob:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndX;->blob:[B

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->blob:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndX;->blob:[B

    array-length v0, v0

    add-int/2addr v0, p2

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    array-length v0, v0

    add-int/2addr v0, p2

    .line 144
    iget-object v2, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    iget-object v3, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    array-length v3, v3

    invoke-static {v2, v1, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 147
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->accountName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->primaryDomain:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :goto_0
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v1, Ljcifs/smb/SmbTransport;->NATIVE_OS:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v1, Ljcifs/smb/SmbTransport;->NATIVE_LANMAN:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndX;->writeString(Ljava/lang/String;[BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 3

    .line 109
    iget-object v0, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v0, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/SmbComSessionSetupAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    .line 111
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v1, v1, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 113
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 115
    iget v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->sessionKey:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndX;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    .line 117
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->blob:[B

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->blob:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 121
    :cond_0
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->lmHash:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    .line 123
    iget-object v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->ntHash:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndX;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    .line 126
    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 127
    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    .line 128
    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 129
    aput-byte v2, p1, v1

    .line 130
    iget v1, p0, Ljcifs/smb/SmbComSessionSetupAndX;->capabilities:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/SmbComSessionSetupAndX;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method
