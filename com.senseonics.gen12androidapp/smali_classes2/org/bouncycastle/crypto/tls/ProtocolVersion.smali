.class public final Lorg/bouncycastle/crypto/tls/ProtocolVersion;
.super Ljava/lang/Object;


# static fields
.field public static final DTLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final DTLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final SSLv3:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;


# instance fields
.field private name:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const-string v1, "SSL 3.0"

    const/16 v2, 0x300

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const-string v1, "TLS 1.0"

    const/16 v2, 0x301

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const-string v1, "TLS 1.1"

    const/16 v2, 0x302

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const-string v1, "TLS 1.2"

    const/16 v2, 0x303

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const-string v1, "DTLS 1.0"

    const v2, 0xfeff

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const-string v1, "DTLS 1.2"

    const v2, 0xfefd

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    and-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->name:Ljava/lang/String;

    return-void
.end method

.method public static get(II)Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0xfe

    if-eq p0, v0, :cond_1

    goto :goto_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object p0

    :cond_1
    :goto_0
    const/16 p0, 0xfd

    if-eq p1, p0, :cond_3

    const/16 p0, 0xff

    if-eq p1, p0, :cond_2

    :goto_1
    new-instance p0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x2f

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    sget-object p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object p0

    :cond_3
    sget-object p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEquivalentTLSVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-ne p0, v0, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getFullVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->version:I

    return v0
.end method

.method public isDTLS()Z
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-gtz p1, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    if-ltz p1, :cond_1

    return v1
.end method

.method public isLaterVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-lez p1, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    if-gez p1, :cond_1

    return v1
.end method

.method public isSSL()Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->name:Ljava/lang/String;

    return-object v0
.end method
