.class public Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private extraInfo:[B

.field private keySize:I

.field private z:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;I[B[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;I[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput p2, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->keySize:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->z:[B

    iput-object p4, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->extraInfo:[B

    return-void
.end method


# virtual methods
.method public getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getExtraInfo()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->extraInfo:[B

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->keySize:I

    return v0
.end method

.method public getZ()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->z:[B

    return-object v0
.end method
