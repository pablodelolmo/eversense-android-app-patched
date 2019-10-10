.class public final Lokhttp3/internal/tls/SslClient;
.super Ljava/lang/Object;
.source "SslClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/tls/SslClient$Builder;
    }
.end annotation


# static fields
.field private static localhost:Lokhttp3/internal/tls/SslClient;


# instance fields
.field public final socketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field public final sslContext:Ljavax/net/ssl/SSLContext;

.field public final trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method private constructor <init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/X509TrustManager;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lokhttp3/internal/tls/SslClient;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 51
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/tls/SslClient;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 52
    iput-object p2, p0, Lokhttp3/internal/tls/SslClient;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method synthetic constructor <init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/X509TrustManager;Lokhttp3/internal/tls/SslClient$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/tls/SslClient;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/X509TrustManager;)V

    return-void
.end method

.method public static declared-synchronized localhost()Lokhttp3/internal/tls/SslClient;
    .locals 6

    const-class v0, Lokhttp3/internal/tls/SslClient;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lokhttp3/internal/tls/SslClient;->localhost:Lokhttp3/internal/tls/SslClient;

    if-eqz v1, :cond_0

    sget-object v1, Lokhttp3/internal/tls/SslClient;->localhost:Lokhttp3/internal/tls/SslClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 61
    :cond_0
    :try_start_1
    new-instance v1, Lokhttp3/internal/tls/HeldCertificate$Builder;

    invoke-direct {v1}, Lokhttp3/internal/tls/HeldCertificate$Builder;-><init>()V

    const-string v2, "1"

    .line 62
    invoke-virtual {v1, v2}, Lokhttp3/internal/tls/HeldCertificate$Builder;->serialNumber(Ljava/lang/String;)Lokhttp3/internal/tls/HeldCertificate$Builder;

    move-result-object v1

    const-string v2, "localhost"

    .line 63
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/internal/tls/HeldCertificate$Builder;->commonName(Ljava/lang/String;)Lokhttp3/internal/tls/HeldCertificate$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lokhttp3/internal/tls/HeldCertificate$Builder;->build()Lokhttp3/internal/tls/HeldCertificate;

    move-result-object v1

    .line 66
    new-instance v2, Lokhttp3/internal/tls/SslClient$Builder;

    invoke-direct {v2}, Lokhttp3/internal/tls/SslClient$Builder;-><init>()V

    iget-object v3, v1, Lokhttp3/internal/tls/HeldCertificate;->keyPair:Ljava/security/KeyPair;

    iget-object v4, v1, Lokhttp3/internal/tls/HeldCertificate;->certificate:Ljava/security/cert/X509Certificate;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    .line 67
    invoke-virtual {v2, v3, v4, v5}, Lokhttp3/internal/tls/SslClient$Builder;->certificateChain(Ljava/security/KeyPair;Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Lokhttp3/internal/tls/SslClient$Builder;

    move-result-object v2

    iget-object v1, v1, Lokhttp3/internal/tls/HeldCertificate;->certificate:Ljava/security/cert/X509Certificate;

    .line 68
    invoke-virtual {v2, v1}, Lokhttp3/internal/tls/SslClient$Builder;->addTrustedCertificate(Ljava/security/cert/X509Certificate;)Lokhttp3/internal/tls/SslClient$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lokhttp3/internal/tls/SslClient$Builder;->build()Lokhttp3/internal/tls/SslClient;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/tls/SslClient;->localhost:Lokhttp3/internal/tls/SslClient;

    .line 71
    sget-object v1, Lokhttp3/internal/tls/SslClient;->localhost:Lokhttp3/internal/tls/SslClient;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    .line 73
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 56
    monitor-exit v0

    throw v1
.end method
