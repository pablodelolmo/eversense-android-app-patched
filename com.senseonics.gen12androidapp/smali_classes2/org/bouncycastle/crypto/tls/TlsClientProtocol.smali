.class public Lorg/bouncycastle/crypto/tls/TlsClientProtocol;
.super Lorg/bouncycastle/crypto/tls/TlsProtocol;


# instance fields
.field protected authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

.field protected certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

.field protected certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

.field protected keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

.field protected selectedSessionID:[B

.field protected tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

.field protected tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->createSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    return-void
.end method

.method private static createSecureRandom()Ljava/security/SecureRandom;
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;-><init>()V

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;->generateSeed(IZ)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->setSeed([B)V

    return-object v1
.end method


# virtual methods
.method protected cleanupHandshake()V
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    return-void
.end method

.method public connect(Lorg/bouncycastle/crypto/tls/TlsClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'tlsClient\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'connect\' can only be called once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    new-instance v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    const/4 v1, 0x1

    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->createRandomBlock(Ljava/security/SecureRandom;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getSessionToResume()Lorg/bouncycastle/crypto/tls/TlsSession;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsSession;->exportSessionParameters()Lorg/bouncycastle/crypto/tls/SessionParameters;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendClientHelloMessage()V

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->completeHandshake()V

    return-void
.end method

.method protected getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    return-object v0
.end method

.method protected handleHandshakeMessage(S[B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    const/16 v1, 0xf

    const/16 v2, 0x14

    const/16 v3, 0x10

    const/16 v4, 0xd

    const/4 v5, 0x2

    const/16 v6, 0xa

    if-eqz p2, :cond_2

    if-ne p1, v2, :cond_1

    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendFinishedMessage()V

    iput-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    return-void

    :cond_1
    :goto_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    const/16 p2, 0x28

    if-eqz p1, :cond_18

    const/16 v7, 0xc

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eq p1, v5, :cond_14

    const/4 v10, 0x4

    if-eq p1, v10, :cond_11

    if-eq p1, v2, :cond_f

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_0
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v5, :cond_3

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_3
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    return-void

    :pswitch_1
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v10, :cond_4

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_4
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    if-nez p1, :cond_5

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_5
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/CertificateStatus;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateStatus;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/4 p1, 0x5

    goto/16 :goto_4

    :pswitch_2
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch p1, :pswitch_data_2

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_3
    invoke-virtual {p0, v9}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :pswitch_4
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    iput-object v9, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    :pswitch_5
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :pswitch_6
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iput-short v8, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    :cond_6
    const/16 p1, 0x9

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    move-object p1, v9

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/bouncycastle/crypto/tls/CertificateRequest;)Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object p1

    if-nez p1, :cond_8

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    sget-object p2, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    :goto_1
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendCertificateMessage(Lorg/bouncycastle/crypto/tls/Certificate;)V

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object p2

    goto :goto_1

    :goto_2
    iput-short v6, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendClientKeyExchangeMessage()V

    const/16 p2, 0xb

    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/RecordStream;->prepareToFinish()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p2

    if-eqz p1, :cond_b

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->getSignatureAndHashAlgorithm()Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v9

    if-nez v9, :cond_9

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_9
    invoke-virtual {v9}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    invoke-interface {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object p2

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0, p2, v9}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object p2

    :goto_3
    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/crypto/tls/DigitallySigned;

    invoke-direct {p2, v9, p1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;-><init>(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendCertificateVerifyMessage(Lorg/bouncycastle/crypto/tls/DigitallySigned;)V

    iput-short v7, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    :cond_b
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendFinishedMessage()V

    iput-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    return-void

    :pswitch_7
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch p1, :pswitch_data_3

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_8
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :pswitch_9
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    if-nez p1, :cond_c

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_c
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->parse(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    const/4 p1, 0x7

    goto :goto_4

    :pswitch_a
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch p1, :pswitch_data_4

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_b
    invoke-virtual {p0, v9}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :pswitch_c
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    iput-object v9, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    :pswitch_d
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/4 p1, 0x6

    :goto_4
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    return-void

    :pswitch_e
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch p1, :pswitch_data_5

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_f
    invoke-virtual {p0, v9}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :pswitch_10
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    :cond_e
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    iput-short v10, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    return-void

    :cond_f
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v4, :cond_10

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_10
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    return-void

    :cond_11
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v4, :cond_12

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_12
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-nez p1, :cond_13

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_13
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->invalidateSession()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V

    const/16 p1, 0xe

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_5

    :cond_14
    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    const/4 p2, 0x1

    if-eq p1, p2, :cond_15

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_15
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-short p1, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    if-ltz p1, :cond_16

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-short p1, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    add-int/2addr p1, v8

    shl-int p1, p2, p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/tls/RecordStream;->setPlaintextLimit(I)V

    :cond_16
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v0

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPRFAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;I)I

    move-result p2

    iput p2, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput v7, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/RecordStream;->notifyHelloComplete()V

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getMasterSecret()[B

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object p2

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;

    move-result-object p2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    return-void

    :cond_17
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->invalidateSession()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length p1, p1

    if-lez p1, :cond_1a

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    invoke-direct {p1, p2, v9}, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/bouncycastle/crypto/tls/SessionParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    return-void

    :cond_18
    :goto_5
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v3, :cond_1a

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p1

    if-eqz p1, :cond_19

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_19
    const-string p1, "Renegotiation not supported"

    const/16 p2, 0x64

    invoke-virtual {p0, p2, p1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->raiseWarning(SLjava/lang/String;)V

    :cond_1a
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_e
        :pswitch_a
        :pswitch_7
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected handleSupplementalData(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    const/4 p1, 0x3

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    return-void
.end method

.method protected receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/NewSessionTicket;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V

    return-void
.end method

.method protected receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    const/16 v2, 0x2f

    if-eqz v1, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->getReadVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    const/16 v1, 0x20

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v0, v0

    if-le v0, v1, :cond_3

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v4

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v4, v0}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v0, :cond_12

    const/16 v4, 0xff

    if-ne v0, v4, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v4, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    invoke-static {v5, v4}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_6
    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v5, v4}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    :cond_7
    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    sget-object v6, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    :cond_8
    iget-boolean v6, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v6, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v5

    if-nez v5, :cond_7

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x6e

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_9
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v5, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p1

    if-eqz p1, :cond_a

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->secure_renegotiation:Z

    sget-object v5, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v5}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->createRenegotiationInfo([B)[B

    move-result-object v5

    invoke-static {p1, v5}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-nez p1, :cond_a

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_a
    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->secure_renegotiation:Z

    invoke-interface {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySecureRenegotiation(Z)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    iget-boolean v6, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v6, :cond_d

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result p1

    if-ne v0, p1, :cond_c

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result p1

    if-eq v4, p1, :cond_b

    goto :goto_2

    :cond_b
    const/4 p1, 0x0

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/SessionParameters;->readServerExtensions()Ljava/util/Hashtable;

    move-result-object v5

    goto :goto_3

    :cond_c
    :goto_2
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_d
    :goto_3
    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput v0, v6, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-short v4, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    if-eqz v5, :cond_10

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0, p1, v5, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v4

    iput-short v4, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-static {v5}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v4

    iput-boolean v4, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-nez v0, :cond_e

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {v5, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-nez v0, :cond_f

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {v5, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    :cond_10
    if-eqz p1, :cond_11

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    :cond_11
    return-void

    :cond_12
    :goto_5
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected sendCertificateVerifyMessage(Lorg/bouncycastle/crypto/tls/DigitallySigned;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendClientHelloMessage()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientHelloRecordLayerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/16 v3, 0x20

    if-le v2, v3, :cond_2

    :cond_1
    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCompressionMethods()[S

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    array-length v2, v1

    if-lez v2, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result v3

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result v3

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    const/16 v4, 0xff

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Arrays;->append([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    :cond_7
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendClientKeyExchangeMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method
