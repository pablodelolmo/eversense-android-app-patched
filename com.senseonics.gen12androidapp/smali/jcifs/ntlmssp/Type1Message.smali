.class public Ljcifs/ntlmssp/Type1Message;
.super Ljcifs/ntlmssp/NtlmMessage;
.source "Type1Message.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final DEFAULT_FLAGS:I

.field private static final DEFAULT_WORKSTATION:Ljava/lang/String;


# instance fields
.field private suppliedDomain:Ljava/lang/String;

.field private suppliedWorkstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.useUnicode"

    const/4 v1, 0x1

    .line 46
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/lit16 v0, v1, 0x200

    sput v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_FLAGS:I

    const-string v0, "jcifs.smb.client.domain"

    const/4 v1, 0x0

    .line 49
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 52
    :try_start_0
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, v1

    .line 54
    :goto_1
    sput-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 62
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultFlags()I

    move-result v0

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljcifs/ntlmssp/Type1Message;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 74
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultFlags()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type1Message;->setFlags(I)V

    .line 75
    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type1Message;->setSuppliedDomain(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 77
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object p3

    .line 78
    :cond_0
    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type1Message;->setSuppliedWorkstation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 88
    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type1Message;->parse([B)V

    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .locals 1

    .line 193
    sget-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .locals 1

    .line 184
    sget v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultWorkstation()Ljava/lang/String;
    .locals 1

    .line 202
    sget-object v0, Ljcifs/ntlmssp/Type1Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    return-object v0
.end method

.method private parse([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 207
    aget-byte v1, p1, v0

    sget-object v2, Ljcifs/ntlmssp/Type1Message;->NTLMSSP_SIGNATURE:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 208
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not an NTLMSSP message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_1
    invoke-static {p1, v1}, Ljcifs/ntlmssp/Type1Message;->readULong([BI)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 212
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not a Type 1 message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/16 v0, 0xc

    .line 214
    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type1Message;->readULong([BI)I

    move-result v0

    and-int/lit16 v1, v0, 0x1000

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    .line 217
    invoke-static {p1, v1}, Ljcifs/ntlmssp/Type1Message;->readSecurityBuffer([BI)[B

    move-result-object v1

    .line 218
    new-instance v3, Ljava/lang/String;

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_4

    const/16 v1, 0x18

    .line 222
    invoke-static {p1, v1}, Ljcifs/ntlmssp/Type1Message;->readSecurityBuffer([BI)[B

    move-result-object p1

    .line 223
    new-instance v2, Ljava/lang/String;

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 225
    :cond_4
    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type1Message;->setFlags(I)V

    .line 226
    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type1Message;->setSuppliedDomain(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type1Message;->setSuppliedWorkstation(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSuppliedDomain()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Ljcifs/ntlmssp/Type1Message;->suppliedDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getSuppliedWorkstation()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Ljcifs/ntlmssp/Type1Message;->suppliedWorkstation:Ljava/lang/String;

    return-object v0
.end method

.method public setSuppliedDomain(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Ljcifs/ntlmssp/Type1Message;->suppliedDomain:Ljava/lang/String;

    return-void
.end method

.method public setSuppliedWorkstation(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Ljcifs/ntlmssp/Type1Message;->suppliedWorkstation:Ljava/lang/String;

    return-void
.end method

.method public toByteArray()[B
    .locals 11

    .line 129
    :try_start_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedDomain()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedWorkstation()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getFlags()I

    move-result v2

    const/4 v3, 0x0

    .line 133
    new-array v4, v3, [B

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    or-int/lit16 v2, v2, 0x1000

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v2, v2, -0x1001

    const/4 v0, 0x0

    .line 142
    :goto_0
    new-array v6, v3, [B

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    or-int/lit16 v0, v2, 0x2000

    .line 147
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    move v1, v0

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    and-int/lit16 v1, v2, -0x2001

    :goto_1
    const/16 v2, 0x10

    const/16 v7, 0x20

    if-eqz v0, :cond_2

    .line 154
    array-length v8, v4

    add-int/2addr v8, v7

    array-length v9, v6

    add-int/2addr v8, v9

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    new-array v8, v8, [B

    .line 156
    sget-object v9, Ljcifs/ntlmssp/Type1Message;->NTLMSSP_SIGNATURE:[B

    const/16 v10, 0x8

    invoke-static {v9, v3, v8, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    invoke-static {v8, v10, v5}, Ljcifs/ntlmssp/Type1Message;->writeULong([BII)V

    const/16 v3, 0xc

    .line 158
    invoke-static {v8, v3, v1}, Ljcifs/ntlmssp/Type1Message;->writeULong([BII)V

    if-eqz v0, :cond_3

    .line 160
    invoke-static {v8, v2, v7, v4}, Ljcifs/ntlmssp/Type1Message;->writeSecurityBuffer([BII[B)V

    const/16 v0, 0x18

    .line 161
    array-length v1, v4

    add-int/2addr v1, v7

    invoke-static {v8, v0, v1, v6}, Ljcifs/ntlmssp/Type1Message;->writeSecurityBuffer([BII[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v8

    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 170
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedDomain()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getSuppliedWorkstation()Ljava/lang/String;

    move-result-object v1

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type1Message[suppliedDomain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v0, "null"

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",suppliedWorkstation="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v1, "null"

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",flags=0x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getFlags()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
