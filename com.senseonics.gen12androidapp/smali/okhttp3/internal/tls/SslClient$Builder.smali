.class public Lokhttp3/internal/tls/SslClient$Builder;
.super Ljava/lang/Object;
.source "SslClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/tls/SslClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final chainCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private keyPair:Ljava/security/KeyPair;

.field private keyStoreType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/tls/SslClient$Builder;->chainCertificates:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/tls/SslClient$Builder;->certificates:Ljava/util/List;

    .line 81
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/tls/SslClient$Builder;->keyStoreType:Ljava/lang/String;

    return-void
.end method

.method private newEmptyKeyStore([C)Ljava/security/KeyStore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 160
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/tls/SslClient$Builder;->keyStoreType:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, v1, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 165
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public addTrustedCertificate(Ljava/security/cert/X509Certificate;)Lokhttp3/internal/tls/SslClient$Builder;
    .locals 1

    .line 110
    iget-object v0, p0, Lokhttp3/internal/tls/SslClient$Builder;->certificates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lokhttp3/internal/tls/SslClient;
    .locals 6

    :try_start_0
    const-string v0, "password"

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Lokhttp3/internal/tls/SslClient$Builder;->newEmptyKeyStore([C)Ljava/security/KeyStore;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lokhttp3/internal/tls/SslClient$Builder;->keyPair:Ljava/security/KeyPair;

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lokhttp3/internal/tls/SslClient$Builder;->chainCertificates:Ljava/util/List;

    iget-object v3, p0, Lokhttp3/internal/tls/SslClient$Builder;->chainCertificates:Ljava/util/List;

    .line 127
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/cert/Certificate;

    .line 126
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;

    const-string v3, "private"

    .line 128
    iget-object v4, p0, Lokhttp3/internal/tls/SslClient$Builder;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0, v2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 131
    :goto_0
    iget-object v4, p0, Lokhttp3/internal/tls/SslClient$Builder;->certificates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cert_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/tls/SslClient$Builder;->certificates:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-virtual {v1, v4, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v3}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v3

    .line 138
    invoke-virtual {v3, v1, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 140
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 142
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 144
    array-length v1, v0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    aget-object v1, v0, v2

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "TLS"

    .line 149
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 150
    invoke-virtual {v3}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v0, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 152
    new-instance v3, Lokhttp3/internal/tls/SslClient;

    aget-object v0, v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    const/4 v2, 0x0

    invoke-direct {v3, v1, v0, v2}, Lokhttp3/internal/tls/SslClient;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/X509TrustManager;Lokhttp3/internal/tls/SslClient$1;)V

    return-object v3

    .line 145
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public varargs certificateChain(Ljava/security/KeyPair;Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Lokhttp3/internal/tls/SslClient$Builder;
    .locals 0

    .line 98
    iput-object p1, p0, Lokhttp3/internal/tls/SslClient$Builder;->keyPair:Ljava/security/KeyPair;

    .line 99
    iget-object p1, p0, Lokhttp3/internal/tls/SslClient$Builder;->chainCertificates:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Lokhttp3/internal/tls/SslClient$Builder;->chainCertificates:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-object p1, p0, Lokhttp3/internal/tls/SslClient$Builder;->certificates:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs certificateChain(Lokhttp3/internal/tls/HeldCertificate;[Lokhttp3/internal/tls/HeldCertificate;)Lokhttp3/internal/tls/SslClient$Builder;
    .locals 3

    .line 89
    array-length v0, p2

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    .line 90
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 91
    aget-object v2, p2, v1

    iget-object v2, v2, Lokhttp3/internal/tls/HeldCertificate;->certificate:Ljava/security/cert/X509Certificate;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object p2, p1, Lokhttp3/internal/tls/HeldCertificate;->keyPair:Ljava/security/KeyPair;

    iget-object p1, p1, Lokhttp3/internal/tls/HeldCertificate;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p2, p1, v0}, Lokhttp3/internal/tls/SslClient$Builder;->certificateChain(Ljava/security/KeyPair;Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Lokhttp3/internal/tls/SslClient$Builder;

    move-result-object p1

    return-object p1
.end method

.method public keyStoreType(Ljava/lang/String;)Lokhttp3/internal/tls/SslClient$Builder;
    .locals 0

    .line 115
    iput-object p1, p0, Lokhttp3/internal/tls/SslClient$Builder;->keyStoreType:Ljava/lang/String;

    return-object p0
.end method
