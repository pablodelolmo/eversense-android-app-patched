.class Lorg/bouncycastle/math/ec/IntArray;
.super Ljava/lang/Object;


# static fields
.field private static final INTERLEAVE_TABLE:[I

.field private static final ZEROES:Ljava/lang/String; = "00000000000000000000000000000000"

.field private static final bitLengths:[B


# instance fields
.field private m_ints:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/math/ec/IntArray;->INTERLEAVE_TABLE:[I

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/IntArray;->bitLengths:[B

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x5
        0x10
        0x11
        0x14
        0x15
        0x40
        0x41
        0x44
        0x45
        0x50
        0x51
        0x54
        0x55
        0x100
        0x101
        0x104
        0x105
        0x110
        0x111
        0x114
        0x115
        0x140
        0x141
        0x144
        0x145
        0x150
        0x151
        0x154
        0x155
        0x400
        0x401
        0x404
        0x405
        0x410
        0x411
        0x414
        0x415
        0x440
        0x441
        0x444
        0x445
        0x450
        0x451
        0x454
        0x455
        0x500
        0x501
        0x504
        0x505
        0x510
        0x511
        0x514
        0x515
        0x540
        0x541
        0x544
        0x545
        0x550
        0x551
        0x554
        0x555
        0x1000
        0x1001
        0x1004
        0x1005
        0x1010
        0x1011
        0x1014
        0x1015
        0x1040
        0x1041
        0x1044
        0x1045
        0x1050
        0x1051
        0x1054
        0x1055
        0x1100
        0x1101
        0x1104
        0x1105
        0x1110
        0x1111
        0x1114
        0x1115
        0x1140
        0x1141
        0x1144
        0x1145
        0x1150
        0x1151
        0x1154
        0x1155
        0x1400
        0x1401
        0x1404
        0x1405
        0x1410
        0x1411
        0x1414
        0x1415
        0x1440
        0x1441
        0x1444
        0x1445
        0x1450
        0x1451
        0x1454
        0x1455
        0x1500
        0x1501
        0x1504
        0x1505
        0x1510
        0x1511
        0x1514
        0x1515
        0x1540
        0x1541
        0x1544
        0x1545
        0x1550
        0x1551
        0x1554
        0x1555
        0x4000
        0x4001
        0x4004
        0x4005
        0x4010
        0x4011
        0x4014
        0x4015
        0x4040
        0x4041
        0x4044
        0x4045
        0x4050
        0x4051
        0x4054
        0x4055
        0x4100
        0x4101
        0x4104
        0x4105
        0x4110
        0x4111
        0x4114
        0x4115
        0x4140
        0x4141
        0x4144
        0x4145
        0x4150
        0x4151
        0x4154
        0x4155
        0x4400
        0x4401
        0x4404
        0x4405
        0x4410
        0x4411
        0x4414
        0x4415
        0x4440
        0x4441
        0x4444
        0x4445
        0x4450
        0x4451
        0x4454
        0x4455
        0x4500
        0x4501
        0x4504
        0x4505
        0x4510
        0x4511
        0x4514
        0x4515
        0x4540
        0x4541
        0x4544
        0x4545
        0x4550
        0x4551
        0x4554
        0x4555
        0x5000
        0x5001
        0x5004
        0x5005
        0x5010
        0x5011
        0x5014
        0x5015
        0x5040
        0x5041
        0x5044
        0x5045
        0x5050
        0x5051
        0x5054
        0x5055
        0x5100
        0x5101
        0x5104
        0x5105
        0x5110
        0x5111
        0x5114
        0x5115
        0x5140
        0x5141
        0x5144
        0x5145
        0x5150
        0x5151
        0x5154
        0x5155
        0x5400
        0x5401
        0x5404
        0x5405
        0x5410
        0x5411
        0x5414
        0x5415
        0x5440
        0x5441
        0x5444
        0x5445
        0x5450
        0x5451
        0x5454
        0x5455
        0x5500
        0x5501
        0x5504
        0x5505
        0x5510
        0x5511
        0x5514
        0x5515
        0x5540
        0x5541
        0x5544
        0x5545
        0x5550
        0x5551
        0x5554
        0x5555
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-array p1, v1, [I

    aput v2, p1, v2

    iput-object p1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    aget-byte v3, p1, v2

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v0, 0x3

    const/4 v5, 0x4

    div-int/2addr v4, v5

    new-array v6, v4, [I

    iput-object v6, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    sub-int/2addr v4, v1

    rem-int/2addr v0, v5

    add-int/2addr v0, v3

    if-ge v3, v0, :cond_4

    const/4 v1, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    shl-int/lit8 v1, v1, 0x8

    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v6, v4, -0x1

    aput v1, v0, v4

    move v4, v6

    :cond_4
    :goto_2
    if-ltz v4, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge v0, v5, :cond_5

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v6

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aput v1, v0, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    :goto_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid F2m field value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    return-void
.end method

.method private static add([I[II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static addShiftedByBits([II[IIII)I
    .locals 7

    rsub-int/lit8 v0, p5, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    add-int v3, p3, v1

    aget v3, p2, v3

    add-int v4, p1, v1

    aget v5, p0, v4

    shl-int v6, v3, p5

    or-int/2addr v2, v6

    xor-int/2addr v2, v5

    aput v2, p0, v4

    ushr-int v2, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static addShiftedByBits([I[III)I
    .locals 6

    rsub-int/lit8 v0, p3, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v3, p1, v1

    aget v4, p0, v1

    shl-int v5, v3, p3

    or-int/2addr v2, v5

    xor-int/2addr v2, v4

    aput v2, p0, v1

    ushr-int v2, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private addShiftedByBits(Lorg/bouncycastle/math/ec/IntArray;I)V
    .locals 11

    ushr-int/lit8 v0, p2, 0x5

    and-int/lit8 p2, p2, 0x1f

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/math/ec/IntArray;->addShiftedByWords(Lorg/bouncycastle/math/ec/IntArray;I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    add-int v2, v1, v0

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v4, v4

    if-le v3, v4, :cond_2

    invoke-direct {p0, v3}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    :cond_2
    rsub-int/lit8 v3, p2, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    iget-object v6, p1, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v6, v6, v4

    iget-object v7, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v8, v4, v0

    aget v9, v7, v8

    shl-int v10, v6, p2

    or-int/2addr v5, v10

    xor-int/2addr v5, v9

    aput v5, v7, v8

    ushr-int v5, v6, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget p2, p1, v2

    xor-int/2addr p2, v5

    aput p2, p1, v2

    return-void
.end method

.method private static addShiftedByWords([II[II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p1, v0

    aget v2, p0, v1

    aget v3, p2, v0

    xor-int/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static bitLength(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_1

    ushr-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/IntArray;->bitLengths:[B

    aget-byte p0, v0, p0

    return p0

    :cond_0
    sget-object p0, Lorg/bouncycastle/math/ec/IntArray;->bitLengths:[B

    aget-byte p0, p0, v0

    add-int/lit8 p0, p0, 0x8

    return p0

    :cond_1
    ushr-int/lit8 p0, v0, 0x8

    if-nez p0, :cond_2

    sget-object p0, Lorg/bouncycastle/math/ec/IntArray;->bitLengths:[B

    aget-byte p0, p0, v0

    add-int/lit8 p0, p0, 0x10

    return p0

    :cond_2
    sget-object v0, Lorg/bouncycastle/math/ec/IntArray;->bitLengths:[B

    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, 0x18

    return p0
.end method

.method private static distribute([IIIII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    aget v1, p0, v1

    add-int v2, p1, v0

    aget v3, p0, v2

    xor-int/2addr v3, v1

    aput v3, p0, v2

    add-int v2, p2, v0

    aget v3, p0, v2

    xor-int/2addr v1, v3

    aput v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getWordLength(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x1f

    ushr-int/lit8 p0, p0, 0x5

    return p0
.end method

.method private static interleave(II)I
    .locals 1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    const v0, 0xffff

    and-int/2addr v0, p0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/IntArray;->interleave16(I)I

    move-result v0

    ushr-int/lit8 p0, p0, 0x10

    invoke-static {p0}, Lorg/bouncycastle/math/ec/IntArray;->interleave16(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    or-int/2addr p0, v0

    goto :goto_0

    :cond_0
    return p0
.end method

.method private static interleave([II[IIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    invoke-static {v2, p5}, Lorg/bouncycastle/math/ec/IntArray;->interleave(II)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static interleave16(I)I
    .locals 2

    sget-object v0, Lorg/bouncycastle/math/ec/IntArray;->INTERLEAVE_TABLE:[I

    and-int/lit16 v1, p0, 0xff

    aget v0, v0, v1

    sget-object v1, Lorg/bouncycastle/math/ec/IntArray;->INTERLEAVE_TABLE:[I

    ushr-int/lit8 p0, p0, 0x8

    aget p0, v1, p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method private reduceBitWise(II[I)V
    .locals 3

    :goto_0
    if-lt p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/IntArray;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/IntArray;->flipBit(I)V

    array-length v1, p3

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    aget v2, p3, v1

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/IntArray;->flipBit(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reduceWordWise(II[I)V
    .locals 4

    sub-int/2addr p1, p2

    and-int/lit8 p1, p1, -0x20

    add-int/2addr p1, p2

    :goto_0
    if-lt p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/IntArray;->getWord(I)I

    move-result v0

    if-eqz v0, :cond_0

    sub-int v1, p1, p2

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/math/ec/IntArray;->flipWord(II)V

    array-length v2, p3

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    aget v3, p3, v2

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v0}, Lorg/bouncycastle/math/ec/IntArray;->flipWord(II)V

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x20

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resizedInts(I)[I
    .locals 3

    new-array v0, p1, [I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v2, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static shiftLeft([II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v2, p0, v0

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v1, v3

    aput v1, p0, v0

    ushr-int/lit8 v1, v2, 0x1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public addOneShifted(I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v0, p1

    xor-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public addShiftedByWords(Lorg/bouncycastle/math/ec/IntArray;I)V
    .locals 6

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int v1, v0, p2

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v2, v2

    if-le v1, v2, :cond_1

    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v3, p2, v1

    aget v4, v2, v3

    iget-object v5, p1, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v1

    xor-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearBit(I)V
    .locals 3

    ushr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v1, v0

    not-int p1, p1

    and-int/2addr p1, v2

    aput p1, v1, v0

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/ec/IntArray;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/IntArray;-><init>([I)V

    return-object v0
.end method

.method public degree()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    if-eqz v1, :cond_0

    shl-int/lit8 v0, v0, 0x5

    invoke-static {v1}, Lorg/bouncycastle/math/ec/IntArray;->bitLength(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/bouncycastle/math/ec/IntArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v3, v3, v2

    iget-object v4, p1, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public flipBit(I)V
    .locals 3

    ushr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v1, v0

    xor-int/2addr p1, v2

    aput p1, v1, v0

    return-void
.end method

.method public flipWord(II)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    ushr-int/lit8 v1, p1, 0x5

    if-ge v1, v0, :cond_1

    and-int/lit8 p1, p1, 0x1f

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v0, p1, v1

    xor-int/2addr p2, v0

    aput p2, p1, v1

    return-void

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v3, v2, v1

    shl-int v4, p2, p1

    xor-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v0, v1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, p2, p1

    xor-int/2addr p1, v2

    aput p1, v0, v1

    :cond_1
    return-void
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    return v0
.end method

.method public getUsedLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLengthFrom(I)I

    move-result v0

    return v0
.end method

.method public getUsedLengthFrom(I)I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    return v1

    :cond_0
    aget v3, v0, v1

    if-eqz v3, :cond_2

    :goto_0
    add-int/lit8 p1, p1, -0x1

    aget v1, v0, p1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p1, v2

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    aget v3, v0, p1

    if-eqz v3, :cond_3

    add-int/2addr p1, v2

    return p1

    :cond_3
    if-gtz p1, :cond_2

    return v1
.end method

.method public getWord(I)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    ushr-int/lit8 v1, p1, 0x5

    if-lt v1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    and-int/lit8 p1, p1, 0x1f

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget p1, p1, v1

    return p1

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v2, v1

    ushr-int/2addr v2, p1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v0, v0, v1

    rsub-int/lit8 p1, p1, 0x20

    shl-int p1, v0, p1

    or-int/2addr v2, p1

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v3, v3, v2

    xor-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isZero()Z
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget v3, v0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public modInverse(I[I)Lorg/bouncycastle/math/ec/IntArray;
    .locals 8

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->degree()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/math/ec/IntArray;

    invoke-static {p1}, Lorg/bouncycastle/math/ec/IntArray;->getWordLength(I)I

    move-result v3

    new-instance v4, Lorg/bouncycastle/math/ec/IntArray;

    invoke-direct {v4, v3}, Lorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    invoke-virtual {v4, p1}, Lorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Lorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    aget v5, p2, p1

    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    array-length v5, p2

    if-le v5, v1, :cond_1

    aget v1, p2, v1

    invoke-virtual {v4, v1}, Lorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    const/4 v1, 0x2

    aget p2, p2, v1

    invoke-virtual {v4, p2}, Lorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    :cond_1
    new-instance p2, Lorg/bouncycastle/math/ec/IntArray;

    invoke-direct {p2, v3}, Lorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    new-instance p1, Lorg/bouncycastle/math/ec/IntArray;

    invoke-direct {p1, v3}, Lorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/IntArray;->degree()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_2

    neg-int v0, v0

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    :cond_2
    invoke-direct {v2, v4, v0}, Lorg/bouncycastle/math/ec/IntArray;->addShiftedByBits(Lorg/bouncycastle/math/ec/IntArray;I)V

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/IntArray;->degree()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p2, p1, v0}, Lorg/bouncycastle/math/ec/IntArray;->addShiftedByBits(Lorg/bouncycastle/math/ec/IntArray;I)V

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public multiply(Lorg/bouncycastle/math/ec/IntArray;I)Lorg/bouncycastle/math/ec/IntArray;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/math/ec/IntArray;

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lorg/bouncycastle/math/ec/IntArray;

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    return-object v0

    :cond_1
    if-le v0, v2, :cond_2

    move-object/from16 v3, p0

    move v4, v0

    move v0, v2

    move-object/from16 v2, p1

    goto :goto_0

    :cond_2
    move-object/from16 v3, p1

    move v4, v2

    move-object/from16 v2, p0

    :goto_0
    const/4 v8, 0x0

    if-ne v0, v1, :cond_6

    iget-object v2, v2, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v2, v8

    iget-object v3, v3, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/2addr v0, v4

    new-array v0, v0, [I

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_3

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/math/ec/IntArray;->add([I[II)V

    :cond_3
    const/4 v5, 0x1

    :goto_1
    ushr-int/2addr v2, v1

    if-eqz v2, :cond_5

    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_4

    invoke-static {v0, v3, v4, v5}, Lorg/bouncycastle/math/ec/IntArray;->addShiftedByBits([I[III)I

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    new-instance v1, Lorg/bouncycastle/math/ec/IntArray;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/IntArray;-><init>([I)V

    return-object v1

    :cond_6
    const/16 v5, 0x8

    if-gt v0, v5, :cond_7

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    const/4 v5, 0x2

    const/4 v7, 0x2

    :goto_2
    shl-int v9, v1, v7

    const/16 v10, 0x20

    ushr-int v11, v10, v7

    iget-object v5, v3, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v6, v4, -0x1

    aget v5, v5, v6

    rsub-int/lit8 v6, v11, 0x21

    ushr-int/2addr v5, v6

    if-eqz v5, :cond_8

    add-int/lit8 v5, v4, 0x1

    move v12, v5

    goto :goto_3

    :cond_8
    move v12, v4

    :goto_3
    add-int v15, v12, v0

    shl-int v5, v15, v9

    new-array v14, v5, [I

    iget-object v3, v3, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v3, v8, v14, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v2, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    const/4 v3, 0x0

    move-object v4, v14

    move v5, v12

    move v6, v0

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/IntArray;->interleave([II[IIII)V

    shl-int v2, v1, v9

    new-array v3, v2, [I

    const/4 v4, 0x1

    :goto_4
    array-length v5, v3

    if-ge v4, v5, :cond_9

    add-int/lit8 v5, v4, -0x1

    aget v5, v3, v5

    add-int/2addr v5, v15

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    sub-int/2addr v2, v1

    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v0, :cond_b

    add-int v6, v12, v5

    aget v6, v14, v6

    ushr-int/2addr v6, v4

    and-int/2addr v6, v2

    if-eqz v6, :cond_a

    aget v6, v3, v6

    add-int/2addr v6, v5

    invoke-static {v14, v6, v14, v12}, Lorg/bouncycastle/math/ec/IntArray;->addShiftedByWords([II[II)V

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    add-int/2addr v4, v9

    if-lt v4, v10, :cond_e

    array-length v0, v3

    ushr-int/lit8 v2, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-le v0, v1, :cond_d

    if-ne v0, v2, :cond_c

    sub-int/2addr v10, v11

    aget v4, v3, v1

    aget v16, v3, v2

    move-object v13, v14

    move-object v5, v14

    move v14, v4

    move v6, v15

    move-object v15, v5

    move/from16 v17, v6

    move/from16 v18, v10

    invoke-static/range {v13 .. v18}, Lorg/bouncycastle/math/ec/IntArray;->addShiftedByBits([II[IIII)I

    ushr-int/lit8 v2, v2, 0x1

    move-object v14, v5

    move v15, v6

    goto :goto_7

    :cond_c
    move-object v5, v14

    move v6, v15

    aget v4, v3, v2

    sub-int v7, v0, v2

    aget v7, v3, v7

    aget v9, v3, v0

    invoke-static {v5, v4, v7, v9, v6}, Lorg/bouncycastle/math/ec/IntArray;->distribute([IIIII)V

    goto :goto_7

    :cond_d
    move-object v5, v14

    move v6, v15

    new-instance v0, Lorg/bouncycastle/math/ec/IntArray;

    invoke-direct {v0, v6}, Lorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    aget v1, v3, v1

    iget-object v2, v0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v5, v1, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_e
    move-object v5, v14

    move v6, v15

    invoke-static {v5, v12}, Lorg/bouncycastle/math/ec/IntArray;->shiftLeft([II)I

    goto :goto_5
.end method

.method public reduce(I[I)V
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    add-int/lit8 v1, p1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    shl-int/lit8 v2, p1, 0x1

    add-int/lit8 v2, v2, -0x2

    shl-int/lit8 v3, v0, 0x5

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p2

    sub-int/2addr v3, v4

    aget v3, p2, v3

    add-int/lit8 v5, p1, -0x1f

    if-ge v3, v5, :cond_1

    invoke-direct {p0, v2, p1, p2}, Lorg/bouncycastle/math/ec/IntArray;->reduceWordWise(II[I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2, p1, p2}, Lorg/bouncycastle/math/ec/IntArray;->reduceBitWise(II[I)V

    :goto_0
    and-int/lit8 p1, p1, 0x1f

    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v2, v1, -0x1

    aget v3, p2, v2

    shl-int p1, v4, p1

    sub-int/2addr p1, v4

    and-int/2addr p1, v3

    aput p1, p2, v2

    :cond_2
    if-le v0, v1, :cond_3

    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    :cond_3
    return-void
.end method

.method public setBit(I)V
    .locals 3

    ushr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v1, v0

    or-int/2addr p1, v2

    aput p1, v1, v0

    return-void
.end method

.method public square(I)Lorg/bouncycastle/math/ec/IntArray;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    shl-int/lit8 p1, p1, 0x1

    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    ushr-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    add-int/lit8 v3, v1, 0x1

    const v4, 0xffff

    and-int/2addr v4, v2

    invoke-static {v4}, Lorg/bouncycastle/math/ec/IntArray;->interleave16(I)I

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v3, 0x1

    ushr-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Lorg/bouncycastle/math/ec/IntArray;->interleave16(I)I

    move-result v2

    aput v2, v0, v3

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/math/ec/IntArray;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/IntArray;-><init>([I)V

    return-object p1
.end method

.method public testBit(I)Z
    .locals 3

    ushr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v0, v2, v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public testBitZero()Z
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v0, v0, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 12

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    const/4 v3, 0x4

    new-array v4, v3, [B

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x1

    if-ltz v7, :cond_3

    mul-int/lit8 v11, v7, 0x8

    ushr-int v11, v1, v11

    int-to-byte v11, v11

    if-nez v8, :cond_1

    if-eqz v11, :cond_2

    :cond_1
    add-int/lit8 v8, v9, 0x1

    aput-byte v11, v4, v9

    move v9, v8

    const/4 v8, 0x1

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_3
    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v9

    new-array v1, v2, [B

    :goto_1
    if-ge v6, v9, :cond_4

    aget-byte v2, v4, v6

    aput-byte v2, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x2

    :goto_2
    if-ltz v0, :cond_6

    const/4 v2, 0x3

    :goto_3
    if-ltz v2, :cond_5

    add-int/lit8 v3, v9, 0x1

    iget-object v4, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v0

    mul-int/lit8 v6, v2, 0x8

    ushr-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    add-int/lit8 v2, v2, -0x1

    move v9, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v10, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    const-string v4, "00000000000000000000000000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
