.class public Lorg/bouncycastle/jce/spec/IESParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private cipherKeySize:I

.field private derivation:[B

.field private encoding:[B

.field private macKeySize:I


# direct methods
.method public constructor <init>([B[BI)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-void
.end method

.method public constructor <init>([B[BII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    iget-object v2, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    :goto_0
    if-eqz p2, :cond_1

    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    iget-object p1, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    array-length v0, p2

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    :goto_1
    iput p3, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->macKeySize:I

    iput p4, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->cipherKeySize:I

    return-void
.end method


# virtual methods
.method public getCipherKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->cipherKeySize:I

    return v0
.end method

.method public getDerivationV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    return-object v0
.end method

.method public getEncodingV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    return-object v0
.end method

.method public getMacKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;->macKeySize:I

    return v0
.end method
