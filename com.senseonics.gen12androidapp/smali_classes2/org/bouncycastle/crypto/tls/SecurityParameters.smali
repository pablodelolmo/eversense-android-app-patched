.class public Lorg/bouncycastle/crypto/tls/SecurityParameters;
.super Ljava/lang/Object;


# instance fields
.field cipherSuite:I

.field clientRandom:[B

.field compressionAlgorithm:S

.field entity:I

.field masterSecret:[B

.field maxFragmentLength:S

.field prfAlgorithm:I

.field serverRandom:[B

.field truncatedHMac:Z

.field verifyDataLength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    :cond_0
    return-void
.end method

.method copySessionParametersFrom(Lorg/bouncycastle/crypto/tls/SecurityParameters;)V
    .locals 1

    iget v0, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    iget v0, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    iget-short v0, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    iget v0, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iget v0, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    iget-object p1, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    return-void
.end method

.method public getCipherSuite()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    return v0
.end method

.method public getClientRandom()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    return-object v0
.end method

.method public getCompressionAlgorithm()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    return v0
.end method

.method public getEntity()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    return v0
.end method

.method public getMasterSecret()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    return-object v0
.end method

.method public getPrfAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    return v0
.end method

.method public getServerRandom()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    return-object v0
.end method

.method public getVerifyDataLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    return v0
.end method
