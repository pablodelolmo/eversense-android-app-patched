.class public abstract Lorg/bouncycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;


# static fields
.field private static DEFAULT_WINDOW_SIZE_CUTOFFS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCompactNaf(Ljava/math/BigInteger;)[I
    .locals 10

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'k\' must have bitlength < 2^16"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v3, v2, 0x1

    shr-int/2addr v3, v0

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-gt v5, v2, :cond_3

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-ne v8, v9, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    if-eqz v9, :cond_2

    const/4 v8, -0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    :goto_1
    add-int/lit8 v9, v6, 0x1

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    aput v7, v3, v6

    move v6, v9

    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    array-length p0, v3

    if-le p0, v6, :cond_4

    invoke-static {v3, v6}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v3

    :cond_4
    return-object v3
.end method

.method public static generateCompactWindowNaf(ILjava/math/BigInteger;)[I
    .locals 12

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object p0

    return-object p0

    :cond_0
    if-lt p0, v0, :cond_a

    const/16 v0, 0x10

    if-le p0, v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/2addr v1, v0

    if-eqz v1, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'k\' must have bitlength < 2^16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    div-int/2addr v1, p0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [I

    shl-int v3, v2, p0

    add-int/lit8 v4, v3, -0x1

    ushr-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    const/4 p1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-gt p1, v10, :cond_8

    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-ne v10, v8, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    and-int/2addr v10, v4

    if-eqz v8, :cond_4

    add-int/lit8 v10, v10, 0x1

    :cond_4
    and-int v8, v10, v5

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_6

    sub-int/2addr v10, v3

    :cond_6
    if-lez v9, :cond_7

    add-int/lit8 p1, p1, -0x1

    :cond_7
    add-int/lit8 v11, v9, 0x1

    shl-int/2addr v10, v0

    or-int/2addr p1, v10

    aput p1, v1, v9

    move p1, p0

    move v9, v11

    goto :goto_0

    :cond_8
    array-length p0, v1

    if-le p0, v9, :cond_9

    invoke-static {v1, v9}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v1

    :cond_9
    return-object v1

    :cond_a
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'width\' must be in the range [2, 16]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 12

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-gtz v5, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-gtz v5, :cond_2

    if-gtz v2, :cond_2

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    array-length p0, v0

    if-le p0, v4, :cond_1

    invoke-static {v0, v4}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    add-int/2addr v5, v2

    and-int/lit8 v5, v5, 0x7

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    add-int/2addr v6, v3

    and-int/lit8 v6, v6, 0x7

    and-int/lit8 v7, v5, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eqz v7, :cond_3

    and-int/lit8 v10, v5, 0x2

    sub-int/2addr v7, v10

    add-int v10, v5, v7

    if-ne v10, v8, :cond_3

    and-int/lit8 v10, v6, 0x3

    if-ne v10, v9, :cond_3

    neg-int v7, v7

    :cond_3
    and-int/lit8 v10, v6, 0x1

    if-eqz v10, :cond_4

    and-int/lit8 v11, v6, 0x2

    sub-int/2addr v10, v11

    add-int/2addr v6, v10

    if-ne v6, v8, :cond_4

    and-int/lit8 v5, v5, 0x3

    if-ne v5, v9, :cond_4

    neg-int v10, v10

    :cond_4
    shl-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v7, 0x1

    if-ne v5, v6, :cond_5

    rsub-int/lit8 v2, v2, 0x1

    :cond_5
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v10, 0x1

    if-ne v5, v6, :cond_6

    rsub-int/lit8 v3, v3, 0x1

    :cond_6
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v6, v7, 0x4

    and-int/lit8 v7, v10, 0xf

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    move v4, v5

    goto :goto_0
.end method

.method public static generateNaf(Ljava/math/BigInteger;)[B
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int/2addr v2, v0

    new-array v3, v2, [B

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    add-int/lit8 v7, v4, -0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    if-eqz v6, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    int-to-byte v5, v5

    aput-byte v5, v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public static generateWindowNaf(ILjava/math/BigInteger;)[B
    .locals 10

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/ec/WNafUtil;->generateNaf(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0

    :cond_0
    if-lt p0, v0, :cond_9

    const/16 v0, 0x8

    if-le p0, v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    shl-int v2, v1, p0

    add-int/lit8 v3, v2, -0x1

    ushr-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    move-object v6, p1

    const/4 p1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-gt p1, v9, :cond_7

    invoke-virtual {v6, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-ne v9, v7, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6, p1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    and-int/2addr v9, v3

    if-eqz v7, :cond_3

    add-int/lit8 v9, v9, 0x1

    :cond_3
    and-int v7, v9, v4

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_5

    sub-int/2addr v9, v2

    :cond_5
    if-lez v8, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    add-int/2addr v8, p1

    add-int/lit8 p1, v8, 0x1

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    move v8, p1

    move p1, p0

    goto :goto_0

    :cond_7
    array-length p0, v0

    if-le p0, v8, :cond_8

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v0

    :cond_8
    return-object v0

    :cond_9
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'width\' must be in the range [2, 8]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getWNafPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    return-object p0
.end method

.method public static getWindowSize(I)I
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[I)I

    move-result p0

    return p0
.end method

.method public static getWindowSize(I[I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    if-ge p0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 7

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    new-array v2, v4, [Lorg/bouncycastle/math/ec/ECPoint;

    aput-object p0, v2, v3

    :cond_0
    array-length v5, v2

    add-int/lit8 p1, p1, -0x2

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    shl-int p1, v4, p1

    if-ge v5, p1, :cond_3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getTwiceP()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    if-nez v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setTwiceP(Lorg/bouncycastle/math/ec/ECPoint;)V

    :cond_1
    invoke-static {v2, p1}, Lorg/bouncycastle/math/ec/WNafUtil;->resizeTable([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    :goto_0
    if-ge v5, p1, :cond_2

    add-int/lit8 v6, v5, -0x1

    aget-object v6, v2, v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    :cond_3
    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/bouncycastle/math/ec/ECPoint;)V

    if-eqz p2, :cond_7

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    if-nez p2, :cond_4

    new-array p2, p1, [Lorg/bouncycastle/math/ec/ECPoint;

    goto :goto_1

    :cond_4
    array-length v3, p2

    if-ge v3, p1, :cond_5

    invoke-static {p2, p1}, Lorg/bouncycastle/math/ec/WNafUtil;->resizeTable([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    :cond_5
    :goto_1
    if-ge v3, p1, :cond_6

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    aput-object v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v1, p2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/bouncycastle/math/ec/ECPoint;)V

    :cond_7
    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->setPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/PreCompInfo;)V

    return-object v1
.end method

.method private static resizeTable([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2

    new-array p1, p1, [Lorg/bouncycastle/math/ec/ECPoint;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static trim([BI)[B
    .locals 2

    new-array p1, p1, [B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static trim([II)[I
    .locals 2

    new-array p1, p1, [I

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
