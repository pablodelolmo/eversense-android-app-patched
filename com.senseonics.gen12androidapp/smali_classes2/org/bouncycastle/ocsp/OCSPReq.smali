.class public Lorg/bouncycastle/ocsp/OCSPReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/cert/X509Extension;


# instance fields
.field private req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/ocsp/OCSPReq;-><init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/OCSPRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/ocsp/OCSPReq;-><init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V

    return-void
.end method

.method private getCertList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/ocsp/OCSPUtil;->createX509CertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v3, p0, Lorg/bouncycastle/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ocsp/Signature;->getCerts()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/ocsp/OCSPException;

    const-string v1, "can\'t re-encode certificate!"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lorg/bouncycastle/ocsp/OCSPException;

    const-string v1, "can\'t re-encode certificate!"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_0
    return-object v0

    :catch_2
    move-exception p1

    new-instance v0, Lorg/bouncycastle/ocsp/OCSPException;

    const-string v1, "can\'t get certificate factory."

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/ocsp/OCSPReq;->getRequestExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v4

    if-ne p1, v4, :cond_0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getCertificates(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertStore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/bouncycastle/ocsp/OCSPException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {p0, p2}, Lorg/bouncycastle/ocsp/OCSPReq;->getCertList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/ocsp/OCSPUtil;->createCertStoreInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/ocsp/OCSPException;

    const-string v0, "can\'t setup the CertStore"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public getCerts(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/ocsp/OCSPReq;->getCertList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/ocsp/OCSPReq;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/bouncycastle/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/ocsp/OCSPReq;->getRequestExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/ocsp/OCSPReq;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequestExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getRequestExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    return-object v0
.end method

.method public getRequestList()[Lorg/bouncycastle/ocsp/Req;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getRequestList()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/ocsp/Req;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    new-instance v3, Lorg/bouncycastle/ocsp/Req;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ocsp/Request;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/Request;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/ocsp/Req;-><init>(Lorg/bouncycastle/asn1/ocsp/Request;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getRequestorName()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getRequestorName()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/Signature;->getSignature()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgOID()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/Signature;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTBSRequest()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPException;

    const-string v2, "problem encoding tbsRequest"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/ocsp/OCSPReq;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSigned()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lorg/bouncycastle/ocsp/OCSPException;

    const-string p2, "attempt to verify signature on unsigned object"

    invoke-direct {p1, p2}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/ocsp/OCSPReq;->getSignatureAlgOID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/bouncycastle/ocsp/OCSPUtil;->createSignatureInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/ocsp/OCSPReq;->getSignature()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/ocsp/OCSPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception processing sig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1
.end method
