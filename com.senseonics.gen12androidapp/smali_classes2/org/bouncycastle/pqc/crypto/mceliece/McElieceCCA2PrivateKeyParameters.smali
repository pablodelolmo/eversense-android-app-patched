.class public Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;


# instance fields
.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

.field private goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

.field private k:I

.field private n:I

.field private oid:Ljava/lang/String;

.field private p:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

.field private qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p9}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->oid:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->k:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object p6, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->p:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iput-object p7, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iput-object p8, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II[B[B[B[B[[BLorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p9}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->oid:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->k:I

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {p1, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {p1, p2, p5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {p1, p6}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->p:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {p1, p7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    array-length p1, p8

    new-array p1, p1, [Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    const/4 p1, 0x0

    :goto_0
    array-length p2, p8

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance p3, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    aget-object p5, p8, p1

    invoke-direct {p3, p4, p5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getField()Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public getGoppaPoly()Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getH()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->h:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getK()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->k:I

    return v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->n:I

    return v0
.end method

.method public getOIDString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getP()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->p:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getQInv()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getT()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getDegree()I

    move-result v0

    return v0
.end method