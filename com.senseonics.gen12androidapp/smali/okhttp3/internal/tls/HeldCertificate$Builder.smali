.class public final Lokhttp3/internal/tls/HeldCertificate$Builder;
.super Ljava/lang/Object;
.source "HeldCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/tls/HeldCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private altNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final duration:J

.field private hostname:Ljava/lang/String;

.field private issuedBy:Lokhttp3/internal/tls/HeldCertificate;

.field private keyPair:Ljava/security/KeyPair;

.field private maxIntermediateCas:I

.field private serialNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x5265c00

    .line 59
    iput-wide v0, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->duration:J

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->altNames:Ljava/util/List;

    const-string v0, "1"

    .line 62
    iput-object v0, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->serialNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lokhttp3/internal/tls/HeldCertificate;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->keyPair:Ljava/security/KeyPair;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->keyPair:Ljava/security/KeyPair;

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lokhttp3/internal/tls/HeldCertificate$Builder;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 118
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->hostname:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 119
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->hostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_1
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 125
    :goto_1
    iget-object v2, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->issuedBy:Lokhttp3/internal/tls/HeldCertificate;

    if-eqz v2, :cond_2

    .line 126
    iget-object v2, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->issuedBy:Lokhttp3/internal/tls/HeldCertificate;

    iget-object v2, v2, Lokhttp3/internal/tls/HeldCertificate;->keyPair:Ljava/security/KeyPair;

    .line 127
    iget-object v3, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->issuedBy:Lokhttp3/internal/tls/HeldCertificate;

    iget-object v3, v3, Lokhttp3/internal/tls/HeldCertificate;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v2, v0

    move-object v3, v1

    .line 134
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 135
    new-instance v6, Lorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v6}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    .line 136
    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->serialNumber:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 137
    invoke-virtual {v6, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    .line 138
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    .line 139
    new-instance v3, Ljava/util/Date;

    const-wide/32 v7, 0x5265c00

    add-long/2addr v4, v7

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v3}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    .line 140
    invoke-virtual {v6, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    .line 141
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    const-string v1, "SHA256WithRSAEncryption"

    .line 142
    invoke-virtual {v6, v1}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    .line 144
    iget v1, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->maxIntermediateCas:I

    const/4 v3, 0x1

    if-lez v1, :cond_3

    .line 145
    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    iget v5, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->maxIntermediateCas:I

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/x509/BasicConstraints;-><init>(I)V

    invoke-virtual {v6, v1, v3, v4}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 149
    :cond_3
    iget-object v1, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->altNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 150
    iget-object v1, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->altNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v4, 0x0

    .line 151
    iget-object v5, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->altNames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_3
    if-ge v4, v5, :cond_5

    .line 152
    iget-object v7, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->altNames:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 153
    invoke-static {v7}, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x7

    goto :goto_4

    :cond_4
    const/4 v8, 0x2

    .line 156
    :goto_4
    new-instance v9, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v9, v8, v7}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    aput-object v9, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 158
    :cond_5
    sget-object v4, Lorg/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v6, v4, v3, v5}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 163
    :cond_6
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    const-string v2, "BC"

    .line 162
    invoke-virtual {v6, v1, v2}, Lorg/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 164
    new-instance v2, Lokhttp3/internal/tls/HeldCertificate;

    invoke-direct {v2, v1, v0}, Lokhttp3/internal/tls/HeldCertificate;-><init>(Ljava/security/cert/X509Certificate;Ljava/security/KeyPair;)V

    return-object v2
.end method

.method public ca(I)Lokhttp3/internal/tls/HeldCertificate$Builder;
    .locals 0

    .line 100
    iput p1, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->maxIntermediateCas:I

    return-object p0
.end method

.method public commonName(Ljava/lang/String;)Lokhttp3/internal/tls/HeldCertificate$Builder;
    .locals 0

    .line 77
    iput-object p1, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "RSA"

    const-string v1, "BC"

    .line 168
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 170
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public issuedBy(Lokhttp3/internal/tls/HeldCertificate;)Lokhttp3/internal/tls/HeldCertificate$Builder;
    .locals 0

    .line 91
    iput-object p1, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->issuedBy:Lokhttp3/internal/tls/HeldCertificate;

    return-object p0
.end method

.method public keyPair(Ljava/security/KeyPair;)Lokhttp3/internal/tls/HeldCertificate$Builder;
    .locals 0

    .line 82
    iput-object p1, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->keyPair:Ljava/security/KeyPair;

    return-object p0
.end method

.method public serialNumber(Ljava/lang/String;)Lokhttp3/internal/tls/HeldCertificate$Builder;
    .locals 0

    .line 68
    iput-object p1, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->serialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public subjectAlternativeName(Ljava/lang/String;)Lokhttp3/internal/tls/HeldCertificate$Builder;
    .locals 1

    .line 109
    iget-object v0, p0, Lokhttp3/internal/tls/HeldCertificate$Builder;->altNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
