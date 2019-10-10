.class public Ljcifs/http/NtlmHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "NtlmHttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/http/NtlmHttpURLConnection$CacheStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final LM_COMPATIBILITY:I

.field private static final MAX_REDIRECTS:I


# instance fields
.field private authMethod:Ljava/lang/String;

.field private authProperty:Ljava/lang/String;

.field private cachedOutput:Ljava/io/ByteArrayOutputStream;

.field private connection:Ljava/net/HttpURLConnection;

.field private handshakeComplete:Z

.field private headerFields:Ljava/util/Map;

.field private requestProperties:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http.maxRedirects"

    const-string v1, "20"

    .line 61
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Ljcifs/http/NtlmHttpURLConnection;->MAX_REDIRECTS:I

    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v1, 0x0

    .line 64
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/http/NtlmHttpURLConnection;->LM_COMPATIBILITY:I

    const-string v0, "http.auth.ntlm.domain"

    .line 84
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    sput-object v0, Ljcifs/http/NtlmHttpURLConnection;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 90
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 91
    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 92
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    return-void
.end method

.method private attemptNegotiation(I)Ljcifs/ntlmssp/NtlmMessage;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 482
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    .line 483
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    .line 484
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 485
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x400

    .line 487
    new-array v5, v4, [B

    .line 488
    :goto_0
    invoke-virtual {v1, v5, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-eq v6, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x191

    if-ne p1, v1, :cond_1

    const-string p1, "WWW-Authenticate"

    const-string v1, "Authorization"

    .line 493
    iput-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, "Proxy-Authenticate"

    const-string v1, "Proxy-Authorization"

    .line 496
    iput-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    .line 499
    :goto_1
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->getHeaderFields0()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    return-object v0

    .line 501
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 502
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_9

    .line 503
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "NTLM"

    .line 504
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x20

    if-eqz v5, :cond_6

    .line 505
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_4

    const-string p1, "NTLM"

    .line 506
    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    goto :goto_3

    .line 509
    :cond_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v4, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "NTLM"

    .line 510
    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    const/4 p1, 0x5

    .line 511
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    const-string v5, "Negotiate"

    .line 513
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 514
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x9

    if-ne v5, v7, :cond_7

    const-string p1, "Negotiate"

    .line 515
    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    goto :goto_3

    .line 518
    :cond_7
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v7, :cond_8

    goto :goto_2

    :cond_8
    const-string p1, "Negotiate"

    .line 519
    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    const/16 p1, 0xa

    .line 520
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    :goto_3
    move-object p1, v0

    .line 524
    :goto_4
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    if-eqz p1, :cond_b

    .line 525
    new-instance v1, Ljcifs/ntlmssp/Type2Message;

    invoke-static {p1}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljcifs/ntlmssp/Type2Message;-><init>([B)V

    goto :goto_5

    :cond_b
    move-object v1, v0

    .line 527
    :goto_5
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->reconnect()V

    const/4 p1, 0x1

    if-nez v1, :cond_d

    .line 529
    new-instance v0, Ljcifs/ntlmssp/Type1Message;

    invoke-direct {v0}, Ljcifs/ntlmssp/Type1Message;-><init>()V

    .line 530
    sget v1, Ljcifs/http/NtlmHttpURLConnection;->LM_COMPATIBILITY:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_c

    .line 531
    invoke-virtual {v0, v4, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlag(IZ)V

    :cond_c
    move-object p1, v0

    goto/16 :goto_a

    .line 534
    :cond_d
    sget-object v4, Ljcifs/http/NtlmHttpURLConnection;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 535
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v5

    .line 536
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultPassword()Ljava/lang/String;

    move-result-object v6

    .line 537
    iget-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 539
    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x3a

    .line 540
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v3, :cond_e

    .line 541
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_e
    move-object v8, v5

    :goto_6
    if-eq v7, v3, :cond_f

    add-int/2addr v7, p1

    .line 542
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :cond_f
    const/16 v5, 0x5c

    .line 543
    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v3, :cond_10

    const/16 v5, 0x2f

    .line 544
    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    :cond_10
    if-eq v5, v3, :cond_11

    .line 545
    invoke-virtual {v8, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_11
    if-eq v5, v3, :cond_12

    add-int/2addr v5, p1

    .line 546
    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_7

    :cond_12
    move-object v5, v8

    :cond_13
    :goto_7
    move-object v9, v4

    if-nez v5, :cond_18

    .line 549
    iget-boolean p1, p0, Ljcifs/http/NtlmHttpURLConnection;->allowUserInteraction:Z

    if-nez p1, :cond_14

    return-object v0

    .line 551
    :cond_14
    :try_start_0
    invoke-virtual {p0}, Ljcifs/http/NtlmHttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    .line 552
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 553
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result p1

    if-ne p1, v3, :cond_16

    const-string p1, "https"

    .line 555
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/16 p1, 0x1bb

    goto :goto_8

    :cond_15
    const/16 p1, 0x50

    :cond_16
    :goto_8
    const-string v3, ""

    .line 557
    iget-object v4, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    invoke-static {v0, p1, v2, v3, v4}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object p1

    if-nez p1, :cond_17

    return-object v0

    .line 561
    :cond_17
    invoke-virtual {p1}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 562
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v0

    move-object v8, v2

    goto :goto_9

    :catch_0
    move-object v5, v0

    :catch_1
    :cond_18
    move-object v10, v5

    move-object v8, v6

    .line 565
    :goto_9
    move-object v7, v1

    check-cast v7, Ljcifs/ntlmssp/Type2Message;

    .line 566
    new-instance p1, Ljcifs/ntlmssp/Type3Message;

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Ljcifs/ntlmssp/Type3Message;-><init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_a
    return-object p1
.end method

.method private doHandshake()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Ljcifs/http/NtlmHttpURLConnection;->connect()V

    const/4 v0, 0x0

    .line 436
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->parseResponseCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x197

    const/16 v3, 0x191

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 477
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    return-void

    .line 440
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Ljcifs/http/NtlmHttpURLConnection;->attemptNegotiation(I)Ljcifs/ntlmssp/NtlmMessage;

    move-result-object v1

    check-cast v1, Ljcifs/ntlmssp/Type1Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 477
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    return-void

    :cond_1
    const/4 v4, 0x0

    .line 443
    :goto_0
    :try_start_2
    sget v5, Ljcifs/http/NtlmHttpURLConnection;->MAX_REDIRECTS:I

    if-ge v4, v5, :cond_6

    .line 444
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljcifs/ntlmssp/Type1Message;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 447
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->parseResponseCode()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v5, v3, :cond_2

    if-eq v5, v2, :cond_2

    .line 477
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    return-void

    .line 452
    :cond_2
    :try_start_3
    invoke-direct {p0, v5}, Ljcifs/http/NtlmHttpURLConnection;->attemptNegotiation(I)Ljcifs/ntlmssp/NtlmMessage;

    move-result-object v5

    check-cast v5, Ljcifs/ntlmssp/Type3Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_3

    .line 477
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    return-void

    .line 455
    :cond_3
    :try_start_4
    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljcifs/ntlmssp/Type3Message;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 458
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Ljcifs/http/NtlmHttpURLConnection;->doOutput:Z

    if-eqz v5, :cond_4

    .line 459
    iget-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 460
    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 461
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 463
    :cond_4
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->parseResponseCode()I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v5, v3, :cond_5

    if-eq v5, v2, :cond_5

    .line 477
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    return-void

    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 469
    :try_start_5
    iget-boolean v5, p0, Ljcifs/http/NtlmHttpURLConnection;->allowUserInteraction:Z

    if-eqz v5, :cond_6

    sget v5, Ljcifs/http/NtlmHttpURLConnection;->MAX_REDIRECTS:I

    if-ge v4, v5, :cond_6

    .line 470
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->reconnect()V

    goto/16 :goto_0

    .line 475
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to negotiate NTLM authentication."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v1

    .line 477
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    throw v1
.end method

.method private getHeaderFields0()Ljava/util/Map;
    .locals 6

    .line 161
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    return-object v0

    .line 162
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    iget-object v3, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-nez v1, :cond_3

    if-eqz v2, :cond_1

    goto :goto_2

    .line 175
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 181
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    return-object v0

    .line 166
    :cond_3
    :goto_2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_4

    .line 168
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_4
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    iget-object v2, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v4, v3

    goto :goto_0
.end method

.method private handshake()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->handshakeComplete:Z

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->doHandshake()V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->handshakeComplete:Z

    return-void
.end method

.method private parseResponseCode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    :try_start_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 426
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, 0x3

    .line 427
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 429
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private reconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 574
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 575
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    .line 576
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 577
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 579
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 580
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 581
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 582
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 583
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 584
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 586
    :cond_1
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :cond_2
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Ljcifs/http/NtlmHttpURLConnection;->allowUserInteraction:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 589
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Ljcifs/http/NtlmHttpURLConnection;->doInput:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 590
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Ljcifs/http/NtlmHttpURLConnection;->doOutput:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 591
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-wide v1, p0, Ljcifs/http/NtlmHttpURLConnection;->ifModifiedSince:J

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 592
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Ljcifs/http/NtlmHttpURLConnection;->useCaches:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    .line 330
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 332
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 333
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 335
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 337
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v0, :cond_3

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object p2, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_3
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 349
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 350
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", "

    .line 352
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 355
    :cond_5
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connected:Z

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 406
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 407
    iput-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->handshakeComplete:Z

    .line 408
    iput-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connected:Z

    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 282
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 127
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 113
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 120
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 141
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 304
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 264
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 273
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 417
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 134
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 215
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 155
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 201
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 194
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 208
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1

    .line 185
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    return-object v0

    .line 187
    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :catch_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->getHeaderFields0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 300
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 378
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .line 148
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    :try_start_0
    invoke-virtual {p0}, Ljcifs/http/NtlmHttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    .line 251
    new-instance v1, Ljcifs/http/NtlmHttpURLConnection$CacheStream;

    iget-object v2, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0, v2}, Ljcifs/http/NtlmHttpURLConnection$CacheStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 4

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 364
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 365
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 367
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 370
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 108
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 291
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 277
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 278
    iput-boolean p1, p0, Ljcifs/http/NtlmHttpURLConnection;->allowUserInteraction:Z

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 308
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 259
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 260
    iput-boolean p1, p0, Ljcifs/http/NtlmHttpURLConnection;->doInput:Z

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 268
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 269
    iput-boolean p1, p0, Ljcifs/http/NtlmHttpURLConnection;->doOutput:Z

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 295
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 296
    iput-wide p1, p0, Ljcifs/http/NtlmHttpURLConnection;->ifModifiedSince:J

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 374
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 384
    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->method:Ljava/lang/String;

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 312
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 313
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 316
    iget-object v2, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 317
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 320
    invoke-interface {v3, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    .line 325
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 286
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 287
    iput-boolean p1, p0, Ljcifs/http/NtlmHttpURLConnection;->useCaches:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 412
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
