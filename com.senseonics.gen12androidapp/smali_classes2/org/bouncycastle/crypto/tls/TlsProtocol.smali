.class public abstract Lorg/bouncycastle/crypto/tls/TlsProtocol;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    }
.end annotation


# static fields
.field protected static final CS_CERTIFICATE_REQUEST:S = 0x7s

.field protected static final CS_CERTIFICATE_STATUS:S = 0x5s

.field protected static final CS_CERTIFICATE_VERIFY:S = 0xcs

.field protected static final CS_CLIENT_CERTIFICATE:S = 0xas

.field protected static final CS_CLIENT_FINISHED:S = 0xds

.field protected static final CS_CLIENT_HELLO:S = 0x1s

.field protected static final CS_CLIENT_KEY_EXCHANGE:S = 0xbs

.field protected static final CS_CLIENT_SUPPLEMENTAL_DATA:S = 0x9s

.field protected static final CS_END:S = 0x10s

.field protected static final CS_SERVER_CERTIFICATE:S = 0x4s

.field protected static final CS_SERVER_FINISHED:S = 0xfs

.field protected static final CS_SERVER_HELLO:S = 0x2s

.field protected static final CS_SERVER_HELLO_DONE:S = 0x8s

.field protected static final CS_SERVER_KEY_EXCHANGE:S = 0x6s

.field protected static final CS_SERVER_SESSION_TICKET:S = 0xes

.field protected static final CS_SERVER_SUPPLEMENTAL_DATA:S = 0x3s

.field protected static final CS_START:S = 0x0s

.field protected static final EXT_RenegotiationInfo:Ljava/lang/Integer;

.field protected static final EXT_SessionTicket:Ljava/lang/Integer;

.field private static final TLS_ERROR_MESSAGE:Ljava/lang/String; = "Internal TLS error, this could be an attack"


# instance fields
.field private alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field protected allowCertificateStatus:Z

.field private volatile appDataReady:Z

.field private applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field protected clientExtensions:Ljava/util/Hashtable;

.field private volatile closed:Z

.field protected connection_state:S

.field protected expectSessionTicket:Z

.field private expected_verify_data:[B

.field private volatile failedWithError:Z

.field private handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field protected offeredCipherSuites:[I

.field protected offeredCompressionMethods:[S

.field protected peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

.field protected receivedChangeCipherSpec:Z

.field protected recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

.field protected resumedSession:Z

.field protected secureRandom:Ljava/security/SecureRandom;

.field protected secure_renegotiation:Z

.field protected securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

.field protected serverExtensions:Ljava/util/Hashtable;

.field protected sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

.field private volatile splitApplicationDataRecords:Z

.field private tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

.field private tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

.field protected tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xff01

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    const/16 v0, 0x23

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->splitApplicationDataRecords:Z

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCompressionMethods:[S

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secure_renegotiation:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->allowCertificateStatus:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expectSessionTicket:Z

    new-instance v0, Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/crypto/tls/RecordStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method protected static assertEmpty(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    if-lez p0, :cond_0

    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_0
    return-void
.end method

.method protected static createRandomBlock(Ljava/security/SecureRandom;)[B
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/security/SecureRandom;->setSeed(J)V

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method protected static createRenegotiationInfo([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->encodeOpaque8([B)[B

    move-result-object p0

    return-object p0
.end method

.method protected static establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generatePremasterSecret()[B

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;[B)[B

    move-result-object p0

    iput-object p0, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_1
    throw p0
.end method

.method protected static getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B
    .locals 1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->forkPRFHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    array-length p0, p2

    invoke-interface {p1, p2, v0, p0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    new-array p0, p0, [B

    invoke-interface {p1, p0, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object p0
.end method

.method protected static getPRFAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p0

    const/16 v0, 0x2f

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0

    :sswitch_0
    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v0

    :pswitch_0
    if-eqz p0, :cond_2

    return v2

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_1
    if-eqz p0, :cond_3

    return v1

    :cond_3
    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9c
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa8
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc023
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc09c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xaf -> :sswitch_0
        0xb1 -> :sswitch_0
        0xb3 -> :sswitch_0
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_0
        0xb9 -> :sswitch_0
        0xc038 -> :sswitch_0
        0xc03b -> :sswitch_0
    .end sparse-switch
.end method

.method private processAlert()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(II)[B

    move-result-object v0

    aget-byte v3, v0, v2

    int-to-short v3, v3

    const/4 v4, 0x1

    aget-byte v0, v0, v4

    int-to-short v0, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyAlertReceived(SS)V

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->invalidateSession()V

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->safeClose()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleClose(Z)V

    :cond_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleWarningMessage(S)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processApplicationData()V
    .locals 0

    return-void
.end method

.method private processChangeCipherSpec([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v1, p2, v0

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_0
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    if-eqz v1, :cond_1

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->receivedReadCipherSpec()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleChangeCipherSpecMessage()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processHandshake()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_4

    new-array v0, v3, [B

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v4, v0, v2, v3, v2}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v5

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v6

    add-int/lit8 v7, v4, 0x4

    if-lt v6, v7, :cond_4

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6, v4, v3}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(II)[B

    move-result-object v6

    if-eqz v5, :cond_3

    const/16 v7, 0x14

    if-eq v5, v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->isServer()Z

    move-result v7

    xor-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createVerifyData(Z)[B

    move-result-object v7

    iput-object v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    :cond_2
    :goto_0
    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v7, v0, v2, v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v6, v2, v4}, Lorg/bouncycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    :cond_3
    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleHandshakeMessage(S[B)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_0

    return-void
.end method

.method protected static readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    return-object v0
.end method

.method protected static readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque24(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;-><init>(I[B)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected static writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void
.end method

.method protected static writeSupplementalData(Ljava/io/OutputStream;Ljava/util/Vector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;->getDataType()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;->getData()[B

    move-result-object v2

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method protected cleanupHandshake()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clear()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCompressionMethods:[S

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secure_renegotiation:Z

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->allowCertificateStatus:Z

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expectSessionTicket:Z

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleClose(Z)V

    return-void
.end method

.method protected completeHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    :try_start_0
    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeReadRecord()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->finaliseHandshake()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv11(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->splitApplicationDataRecords:Z

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsInputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsInputStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsOutputStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    if-nez v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget v1, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setCipherSuite(I)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-short v1, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setCompressionAlgorithm(S)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v1, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setMasterSecret([B)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setPeerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setServerExtensions(Ljava/util/Hashtable;)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->build()Lorg/bouncycastle/crypto/tls/SessionParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/bouncycastle/crypto/tls/SessionParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setResumableSession(Lorg/bouncycastle/crypto/tls/TlsSession;)V

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyHandshakeComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    throw v0
.end method

.method protected createVerifyData(Z)[B
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "server finished"

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL_SERVER:[B

    :goto_0
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "client finished"

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL_CLIENT:[B

    goto :goto_0
.end method

.method protected failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->invalidateSession()V

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/RecordStream;->safeClose()V

    if-eq p1, v1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Internal TLS error, this could be an attack"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->flush()V

    return-void
.end method

.method protected abstract getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    return-object v0
.end method

.method protected abstract getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;
.end method

.method protected handleChangeCipherSpecMessage()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected handleClose(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez p1, :cond_0

    const/16 p1, 0x5a

    const-string v0, "User canceled handshake"

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->raiseWarning(SLjava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    const-string v1, "Connection closed"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method protected abstract handleHandshakeMessage(S[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected handleWarningMessage(S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected invalidateSession()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->clear()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->invalidate()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    :cond_1
    return-void
.end method

.method protected processFinishedMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    array-length v0, v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x33

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_0
    return-void
.end method

.method protected processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S

    move-result p2

    if-ltz p2, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S

    move-result p1

    if-eq p2, p1, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, p3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_0
    return p2
.end method

.method protected processRecord(S[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez p1, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processApplicationData()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processHandshake()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processAlert()V

    return-void

    :pswitch_3
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processChangeCipherSpec([BII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Exception;)V

    const/4 p3, 0x2

    new-array p4, p3, [B

    int-to-byte p1, p1

    const/4 v0, 0x0

    aput-byte p1, p4, v0

    int-to-byte p1, p2

    const/4 p2, 0x1

    aput-byte p1, p4, p2

    const/16 p1, 0x15

    invoke-virtual {p0, p1, p4, v0, p3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    return-void
.end method

.method protected raiseWarning(SLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->raiseAlert(SSLjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method protected readApplicationData([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p3, v1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v1, :cond_2

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Internal TLS error, this could be an attack"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeReadRecord()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData([BIII)V

    return p3
.end method

.method protected safeReadRecord()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x50

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->readRecord()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
    :try_end_0
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v2

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v3, :cond_1

    const-string v3, "Failed to read record"

    invoke-virtual {p0, v1, v0, v3, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    throw v2

    :catch_1
    move-exception v2

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v3, :cond_2

    const-string v3, "Failed to read record"

    invoke-virtual {p0, v1, v0, v3, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    throw v2

    :catch_2
    move-exception v0

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v2

    const-string v3, "Failed to read record"

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    throw v0
.end method

.method protected safeWriteRecord(S[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x50

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeRecord(S[BII)V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez p2, :cond_0

    const-string p2, "Failed to write record"

    invoke-virtual {p0, v1, v0, p2, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    throw p1

    :catch_1
    move-exception p1

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez p2, :cond_1

    const-string p2, "Failed to write record"

    invoke-virtual {p0, v1, v0, p2, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    throw p1

    :catch_2
    move-exception p1

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result p2

    const-string p3, "Failed to write record"

    invoke-virtual {p0, v1, p2, p3, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    throw p1
.end method

.method protected sendCertificateMessage(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->getLength()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " client didn\'t provide credentials"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x29

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->raiseWarning(SLjava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/Certificate;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendChangeCipherSpecMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    array-length v0, v1

    const/16 v3, 0x14

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->sentWriteCipherSpec()V

    return-void
.end method

.method protected sendFinishedMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->isServer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createVerifyData(Z)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    array-length v2, v0

    const/16 v3, 0x14

    invoke-direct {v1, p0, v3, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;SI)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendSupplementalDataMessage(Ljava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeSupplementalData(Ljava/io/OutputStream;Ljava/util/Vector;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected writeData([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Internal TLS error, this could be an attack"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Sorry, connection has been closed, you cannot write more data"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-lez p3, :cond_3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->splitApplicationDataRecords:Z

    const/16 v1, 0x17

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v1, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    :cond_2
    if-lez p3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->getPlaintextLimit()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v1, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected writeHandshakeMessage([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->getPlaintextLimit()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x16

    invoke-virtual {p0, v1, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method
