.class abstract Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;


# static fields
.field private static final E1:I = -0x1f000000

.field private static final E1B:B = -0x1ft

.field private static final E1L:J = 0xe1000000000000L

.field private static final LOOKUP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->generateLookup()[I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->LOOKUP:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asBytes([I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian([I[BI)V

    return-void
.end method

.method static asBytes([J[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/crypto/util/Pack;->longToBigEndian([J[BI)V

    return-void
.end method

.method static asBytes([I)[B
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/util/Pack;->intToBigEndian([I[BI)V

    return-object v0
.end method

.method static asBytes([J)[B
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/util/Pack;->longToBigEndian([J[BI)V

    return-object v0
.end method

.method static asInts([B[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI[I)V

    return-void
.end method

.method static asInts([B)[I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI[I)V

    return-object v0
.end method

.method static asLongs([B[J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToLong([BI[J)V

    return-void
.end method

.method static asLongs([B)[J
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToLong([BI[J)V

    return-object v0
.end method

.method private static generateLookup()[I
    .locals 9

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const/4 v4, 0x7

    const/4 v5, 0x7

    const/4 v6, 0x0

    :goto_1
    if-ltz v5, :cond_1

    const/4 v7, 0x1

    shl-int/2addr v7, v5

    and-int/2addr v7, v3

    if-eqz v7, :cond_0

    const/high16 v7, -0x1f000000

    rsub-int/lit8 v8, v5, 0x7

    ushr-int/2addr v7, v8

    xor-int/2addr v6, v7

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    aput v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static multiply([B[B)V
    .locals 8

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    const/16 v1, 0x10

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    aget-byte v5, p1, v4

    const/4 v6, 0x7

    :goto_1
    if-ltz v6, :cond_2

    const/4 v7, 0x1

    shl-int/2addr v7, v6

    and-int/2addr v7, v5

    if-eqz v7, :cond_0

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([B)B

    move-result v7

    if-eqz v7, :cond_1

    aget-byte v7, v0, v3

    xor-int/lit8 v7, v7, -0x1f

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v2, v3, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static multiply([I[I)V
    .locals 9

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    aget v5, p1, v4

    const/16 v6, 0x1f

    :goto_1
    if-ltz v6, :cond_2

    const/4 v7, 0x1

    shl-int/2addr v7, v6

    and-int/2addr v7, v5

    if-eqz v7, :cond_0

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([I[I)V

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I)I

    move-result v7

    if-eqz v7, :cond_1

    aget v7, v0, v3

    const/high16 v8, -0x1f000000

    xor-int/2addr v7, v8

    aput v7, v0, v3

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v2, v3, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static multiply([J[J)V
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [J

    const/4 v2, 0x0

    aget-wide v3, p0, v2

    aput-wide v3, v1, v2

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aput-wide v4, v1, v3

    new-array v4, v0, [J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    aget-wide v6, p1, v5

    const/16 v8, 0x3f

    :goto_1
    if-ltz v8, :cond_2

    const-wide/16 v9, 0x1

    shl-long/2addr v9, v8

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_0

    invoke-static {v4, v1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J)V

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([J)J

    move-result-wide v9

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    aget-wide v9, v1, v2

    const-wide/high16 v11, 0xe1000000000000L

    xor-long/2addr v9, v11

    aput-wide v9, v1, v2

    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    aget-wide v0, v4, v2

    aput-wide v0, p0, v2

    aget-wide v0, v4, v3

    aput-wide v0, p0, v3

    return-void
.end method

.method static multiplyP([I)V
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget v1, p0, v0

    const/high16 v2, -0x1f000000

    xor-int/2addr v1, v2

    aput v1, p0, v0

    :cond_0
    return-void
.end method

.method static multiplyP([I[I)V
    .locals 2

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I[I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    aget v0, p1, p0

    const/high16 v1, -0x1f000000

    xor-int/2addr v0, v1

    aput v0, p1, p0

    :cond_0
    return-void
.end method

.method static multiplyP8([I)V
    .locals 4

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRightN([II)I

    move-result v0

    const/4 v1, 0x0

    aget v2, p0, v1

    sget-object v3, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->LOOKUP:[I

    ushr-int/lit8 v0, v0, 0x18

    aget v0, v3, v0

    xor-int/2addr v0, v2

    aput v0, p0, v1

    return-void
.end method

.method static multiplyP8([I[I)V
    .locals 3

    const/16 v0, 0x8

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRightN([II[I)I

    move-result p0

    const/4 v0, 0x0

    aget v1, p1, v0

    sget-object v2, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->LOOKUP:[I

    ushr-int/lit8 p0, p0, 0x18

    aget p0, v2, p0

    xor-int/2addr p0, v1

    aput p0, p1, v0

    return-void
.end method

.method static oneAsBytes()[B
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    return-object v0
.end method

.method static oneAsInts()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    return-object v0
.end method

.method static oneAsLongs()[J
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    return-object v0
.end method

.method static shiftRight([B)B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x1

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    and-int/lit8 v0, v2, 0x1

    shl-int/lit8 v0, v0, 0x7

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, v1, 0x1

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p0, v3

    and-int/lit8 v0, v1, 0x1

    shl-int/lit8 v0, v0, 0x7

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    and-int/lit8 v0, v1, 0x1

    shl-int/lit8 v0, v0, 0x7

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, v1, 0x1

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p0, v3

    and-int/lit8 v0, v1, 0x1

    shl-int/lit8 v1, v0, 0x7

    const/16 v0, 0x10

    if-lt v2, v0, :cond_0

    int-to-byte p0, v1

    return p0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static shiftRight([B[B)B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x1

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    and-int/lit8 v0, v2, 0x1

    shl-int/lit8 v0, v0, 0x7

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, v1, 0x1

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    and-int/lit8 v0, v1, 0x1

    shl-int/lit8 v0, v0, 0x7

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    and-int/lit8 v0, v1, 0x1

    shl-int/lit8 v0, v0, 0x7

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, v1, 0x1

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    and-int/lit8 v0, v1, 0x1

    shl-int/lit8 v1, v0, 0x7

    const/16 v0, 0x10

    if-lt v2, v0, :cond_0

    int-to-byte p0, v1

    return p0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static shiftRight([I)I
    .locals 4

    const/4 v0, 0x0

    aget v1, p0, v0

    ushr-int/lit8 v2, v1, 0x1

    aput v2, p0, v0

    shl-int/lit8 v0, v1, 0x1f

    const/4 v1, 0x1

    aget v2, p0, v1

    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    aput v0, p0, v1

    shl-int/lit8 v0, v2, 0x1f

    const/4 v1, 0x2

    aget v2, p0, v1

    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    aput v0, p0, v1

    shl-int/lit8 v0, v2, 0x1f

    const/4 v1, 0x3

    aget v2, p0, v1

    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    aput v0, p0, v1

    shl-int/lit8 p0, v2, 0x1f

    return p0
.end method

.method static shiftRight([I[I)I
    .locals 4

    const/4 v0, 0x0

    aget v1, p0, v0

    ushr-int/lit8 v2, v1, 0x1

    aput v2, p1, v0

    shl-int/lit8 v0, v1, 0x1f

    const/4 v1, 0x1

    aget v2, p0, v1

    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    aput v0, p1, v1

    shl-int/lit8 v0, v2, 0x1f

    const/4 v1, 0x2

    aget v2, p0, v1

    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    aput v0, p1, v1

    shl-int/lit8 v0, v2, 0x1f

    const/4 v1, 0x3

    aget p0, p0, v1

    ushr-int/lit8 v2, p0, 0x1

    or-int/2addr v0, v2

    aput v0, p1, v1

    shl-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method static shiftRight([J)J
    .locals 8

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    ushr-long v4, v1, v3

    aput-wide v4, p0, v0

    const/16 v0, 0x3f

    shl-long/2addr v1, v0

    aget-wide v4, p0, v3

    ushr-long v6, v4, v3

    or-long/2addr v1, v6

    aput-wide v1, p0, v3

    shl-long v0, v4, v0

    return-wide v0
.end method

.method static shiftRight([J[J)J
    .locals 8

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    ushr-long v4, v1, v3

    aput-wide v4, p1, v0

    const/16 v0, 0x3f

    shl-long/2addr v1, v0

    aget-wide v4, p0, v3

    ushr-long v6, v4, v3

    or-long/2addr v1, v6

    aput-wide v1, p1, v3

    shl-long p0, v4, v0

    return-wide p0
.end method

.method static shiftRightN([II)I
    .locals 5

    const/4 v0, 0x0

    aget v1, p0, v0

    rsub-int/lit8 v2, p1, 0x20

    ushr-int v3, v1, p1

    aput v3, p0, v0

    shl-int v0, v1, v2

    const/4 v1, 0x1

    aget v3, p0, v1

    ushr-int v4, v3, p1

    or-int/2addr v0, v4

    aput v0, p0, v1

    shl-int v0, v3, v2

    const/4 v1, 0x2

    aget v3, p0, v1

    ushr-int v4, v3, p1

    or-int/2addr v0, v4

    aput v0, p0, v1

    shl-int v0, v3, v2

    const/4 v1, 0x3

    aget v3, p0, v1

    ushr-int p1, v3, p1

    or-int/2addr p1, v0

    aput p1, p0, v1

    shl-int p0, v3, v2

    return p0
.end method

.method static shiftRightN([II[I)I
    .locals 5

    const/4 v0, 0x0

    aget v1, p0, v0

    rsub-int/lit8 v2, p1, 0x20

    ushr-int v3, v1, p1

    aput v3, p2, v0

    shl-int v0, v1, v2

    const/4 v1, 0x1

    aget v3, p0, v1

    ushr-int v4, v3, p1

    or-int/2addr v0, v4

    aput v0, p2, v1

    shl-int v0, v3, v2

    const/4 v1, 0x2

    aget v3, p0, v1

    ushr-int v4, v3, p1

    or-int/2addr v0, v4

    aput v0, p2, v1

    shl-int v0, v3, v2

    const/4 v1, 0x3

    aget p0, p0, v1

    ushr-int p1, p0, p1

    or-int/2addr p1, v0

    aput p1, p2, v1

    shl-int/2addr p0, v2

    return p0
.end method

.method static xor([B[B)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    return-void
.end method

.method static xor([B[BII)V
    .locals 2

    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_0

    aget-byte p3, p0, v0

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    xor-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p0, v0

    move p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static xor([B[B[B)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    return-void
.end method

.method static xor([I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x3

    aget v1, p0, v0

    aget p1, p1, v0

    xor-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method

.method static xor([I[I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x3

    aget p0, p0, v0

    aget p1, p1, v0

    xor-int/2addr p0, p1

    aput p0, p2, v0

    return-void
.end method

.method static xor([J[J)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method static xor([J[J[J)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    xor-long/2addr p0, v1

    aput-wide p0, p2, v0

    return-void
.end method
