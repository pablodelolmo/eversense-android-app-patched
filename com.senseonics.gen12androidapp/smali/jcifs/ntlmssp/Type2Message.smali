.class public Ljcifs/ntlmssp/Type2Message;
.super Ljcifs/ntlmssp/NtlmMessage;
.source "Type2Message.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final DEFAULT_FLAGS:I

.field private static final DEFAULT_TARGET_INFORMATION:[B


# instance fields
.field private challenge:[B

.field private context:[B

.field private target:Ljava/lang/String;

.field private targetInformation:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "jcifs.smb.client.useUnicode"

    const/4 v1, 0x1

    .line 50
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/lit16 v0, v0, 0x200

    sput v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    const-string v0, "jcifs.smb.client.domain"

    const/4 v3, 0x0

    .line 53
    invoke-static {v0, v3}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    new-array v3, v0, [B

    .line 55
    sget-object v4, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 57
    :try_start_0
    sget-object v4, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v5, "UTF-16LE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 60
    :catch_0
    :cond_1
    array-length v4, v3

    .line 61
    new-array v5, v0, [B

    .line 63
    :try_start_1
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_2

    :try_start_2
    const-string v7, "UTF-16LE"

    .line 66
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v5, v6

    .line 70
    :catch_1
    :cond_2
    array-length v6, v5

    if-lez v4, :cond_3

    add-int/lit8 v7, v4, 0x4

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-lez v6, :cond_4

    add-int/lit8 v8, v6, 0x4

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    add-int/2addr v7, v8

    const/4 v8, 0x4

    add-int/2addr v7, v8

    .line 71
    new-array v7, v7, [B

    if-lez v4, :cond_5

    .line 75
    invoke-static {v7, v0, v2}, Ljcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    .line 77
    invoke-static {v7, v2, v4}, Ljcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    .line 79
    invoke-static {v3, v0, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, v8, v4

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-lez v6, :cond_6

    .line 83
    invoke-static {v7, v3, v1}, Ljcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    add-int/2addr v3, v2

    .line 85
    invoke-static {v7, v3, v6}, Ljcifs/ntlmssp/Type2Message;->writeUShort([BII)V

    add-int/2addr v3, v2

    .line 87
    invoke-static {v5, v0, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    :cond_6
    sput-object v7, Ljcifs/ntlmssp/Type2Message;->DEFAULT_TARGET_INFORMATION:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultFlags()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Ljcifs/ntlmssp/Type2Message;-><init>(I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I[BLjava/lang/String;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 131
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type2Message;->setFlags(I)V

    .line 132
    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type2Message;->setChallenge([B)V

    .line 133
    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type2Message;->setTarget(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 134
    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultTargetInformation()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type2Message;->setTargetInformation([B)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type1Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0, v0}, Ljcifs/ntlmssp/Type2Message;-><init>(Ljcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V
    .locals 2

    .line 118
    invoke-static {p1}, Ljcifs/ntlmssp/Type2Message;->getDefaultFlags(Ljcifs/ntlmssp/Type1Message;)I

    move-result v0

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljcifs/ntlmssp/Type1Message;->getFlag(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-direct {p0, v0, p2, p3}, Ljcifs/ntlmssp/Type2Message;-><init>(I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 144
    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type2Message;->parse([B)V

    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .locals 1

    .line 320
    sget-object v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .locals 1

    .line 290
    sget v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultFlags(Ljcifs/ntlmssp/Type1Message;)I
    .locals 1

    if-nez p0, :cond_0

    .line 300
    sget p0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_FLAGS:I

    return p0

    .line 302
    :cond_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type1Message;->getFlags()I

    move-result p0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/lit16 v0, v0, 0x200

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2

    .line 306
    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const p0, 0x10004

    or-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public static getDefaultTargetInformation()[B
    .locals 1

    .line 324
    sget-object v0, Ljcifs/ntlmssp/Type2Message;->DEFAULT_TARGET_INFORMATION:[B

    return-object v0
.end method

.method private parse([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 329
    aget-byte v2, p1, v1

    sget-object v3, Ljcifs/ntlmssp/Type2Message;->NTLMSSP_SIGNATURE:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    .line 330
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not an NTLMSSP message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_1
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type2Message;->readULong([BI)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 334
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not a Type 2 message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/16 v1, 0x14

    .line 336
    invoke-static {p1, v1}, Ljcifs/ntlmssp/Type2Message;->readULong([BI)I

    move-result v1

    .line 337
    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type2Message;->setFlags(I)V

    const/4 v3, 0x0

    const/16 v4, 0xc

    .line 339
    invoke-static {p1, v4}, Ljcifs/ntlmssp/Type2Message;->readSecurityBuffer([BI)[B

    move-result-object v4

    .line 340
    array-length v5, v4

    if-eqz v5, :cond_4

    .line 341
    new-instance v3, Ljava/lang/String;

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const-string v1, "UTF-16LE"

    goto :goto_1

    :cond_3
    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v3, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 345
    :cond_4
    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type2Message;->setTarget(Ljava/lang/String;)V

    const/16 v1, 0x18

    const/16 v3, 0x18

    :goto_2
    const/16 v4, 0x20

    if-ge v3, v4, :cond_6

    .line 347
    aget-byte v5, p1, v3

    if-eqz v5, :cond_5

    .line 348
    new-array v3, v2, [B

    .line 349
    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type2Message;->setChallenge([B)V

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    const/16 v1, 0x10

    .line 354
    invoke-static {p1, v1}, Ljcifs/ntlmssp/Type2Message;->readULong([BI)I

    move-result v1

    if-eq v1, v4, :cond_d

    .line 355
    array-length v3, p1

    if-ne v3, v4, :cond_7

    goto :goto_7

    :cond_7
    const/16 v3, 0x20

    :goto_4
    const/16 v5, 0x28

    if-ge v3, v5, :cond_9

    .line 357
    aget-byte v6, p1, v3

    if-eqz v6, :cond_8

    .line 358
    new-array v3, v2, [B

    .line 359
    invoke-static {p1, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type2Message;->setContext([B)V

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    if-eq v1, v5, :cond_c

    .line 364
    array-length v0, p1

    if-ne v0, v5, :cond_a

    goto :goto_6

    .line 365
    :cond_a
    invoke-static {p1, v5}, Ljcifs/ntlmssp/Type2Message;->readSecurityBuffer([BI)[B

    move-result-object p1

    .line 366
    array-length v0, p1

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type2Message;->setTargetInformation([B)V

    :cond_b
    return-void

    :cond_c
    :goto_6
    return-void

    :cond_d
    :goto_7
    return-void
.end method


# virtual methods
.method public getChallenge()[B
    .locals 1

    .line 153
    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->challenge:[B

    return-object v0
.end method

.method public getContext()[B
    .locals 1

    .line 213
    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->context:[B

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetInformation()[B
    .locals 1

    .line 191
    iget-object v0, p0, Ljcifs/ntlmssp/Type2Message;->targetInformation:[B

    return-object v0
.end method

.method public setChallenge([B)V
    .locals 0

    .line 162
    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->challenge:[B

    return-void
.end method

.method public setContext([B)V
    .locals 0

    .line 223
    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->context:[B

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->target:Ljava/lang/String;

    return-void
.end method

.method public setTargetInformation([B)V
    .locals 0

    .line 202
    iput-object p1, p0, Ljcifs/ntlmssp/Type2Message;->targetInformation:[B

    return-void
.end method

.method public toByteArray()[B
    .locals 12

    .line 228
    :try_start_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v1

    .line 230
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getContext()[B

    move-result-object v2

    .line 231
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v3

    .line 232
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getFlags()I

    move-result v4

    const/4 v5, 0x0

    .line 233
    new-array v6, v5, [B

    and-int/lit8 v7, v4, 0x4

    if-eqz v7, :cond_2

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_0

    const-string v6, "UTF-16LE"

    .line 236
    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljcifs/ntlmssp/Type2Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    and-int/lit8 v4, v4, -0x5

    :cond_2
    :goto_1
    const/16 v0, 0x8

    if-eqz v3, :cond_3

    const/high16 v7, 0x800000

    or-int/2addr v4, v7

    if-nez v2, :cond_3

    .line 246
    new-array v2, v0, [B

    :cond_3
    const/16 v7, 0x28

    const/16 v8, 0x20

    if-eqz v2, :cond_4

    const/16 v9, 0x28

    goto :goto_2

    :cond_4
    const/16 v9, 0x20

    :goto_2
    if-eqz v3, :cond_5

    add-int/lit8 v9, v9, 0x8

    .line 251
    :cond_5
    array-length v10, v6

    add-int/2addr v10, v9

    if-eqz v3, :cond_6

    array-length v11, v3

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    add-int/2addr v10, v11

    new-array v10, v10, [B

    .line 253
    sget-object v11, Ljcifs/ntlmssp/Type2Message;->NTLMSSP_SIGNATURE:[B

    invoke-static {v11, v5, v10, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x2

    .line 254
    invoke-static {v10, v0, v11}, Ljcifs/ntlmssp/Type2Message;->writeULong([BII)V

    const/16 v11, 0xc

    .line 255
    invoke-static {v10, v11, v9, v6}, Ljcifs/ntlmssp/Type2Message;->writeSecurityBuffer([BII[B)V

    const/16 v11, 0x14

    .line 256
    invoke-static {v10, v11, v4}, Ljcifs/ntlmssp/Type2Message;->writeULong([BII)V

    if-eqz v1, :cond_7

    goto :goto_4

    .line 257
    :cond_7
    new-array v1, v0, [B

    :goto_4
    const/16 v4, 0x18

    invoke-static {v1, v5, v10, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v2, :cond_8

    .line 259
    invoke-static {v2, v5, v10, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    if-eqz v3, :cond_9

    .line 261
    array-length v0, v6

    add-int/2addr v9, v0

    invoke-static {v10, v7, v9, v3}, Ljcifs/ntlmssp/Type2Message;->writeSecurityBuffer([BII[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-object v10

    :catch_0
    move-exception v0

    .line 266
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 271
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v1

    .line 273
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getContext()[B

    move-result-object v2

    .line 274
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v3

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type2Message[target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",challenge="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",context="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    const-string v0, "null"

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",targetInformation="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    const-string v0, "null"

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",flags=0x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getFlags()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
