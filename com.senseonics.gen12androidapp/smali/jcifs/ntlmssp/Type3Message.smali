.class public Ljcifs/ntlmssp/Type3Message;
.super Ljcifs/ntlmssp/NtlmMessage;
.source "Type3Message.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final DEFAULT_FLAGS:I

.field private static final DEFAULT_PASSWORD:Ljava/lang/String;

.field private static final DEFAULT_USER:Ljava/lang/String;

.field private static final DEFAULT_WORKSTATION:Ljava/lang/String;

.field private static final LM_COMPATIBILITY:I

.field static final MILLISECONDS_BETWEEN_1970_AND_1601:J = 0xa9730b66800L

.field private static final RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private domain:Ljava/lang/String;

.field private lmResponse:[B

.field private masterKey:[B

.field private ntResponse:[B

.field private sessionKey:[B

.field private user:Ljava/lang/String;

.field private workstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    const-string v0, "jcifs.smb.client.useUnicode"

    const/4 v1, 0x1

    .line 75
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/lit16 v0, v1, 0x200

    sput v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    const-string v0, "jcifs.smb.client.domain"

    const/4 v1, 0x0

    .line 78
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.username"

    .line 79
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_USER:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.password"

    .line 80
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_PASSWORD:Ljava/lang/String;

    .line 84
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

    .line 86
    :goto_1
    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v1, 0x3

    .line 87
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 72
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 95
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    .line 96
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 290
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 72
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 291
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    .line 292
    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 293
    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    .line 294
    invoke-virtual {p0, p4}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, p5}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, p6}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type2Message;)V
    .locals 5

    .line 107
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 72
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 108
    invoke-static {p1}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    .line 109
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultPassword()Ljava/lang/String;

    move-result-object v2

    .line 115
    sget v3, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    packed-switch v3, :pswitch_data_0

    .line 139
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 140
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto :goto_0

    :pswitch_0
    const/16 v3, 0x8

    .line 129
    new-array v3, v3, [B

    .line 130
    sget-object v4, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 131
    invoke-static {p1, v0, v1, v2, v3}, Ljcifs/ntlmssp/Type3Message;->getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 124
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto :goto_0

    .line 118
    :pswitch_2
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 119
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    :goto_0
    return-void

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

.method public constructor <init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 155
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 72
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 156
    invoke-static {p1}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I

    move-result v0

    or-int/2addr p6, v0

    invoke-virtual {p0, p6}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    if-nez p5, :cond_0

    .line 158
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object p5

    .line 159
    :cond_0
    invoke-virtual {p0, p5}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, p4}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 163
    sget p5, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    const/high16 p6, 0x40000000    # 2.0f

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x10

    packed-switch p5, :pswitch_data_0

    .line 273
    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 274
    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto/16 :goto_0

    .line 232
    :pswitch_0
    invoke-static {p3, p4, p2}, Ljcifs/smb/NtlmPasswordAuthentication;->nTOWFv2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p5

    .line 234
    new-array v3, v1, [B

    .line 235
    sget-object v4, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 236
    invoke-static {p1, p3, p4, p2, v3}, Ljcifs/ntlmssp/Type3Message;->getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 238
    new-array p2, v1, [B

    .line 239
    sget-object p3, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p3, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 240
    invoke-static {p1, p5, p2}, Ljcifs/ntlmssp/Type3Message;->getNTLMv2Response(Ljcifs/ntlmssp/Type2Message;[B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    .line 242
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result p1

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_4

    .line 243
    new-instance p1, Ljcifs/util/HMACT64;

    invoke-direct {p1, p5}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 244
    iget-object p2, p0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    invoke-virtual {p1, p2, v0, v2}, Ljcifs/util/HMACT64;->update([BII)V

    .line 245
    invoke-virtual {p1}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object p1

    .line 247
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result p2

    and-int/2addr p2, p6

    if-eqz p2, :cond_1

    .line 248
    new-array p2, v2, [B

    iput-object p2, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 249
    sget-object p2, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    iget-object p3, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {p2, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 251
    new-array p2, v2, [B

    .line 252
    new-instance v3, Ljcifs/util/RC4;

    invoke-direct {v3, p1}, Ljcifs/util/RC4;-><init>([B)V

    .line 253
    iget-object v4, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v8, 0x0

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Ljcifs/util/RC4;->update([BII[BI)V

    .line 264
    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_0

    .line 266
    :cond_1
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 267
    iget-object p1, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_0

    .line 225
    :pswitch_1
    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p1

    .line 226
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 227
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto/16 :goto_0

    .line 166
    :pswitch_2
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result p3

    const/high16 p4, 0x80000

    and-int/2addr p3, p4

    if-nez p3, :cond_2

    .line 167
    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 168
    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto/16 :goto_0

    :cond_2
    const/16 p3, 0x18

    .line 172
    new-array p4, p3, [B

    .line 173
    sget-object p5, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p5, p4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 174
    invoke-static {p4, v1, p3, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 178
    invoke-static {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->nTOWFv1(Ljava/lang/String;)[B

    move-result-object p2

    .line 179
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p3

    invoke-static {p2, p3, p4}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLM2Response([B[B[B)[B

    move-result-object p3

    .line 183
    invoke-virtual {p0, p4}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 184
    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    .line 186
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result p3

    and-int/2addr p3, v2

    if-ne p3, v2, :cond_4

    .line 187
    new-array p3, v2, [B

    .line 188
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p1

    invoke-static {p1, v0, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    invoke-static {p4, v0, p3, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    new-instance p1, Ljcifs/util/MD4;

    invoke-direct {p1}, Ljcifs/util/MD4;-><init>()V

    .line 192
    invoke-virtual {p1, p2}, Ljcifs/util/MD4;->update([B)V

    .line 193
    invoke-virtual {p1}, Ljcifs/util/MD4;->digest()[B

    move-result-object p1

    .line 195
    new-instance p2, Ljcifs/util/HMACT64;

    invoke-direct {p2, p1}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 196
    invoke-virtual {p2, p3}, Ljcifs/util/HMACT64;->update([B)V

    .line 197
    invoke-virtual {p2}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object p1

    .line 199
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result p2

    and-int/2addr p2, p6

    if-eqz p2, :cond_3

    .line 200
    new-array p2, v2, [B

    iput-object p2, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 201
    sget-object p2, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    iget-object p3, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {p2, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 203
    new-array p2, v2, [B

    .line 204
    new-instance v3, Ljcifs/util/RC4;

    invoke-direct {v3, p1}, Ljcifs/util/RC4;-><init>([B)V

    .line 205
    iget-object v4, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v8, 0x0

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Ljcifs/util/RC4;->update([BII[BI)V

    .line 216
    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto :goto_0

    .line 218
    :cond_3
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 219
    iget-object p1, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    :cond_4
    :goto_0
    return-void

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

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 72
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 306
    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type3Message;->parse([B)V

    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .locals 1

    .line 584
    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .locals 1

    .line 509
    sget v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I
    .locals 1

    if-nez p0, :cond_0

    .line 519
    sget p0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    return p0

    .line 521
    :cond_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getFlags()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/lit16 p0, v0, 0x200

    return p0
.end method

.method public static getDefaultPassword()Ljava/lang/String;
    .locals 1

    .line 602
    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_PASSWORD:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultUser()Ljava/lang/String;
    .locals 1

    .line 593
    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_USER:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultWorkstation()Ljava/lang/String;
    .locals 1

    .line 611
    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    return-object v0
.end method

.method public static getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p0

    invoke-static {p1, p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p0

    invoke-static {p1, p2, p3, p0, p4}, Ljcifs/smb/NtlmPasswordAuthentication;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNTLMv2Response(Ljcifs/ntlmssp/Type2Message;[B[B)[B
    .locals 10

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0xa9730b66800L

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    mul-long v7, v0, v2

    .line 557
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v5

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v9

    move-object v4, p1

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMv2Response([B[B[BJ[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p0

    invoke-static {p1, p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private parse([B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 616
    aget-byte v1, p1, v0

    sget-object v2, Ljcifs/ntlmssp/Type3Message;->NTLMSSP_SIGNATURE:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 617
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not an NTLMSSP message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    :cond_1
    invoke-static {p1, v1}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 621
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not a Type 3 message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/16 v0, 0xc

    .line 623
    invoke-static {p1, v0}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v0

    const/16 v1, 0x10

    .line 624
    invoke-static {p1, v1}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v1

    const/16 v2, 0x14

    .line 625
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v2

    const/16 v3, 0x18

    .line 626
    invoke-static {p1, v3}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v3

    const/16 v4, 0x1c

    .line 627
    invoke-static {p1, v4}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v4

    const/16 v5, 0x20

    .line 628
    invoke-static {p1, v5}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v5

    const/16 v6, 0x24

    .line 629
    invoke-static {p1, v6}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v6

    const/16 v7, 0x28

    .line 630
    invoke-static {p1, v7}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v7

    const/16 v8, 0x2c

    .line 631
    invoke-static {p1, v8}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v8

    const/16 v9, 0x30

    .line 632
    invoke-static {p1, v9}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x34

    if-eq v1, v11, :cond_5

    if-eq v3, v11, :cond_5

    if-eq v5, v11, :cond_5

    if-eq v7, v11, :cond_5

    if-ne v9, v11, :cond_3

    goto :goto_1

    .line 642
    :cond_3
    invoke-static {p1, v11}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v10

    const/16 v1, 0x3c

    .line 643
    invoke-static {p1, v1}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result p1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    const-string v1, "UTF-16LE"

    goto :goto_2

    .line 644
    :cond_4
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    :goto_1
    const/16 p1, 0x202

    .line 640
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v1

    .line 647
    :goto_2
    invoke-virtual {p0, v10}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    .line 648
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    .line 649
    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 650
    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    .line 651
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 652
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 653
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v8, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getLMResponse()[B
    .locals 1

    .line 315
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->lmResponse:[B

    return-object v0
.end method

.method public getMasterKey()[B
    .locals 1

    .line 406
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    return-object v0
.end method

.method public getNTResponse()[B
    .locals 1

    .line 333
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    return-object v0
.end method

.method public getSessionKey()[B
    .locals 1

    .line 415
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkstation()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->workstation:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->domain:Ljava/lang/String;

    return-void
.end method

.method public setLMResponse([B)V
    .locals 0

    .line 324
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->lmResponse:[B

    return-void
.end method

.method public setNTResponse([B)V
    .locals 0

    .line 342
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    return-void
.end method

.method public setSessionKey([B)V
    .locals 0

    .line 424
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 378
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->user:Ljava/lang/String;

    return-void
.end method

.method public setWorkstation(Ljava/lang/String;)V
    .locals 0

    .line 396
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->workstation:Ljava/lang/String;

    return-void
.end method

.method public toByteArray()[B
    .locals 17

    .line 429
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move-object v5, v4

    goto :goto_1

    .line 431
    :cond_1
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v5

    .line 432
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 434
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_2

    const-string v7, "UTF-16LE"

    .line 435
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v4

    :goto_2
    if-eqz v6, :cond_4

    .line 439
    array-length v7, v6

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    .line 440
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 442
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v2, :cond_5

    const-string v9, "UTF-16LE"

    .line 443
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_4

    :cond_6
    move-object v8, v4

    :goto_4
    if-eqz v8, :cond_7

    .line 446
    array-length v9, v8

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    .line 447
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getWorkstation()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 449
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_9

    if-eqz v2, :cond_8

    const-string v2, "UTF-16LE"

    .line 450
    invoke-virtual {v10, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_6

    :cond_8
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    :goto_6
    move-object v4, v2

    :cond_9
    if-eqz v4, :cond_a

    .line 454
    array-length v2, v4

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    .line 456
    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    move-result-object v5

    if-eqz v5, :cond_b

    .line 457
    array-length v10, v5

    goto :goto_8

    :cond_b
    const/4 v10, 0x0

    .line 458
    :goto_8
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    move-result-object v11

    if-eqz v11, :cond_c

    .line 459
    array-length v12, v11

    goto :goto_9

    :cond_c
    const/4 v12, 0x0

    .line 460
    :goto_9
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getSessionKey()[B

    move-result-object v13

    if-eqz v13, :cond_d

    .line 461
    array-length v14, v13

    goto :goto_a

    :cond_d
    const/4 v14, 0x0

    :goto_a
    add-int/lit8 v15, v7, 0x40

    add-int/2addr v15, v9

    add-int/2addr v15, v2

    add-int/2addr v15, v10

    add-int/2addr v15, v12

    add-int/2addr v15, v14

    .line 462
    new-array v14, v15, [B

    .line 464
    sget-object v15, Ljcifs/ntlmssp/Type3Message;->NTLMSSP_SIGNATURE:[B

    move/from16 v16, v1

    const/16 v1, 0x8

    invoke-static {v15, v3, v14, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x3

    .line 465
    invoke-static {v14, v1, v3}, Ljcifs/ntlmssp/Type3Message;->writeULong([BII)V

    const/16 v1, 0xc

    const/16 v3, 0x40

    .line 467
    invoke-static {v14, v1, v3, v5}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    add-int/2addr v10, v3

    const/16 v1, 0x14

    .line 469
    invoke-static {v14, v1, v10, v11}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    add-int/2addr v10, v12

    const/16 v1, 0x1c

    .line 471
    invoke-static {v14, v1, v10, v6}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    add-int/2addr v10, v7

    const/16 v1, 0x24

    .line 473
    invoke-static {v14, v1, v10, v8}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    add-int/2addr v10, v9

    const/16 v1, 0x2c

    .line 475
    invoke-static {v14, v1, v10, v4}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    add-int/2addr v10, v2

    const/16 v1, 0x34

    .line 477
    invoke-static {v14, v1, v10, v13}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    const/16 v1, 0x3c

    move/from16 v2, v16

    .line 478
    invoke-static {v14, v1, v2}, Ljcifs/ntlmssp/Type3Message;->writeULong([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v14

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 481
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 486
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getWorkstation()Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    move-result-object v3

    .line 490
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    move-result-object v4

    .line 491
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getSessionKey()[B

    move-result-object v5

    .line 493
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type3Message[domain="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",user="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",workstation="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",lmResponse="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
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

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",ntResponse="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_1

    const-string v0, "null"

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",sessionKey="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_2

    const-string v0, "null"

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",flags=0x"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
