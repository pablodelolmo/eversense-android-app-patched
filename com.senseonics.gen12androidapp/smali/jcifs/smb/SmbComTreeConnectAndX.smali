.class Ljcifs/smb/SmbComTreeConnectAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComTreeConnectAndX.java"


# static fields
.field private static final DISABLE_PLAIN_TEXT_PASSWORDS:Z

.field private static batchLimits:[B


# instance fields
.field private disconnectTid:Z

.field private password:[B

.field private passwordLength:I

.field path:Ljava/lang/String;

.field private service:Ljava/lang/String;

.field private session:Ljcifs/smb/SmbSession;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "jcifs.smb.client.disablePlainTextPasswords"

    const/4 v1, 0x1

    .line 27
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbComTreeConnectAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    const/16 v0, 0x9

    .line 52
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const-string v0, "jcifs.smb.client.TreeConnectAndX.CheckDirectory"

    .line 59
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_0
    const-string v0, "jcifs.smb.client.TreeConnectAndX.CreateDirectory"

    .line 62
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_1
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Delete"

    .line 65
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_2
    const-string v0, "jcifs.smb.client.TreeConnectAndX.DeleteDirectory"

    .line 68
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 69
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x4

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_3
    const-string v0, "jcifs.smb.client.TreeConnectAndX.OpenAndX"

    .line 71
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 72
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_4
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Rename"

    .line 74
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 75
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x6

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_5
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Transaction"

    .line 77
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 78
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x7

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_6
    const-string v0, "jcifs.smb.client.TreeConnectAndX.QueryInformation"

    .line 80
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 81
    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/16 v2, 0x8

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_7
    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/ServerMessageBlock;)V
    .locals 0

    .line 87
    invoke-direct {p0, p4}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const/4 p4, 0x0

    .line 31
    iput-boolean p4, p0, Ljcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    .line 88
    iput-object p1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    .line 89
    iput-object p2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    const/16 p1, 0x75

    .line 91
    iput-byte p1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->command:B

    return-void
.end method


# virtual methods
.method getBatchLimit(B)I
    .locals 2

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x25

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return v1

    .line 113
    :pswitch_0
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/16 v0, 0x8

    aget-byte p1, p1, v0

    return p1

    .line 109
    :pswitch_1
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v0, 0x6

    aget-byte p1, p1, v0

    return p1

    .line 103
    :pswitch_2
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v0, 0x3

    aget-byte p1, p1, v0

    return p1

    .line 105
    :pswitch_3
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v0, 0x4

    aget-byte p1, p1, v0

    return p1

    .line 101
    :pswitch_4
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v0, 0x2

    aget-byte p1, p1, v0

    return p1

    .line 107
    :cond_0
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v0, 0x5

    aget-byte p1, p1, v0

    return p1

    .line 111
    :cond_1
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v0, 0x7

    aget-byte p1, p1, v0

    return p1

    .line 99
    :cond_2
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    aget-byte p1, p1, v1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    .locals 5

    .line 175
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComTreeConnectAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",disconnectTid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",passwordLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    iget v3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

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

    .line 148
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->security:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 151
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    iget v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    add-int/2addr v0, p2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    .line 155
    aput-byte v1, p1, p2

    .line 157
    :goto_0
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0}, Ljcifs/smb/SmbComTreeConnectAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v2

    add-int/2addr v0, v2

    .line 159
    :try_start_0
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    const-string v3, "ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v1, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    .line 164
    aput-byte v1, p1, v0

    sub-int/2addr v2, p2

    return v2

    :catch_0
    return v1
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 3

    .line 120
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->security:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 124
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v2, v2, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v2, v2, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {v0, v2}, Ljcifs/smb/NtlmPasswordAuthentication;->getAnsiHash([B)[B

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    .line 127
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    array-length v0, v0

    iput v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    goto :goto_0

    .line 128
    :cond_1
    sget-boolean v0, Ljcifs/smb/SmbComTreeConnectAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    if-eqz v0, :cond_2

    .line 129
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Plain text passwords are disabled"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_2
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    .line 133
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbComTreeConnectAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    goto :goto_0

    .line 137
    :cond_3
    iput v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 140
    iget-boolean v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    .line 141
    aput-byte v1, p1, v0

    .line 142
    iget v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/SmbComTreeConnectAndX;->writeInt2(J[BI)V

    const/4 p1, 0x4

    return p1
.end method
