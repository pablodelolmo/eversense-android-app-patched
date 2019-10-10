.class public final Ljcifs/smb/NtlmPasswordAuthentication;
.super Ljava/lang/Object;
.source "NtlmPasswordAuthentication.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# static fields
.field public static final ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

.field static final BLANK:Ljava/lang/String; = ""

.field static final DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

.field static DEFAULT_DOMAIN:Ljava/lang/String;

.field static DEFAULT_PASSWORD:Ljava/lang/String;

.field static DEFAULT_USERNAME:Ljava/lang/String;

.field static final GUEST:Ljcifs/smb/NtlmPasswordAuthentication;

.field private static final LM_COMPATIBILITY:I

.field static final NULL:Ljcifs/smb/NtlmPasswordAuthentication;

.field private static final RANDOM:Ljava/util/Random;

.field private static final S8:[B

.field private static log:Ljcifs/util/LogStream;


# instance fields
.field ansiHash:[B

.field challenge:[B

.field clientChallenge:[B

.field domain:Ljava/lang/String;

.field hashesExternal:Z

.field password:Ljava/lang/String;

.field unicodeHash:[B

.field username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v1, 0x3

    .line 44
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    .line 49
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    const/16 v0, 0x8

    .line 52
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->S8:[B

    .line 77
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 270
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 272
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const-string v1, "?"

    const-string v2, "GUEST"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->GUEST:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 274
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    return-void

    nop

    :array_0
    .array-data 1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    const/4 v1, 0x0

    .line 283
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 284
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    .line 293
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 297
    :try_start_0
    invoke-static {p1}, Ljcifs/smb/NtlmPasswordAuthentication;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    .line 303
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 305
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_0

    .line 307
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_0
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_1

    add-int/lit8 v0, v2, 0x1

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    :cond_2
    :goto_2
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 317
    :cond_3
    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    .line 319
    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    if-nez p1, :cond_4

    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 320
    :cond_4
    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    if-nez p1, :cond_5

    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 321
    :cond_5
    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    if-nez p1, :cond_6

    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    const/4 v1, 0x0

    .line 283
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 284
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    if-eqz p2, :cond_1

    const/16 v1, 0x40

    .line 334
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 p1, v1, 0x1

    .line 336
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 337
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/16 v1, 0x5c

    .line 339
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 341
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    .line 342
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 347
    :cond_1
    :goto_0
    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 348
    iput-object p2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 349
    iput-object p3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 351
    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    if-nez p1, :cond_2

    .line 353
    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    :cond_2
    if-nez p2, :cond_3

    .line 354
    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    :cond_3
    if-nez p3, :cond_4

    .line 355
    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B[B)V
    .locals 1

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 284
    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 369
    iput-object p2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 370
    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 371
    iput-object p3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    .line 372
    iput-object p4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    .line 373
    iput-object p5, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    const/4 p1, 0x1

    .line 374
    iput-boolean p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    return-void

    .line 366
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "External credentials cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static E([B[B[B)V
    .locals 7

    const/4 v0, 0x7

    .line 61
    new-array v1, v0, [B

    const/16 v2, 0x8

    .line 62
    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 64
    :goto_0
    array-length v6, p0

    div-int/2addr v6, v0

    if-ge v5, v6, :cond_0

    mul-int/lit8 v6, v5, 0x7

    .line 65
    invoke-static {p0, v6, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    new-instance v6, Ljcifs/util/DES;

    invoke-direct {v6, v1}, Ljcifs/util/DES;-><init>([B)V

    .line 67
    invoke-virtual {v6, p1, v3}, Ljcifs/util/DES;->encrypt([B[B)V

    mul-int/lit8 v6, v5, 0x8

    .line 68
    invoke-static {v3, v4, p2, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static computeResponse([B[B[BII)[B
    .locals 1

    .line 224
    new-instance v0, Ljcifs/util/HMACT64;

    invoke-direct {v0, p0}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 225
    invoke-virtual {v0, p1}, Ljcifs/util/HMACT64;->update([B)V

    .line 226
    invoke-virtual {v0, p2, p3, p4}, Ljcifs/util/HMACT64;->update([BII)V

    .line 227
    invoke-virtual {v0}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object p0

    .line 228
    array-length p1, p0

    array-length p3, p2

    add-int/2addr p1, p3

    new-array p1, p1, [B

    .line 229
    array-length p3, p0

    const/4 p4, 0x0

    invoke-static {p0, p4, p1, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    array-length p0, p0

    array-length p3, p2

    invoke-static {p2, p4, p1, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 4

    const/16 v0, 0x10

    .line 148
    :try_start_0
    new-array v1, v0, [B

    const/16 v1, 0x18

    .line 149
    new-array v1, v1, [B

    .line 151
    new-instance v2, Ljcifs/util/MD4;

    invoke-direct {v2}, Ljcifs/util/MD4;-><init>()V

    const-string v3, "UTF-16LE"

    .line 152
    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljcifs/util/MD4;->update([B)V

    .line 153
    new-instance p2, Ljcifs/util/HMACT64;

    invoke-virtual {v2}, Ljcifs/util/MD4;->digest()[B

    move-result-object v2

    invoke-direct {p2, v2}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UTF-16LE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljcifs/util/HMACT64;->update([B)V

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-16LE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljcifs/util/HMACT64;->update([B)V

    .line 156
    new-instance p0, Ljcifs/util/HMACT64;

    invoke-virtual {p2}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 157
    invoke-virtual {p0, p3}, Ljcifs/util/HMACT64;->update([B)V

    .line 158
    invoke-virtual {p0, p4}, Ljcifs/util/HMACT64;->update([B)V

    const/4 p1, 0x0

    .line 159
    invoke-virtual {p0, v1, p1, v0}, Ljcifs/util/HMACT64;->digest([BII)I

    const/16 p0, 0x8

    .line 160
    invoke-static {p4, p1, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 163
    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lez p1, :cond_0

    .line 164
    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLMv2Response([B[B[B)[B
    .locals 2

    .line 238
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->computeResponse([B[B[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static getNTLM2Response([B[B[B)[B
    .locals 3

    const/16 v0, 0x8

    .line 172
    new-array v1, v0, [B

    :try_start_0
    const-string v2, "MD5"

    .line 176
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 177
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    const/4 p1, 0x0

    .line 178
    invoke-virtual {v2, p2, p1, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 179
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    invoke-static {p2, p1, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p2, 0x15

    .line 186
    new-array p2, p2, [B

    const/16 v0, 0x10

    .line 187
    invoke-static {p0, p1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x18

    .line 188
    new-array p0, p0, [B

    .line 189
    invoke-static {p2, v1, p0}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    return-object p0

    :catch_0
    move-exception p0

    .line 181
    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lez p1, :cond_0

    .line 182
    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, p1}, Ljava/security/GeneralSecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 183
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "MD5"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getNTLMResponse(Ljava/lang/String;[B)[B
    .locals 4

    const/16 v0, 0x15

    .line 115
    new-array v0, v0, [B

    const/16 v1, 0x18

    .line 116
    new-array v1, v1, [B

    :try_start_0
    const-string v2, "UTF-16LE"

    .line 119
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 121
    sget-object v2, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_0

    .line 122
    sget-object v2, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    const/4 p0, 0x0

    .line 124
    :goto_0
    new-instance v2, Ljcifs/util/MD4;

    invoke-direct {v2}, Ljcifs/util/MD4;-><init>()V

    .line 125
    invoke-virtual {v2, p0}, Ljcifs/util/MD4;->update([B)V

    const/4 p0, 0x0

    const/16 v3, 0x10

    .line 127
    :try_start_1
    invoke-virtual {v2, v0, p0, v3}, Ljcifs/util/MD4;->digest([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 129
    sget-object v2, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_1

    .line 130
    sget-object v2, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 132
    :cond_1
    :goto_1
    invoke-static {v0, p1, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    return-object v1
.end method

.method public static getNTLMv2Response([B[B[BJ[B)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 251
    array-length v1, p5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1c

    add-int/lit8 v3, v2, 0x4

    .line 252
    new-array v3, v3, [B

    const/16 v4, 0x101

    .line 254
    invoke-static {v4, v3, v0}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    const/4 v4, 0x4

    .line 255
    invoke-static {v0, v3, v4}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    const/16 v4, 0x8

    .line 256
    invoke-static {p3, p4, v3, v4}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    const/16 p3, 0x10

    .line 257
    invoke-static {p2, v0, v3, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0x18

    .line 258
    invoke-static {v0, v3, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    if-eqz p5, :cond_1

    const/16 p2, 0x1c

    .line 260
    invoke-static {p5, v0, v3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    :cond_1
    invoke-static {v0, v3, v2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 263
    array-length p2, v3

    invoke-static {p0, p1, v3, v0, p2}, Ljcifs/smb/NtlmPasswordAuthentication;->computeResponse([B[B[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static getPreNTLMResponse(Ljava/lang/String;[B)[B
    .locals 5

    const/16 v0, 0xe

    .line 90
    new-array v1, v0, [B

    const/16 v2, 0x15

    .line 91
    new-array v2, v2, [B

    const/16 v3, 0x18

    .line 92
    new-array v3, v3, [B

    .line 95
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    sget-object v4, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    array-length v4, p0

    if-le v4, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const/4 v4, 0x0

    .line 105
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    sget-object p0, Ljcifs/smb/NtlmPasswordAuthentication;->S8:[B

    invoke-static {v1, p0, v2}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    .line 107
    invoke-static {v2, p1, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    return-object v3

    :catch_0
    move-exception p0

    .line 97
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Try setting jcifs.encoding=US-ASCII"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static initDefaults()V
    .locals 2

    .line 80
    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "jcifs.smb.client.domain"

    const-string v1, "?"

    .line 81
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.username"

    const-string v1, "GUEST"

    .line 82
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.password"

    const-string v1, ""

    .line 83
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    return-void
.end method

.method public static nTOWFv1(Ljava/lang/String;)[B
    .locals 2

    if-nez p0, :cond_0

    .line 196
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Password parameter is required"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 198
    :cond_0
    :try_start_0
    new-instance v0, Ljcifs/util/MD4;

    invoke-direct {v0}, Ljcifs/util/MD4;-><init>()V

    const-string v1, "UTF-16LE"

    .line 199
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljcifs/util/MD4;->update([B)V

    .line 200
    invoke-virtual {v0}, Ljcifs/util/MD4;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static nTOWFv2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 208
    :try_start_0
    new-instance v0, Ljcifs/util/MD4;

    invoke-direct {v0}, Ljcifs/util/MD4;-><init>()V

    const-string v1, "UTF-16LE"

    .line 209
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljcifs/util/MD4;->update([B)V

    .line 210
    new-instance p2, Ljcifs/util/HMACT64;

    invoke-virtual {v0}, Ljcifs/util/MD4;->digest()[B

    move-result-object v0

    invoke-direct {p2, v0}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljcifs/util/HMACT64;->update([B)V

    const-string p1, "UTF-16LE"

    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljcifs/util/HMACT64;->update([B)V

    .line 213
    invoke-virtual {p2}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 215
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 600
    new-array v1, v0, [B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 606
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 607
    new-array v3, v2, [C

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v6, v5, 0x2

    .line 623
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/lit8 v6, v7, 0x1

    .line 624
    new-instance v8, Ljava/lang/String;

    const-string v9, "ASCII"

    invoke-direct {v8, v1, v4, v0, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v3, v7

    add-int/lit8 v5, v5, 0x1

    move v7, v6

    const/4 v6, 0x0

    goto :goto_1

    .line 612
    :pswitch_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x25

    if-ne v8, v9, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v7, 0x1

    .line 616
    aput-char v8, v3, v7

    move v7, v9

    :goto_1
    add-int/2addr v5, v0

    goto :goto_0

    .line 630
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v4, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 562
    instance-of v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 563
    check-cast p1, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 564
    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    iget-object v3, p1, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    iget-object p1, p1, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 573
    :cond_1
    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iget-object p1, p1, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public getAnsiHash([B)[B
    .locals 4

    .line 413
    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_0

    .line 414
    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    return-object p1

    .line 416
    :cond_0
    sget v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v0, :pswitch_data_0

    .line 432
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1

    .line 425
    :pswitch_0
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 426
    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 427
    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 429
    :cond_1
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iget-object v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-static {v0, v1, v2, p1, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object p1

    return-object p1

    .line 421
    :pswitch_1
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1

    .line 419
    :pswitch_2
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 405
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSigningKey([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 466
    sget v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 480
    :pswitch_0
    new-instance p1, Ljcifs/smb/SmbException;

    const-string v0, "NTLMv2 requires extended security (jcifs.smb.client.useExtendedSecurity must be true if jcifs.smb.lmCompatibility >= 3)"

    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    const/16 v0, 0x28

    .line 470
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 471
    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    .line 472
    invoke-virtual {p0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object p1

    const/16 v2, 0x10

    const/16 v3, 0x18

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getUnicodeHash([B)[B
    .locals 1

    .line 439
    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_0

    .line 440
    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    return-object p1

    .line 442
    :cond_0
    sget v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v0, :pswitch_data_0

    .line 460
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1

    :pswitch_0
    const/4 p1, 0x0

    .line 458
    new-array p1, p1, [B

    return-object p1

    .line 446
    :pswitch_1
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getUserSessionKey([B[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 514
    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_0

    return-void

    .line 516
    :cond_0
    :try_start_0
    new-instance v0, Ljcifs/util/MD4;

    invoke-direct {v0}, Ljcifs/util/MD4;-><init>()V

    .line 517
    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/MD4;->update([B)V

    .line 518
    sget v1, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    const/16 v2, 0x10

    packed-switch v1, :pswitch_data_0

    .line 547
    invoke-virtual {v0}, Ljcifs/util/MD4;->digest()[B

    move-result-object p1

    goto :goto_0

    .line 528
    :pswitch_0
    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 529
    new-array v1, v1, [B

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 530
    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    iget-object v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 533
    :cond_1
    new-instance v1, Ljcifs/util/HMACT64;

    invoke-virtual {v0}, Ljcifs/util/MD4;->digest()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 534
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-16LE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljcifs/util/HMACT64;->update([B)V

    .line 536
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-16LE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljcifs/util/HMACT64;->update([B)V

    .line 538
    invoke-virtual {v1}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object v0

    .line 539
    new-instance v1, Ljcifs/util/HMACT64;

    invoke-direct {v1, v0}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 540
    invoke-virtual {v1, p1}, Ljcifs/util/HMACT64;->update([B)V

    .line 541
    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-virtual {v1, p1}, Ljcifs/util/HMACT64;->update([B)V

    .line 542
    new-instance p1, Ljcifs/util/HMACT64;

    invoke-direct {p1, v0}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 543
    invoke-virtual {v1}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljcifs/util/HMACT64;->update([B)V

    .line 544
    invoke-virtual {p1, p2, p3, v2}, Ljcifs/util/HMACT64;->digest([BII)I

    goto :goto_1

    .line 522
    :pswitch_1
    invoke-virtual {v0}, Ljcifs/util/MD4;->digest()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljcifs/util/MD4;->update([B)V

    .line 523
    invoke-virtual {v0, p2, p3, v2}, Ljcifs/util/MD4;->digest([BII)I

    goto :goto_1

    .line 547
    :goto_0
    invoke-virtual {v0, p1}, Ljcifs/util/MD4;->update([B)V

    .line 548
    invoke-virtual {v0, p2, p3, v2}, Ljcifs/util/MD4;->digest([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 552
    new-instance p2, Ljcifs/smb/SmbException;

    const-string p3, ""

    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getUserSessionKey([B)[B
    .locals 2

    .line 493
    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x10

    .line 494
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 496
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 498
    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lez v1, :cond_1

    .line 499
    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 586
    invoke-virtual {p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 593
    invoke-virtual {p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
