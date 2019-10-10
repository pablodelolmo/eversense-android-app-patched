.class public Ljcifs/util/DES;
.super Ljava/lang/Object;
.source "DES.java"


# static fields
.field private static SP1:[I

.field private static SP2:[I

.field private static SP3:[I

.field private static SP4:[I

.field private static SP5:[I

.field private static SP6:[I

.field private static SP7:[I

.field private static SP8:[I

.field private static bigbyte:[I

.field private static bytebit:[B

.field private static pc1:[B

.field private static pc2:[B

.field private static totrot:[I


# instance fields
.field private decryptKeys:[I

.field private encryptKeys:[I

.field private tempInts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    .line 344
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljcifs/util/DES;->bytebit:[B

    const/16 v0, 0x18

    .line 348
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljcifs/util/DES;->bigbyte:[I

    const/16 v0, 0x38

    .line 356
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Ljcifs/util/DES;->pc1:[B

    const/16 v0, 0x10

    .line 366
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Ljcifs/util/DES;->totrot:[I

    const/16 v0, 0x30

    .line 370
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Ljcifs/util/DES;->pc2:[B

    const/16 v0, 0x40

    .line 381
    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Ljcifs/util/DES;->SP1:[I

    .line 399
    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Ljcifs/util/DES;->SP2:[I

    .line 417
    new-array v1, v0, [I

    fill-array-data v1, :array_7

    sput-object v1, Ljcifs/util/DES;->SP3:[I

    .line 435
    new-array v1, v0, [I

    fill-array-data v1, :array_8

    sput-object v1, Ljcifs/util/DES;->SP4:[I

    .line 453
    new-array v1, v0, [I

    fill-array-data v1, :array_9

    sput-object v1, Ljcifs/util/DES;->SP5:[I

    .line 471
    new-array v1, v0, [I

    fill-array-data v1, :array_a

    sput-object v1, Ljcifs/util/DES;->SP6:[I

    .line 489
    new-array v1, v0, [I

    fill-array-data v1, :array_b

    sput-object v1, Ljcifs/util/DES;->SP7:[I

    .line 507
    new-array v0, v0, [I

    fill-array-data v0, :array_c

    sput-object v0, Ljcifs/util/DES;->SP8:[I

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x800000
        0x400000
        0x200000
        0x100000
        0x80000
        0x40000
        0x20000
        0x10000
        0x8000
        0x4000
        0x2000
        0x1000
        0x800
        0x400
        0x200
        0x100
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 1
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x0t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x1bt
        0x13t
        0xbt
        0x3t
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
        0xf
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1b
        0x1c
    .end array-data

    :array_4
    .array-data 1
        0xdt
        0x10t
        0xat
        0x17t
        0x0t
        0x4t
        0x2t
        0x1bt
        0xet
        0x5t
        0x14t
        0x9t
        0x16t
        0x12t
        0xbt
        0x3t
        0x19t
        0x7t
        0xft
        0x6t
        0x1at
        0x13t
        0xct
        0x1t
        0x28t
        0x33t
        0x1et
        0x24t
        0x2et
        0x36t
        0x1dt
        0x27t
        0x32t
        0x2ct
        0x20t
        0x2ft
        0x2bt
        0x30t
        0x26t
        0x37t
        0x21t
        0x34t
        0x2dt
        0x29t
        0x31t
        0x23t
        0x1ct
        0x1ft
    .end array-data

    :array_5
    .array-data 4
        0x1010400
        0x0
        0x10000
        0x1010404
        0x1010004
        0x10404
        0x4
        0x10000
        0x400
        0x1010400
        0x1010404
        0x400
        0x1000404
        0x1010004
        0x1000000
        0x4
        0x404
        0x1000400
        0x1000400
        0x10400
        0x10400
        0x1010000
        0x1010000
        0x1000404
        0x10004
        0x1000004
        0x1000004
        0x10004
        0x0
        0x404
        0x10404
        0x1000000
        0x10000
        0x1010404
        0x4
        0x1010000
        0x1010400
        0x1000000
        0x1000000
        0x400
        0x1010004
        0x10000
        0x10400
        0x1000004
        0x400
        0x4
        0x1000404
        0x10404
        0x1010404
        0x10004
        0x1010000
        0x1000404
        0x1000004
        0x404
        0x10404
        0x1010400
        0x404
        0x1000400
        0x1000400
        0x0
        0x10004
        0x10400
        0x0
        0x1010004
    .end array-data

    :array_6
    .array-data 4
        -0x7fef7fe0
        -0x7fff8000
        0x8000
        0x108020
        0x100000
        0x20
        -0x7fefffe0
        -0x7fff7fe0
        -0x7fffffe0
        -0x7fef7fe0
        -0x7fef8000
        -0x80000000
        -0x7fff8000
        0x100000
        0x20
        -0x7fefffe0
        0x108000
        0x100020
        -0x7fff7fe0
        0x0
        -0x80000000
        0x8000
        0x108020
        -0x7ff00000
        0x100020
        -0x7fffffe0
        0x0
        0x108000
        0x8020
        -0x7fef8000
        -0x7ff00000
        0x8020
        0x0
        0x108020
        -0x7fefffe0
        0x100000
        -0x7fff7fe0
        -0x7ff00000
        -0x7fef8000
        0x8000
        -0x7ff00000
        -0x7fff8000
        0x20
        -0x7fef7fe0
        0x108020
        0x20
        0x8000
        -0x80000000
        0x8020
        -0x7fef8000
        0x100000
        -0x7fffffe0
        0x100020
        -0x7fff7fe0
        -0x7fffffe0
        0x100020
        0x108000
        0x0
        -0x7fff8000
        0x8020
        -0x80000000
        -0x7fefffe0
        -0x7fef7fe0
        0x108000
    .end array-data

    :array_7
    .array-data 4
        0x208
        0x8020200
        0x0
        0x8020008
        0x8000200
        0x0
        0x20208
        0x8000200
        0x20008
        0x8000008
        0x8000008
        0x20000
        0x8020208
        0x20008
        0x8020000
        0x208
        0x8000000
        0x8
        0x8020200
        0x200
        0x20200
        0x8020000
        0x8020008
        0x20208
        0x8000208
        0x20200
        0x20000
        0x8000208
        0x8
        0x8020208
        0x200
        0x8000000
        0x8020200
        0x8000000
        0x20008
        0x208
        0x20000
        0x8020200
        0x8000200
        0x0
        0x200
        0x20008
        0x8020208
        0x8000200
        0x8000008
        0x200
        0x0
        0x8020008
        0x8000208
        0x20000
        0x8000000
        0x8020208
        0x8
        0x20208
        0x20200
        0x8000008
        0x8020000
        0x8000208
        0x208
        0x8020000
        0x20208
        0x8
        0x8020008
        0x20200
    .end array-data

    :array_8
    .array-data 4
        0x802001
        0x2081
        0x2081
        0x80
        0x802080
        0x800081
        0x800001
        0x2001
        0x0
        0x802000
        0x802000
        0x802081
        0x81
        0x0
        0x800080
        0x800001
        0x1
        0x2000
        0x800000
        0x802001
        0x80
        0x800000
        0x2001
        0x2080
        0x800081
        0x1
        0x2080
        0x800080
        0x2000
        0x802080
        0x802081
        0x81
        0x800080
        0x800001
        0x802000
        0x802081
        0x81
        0x0
        0x0
        0x802000
        0x2080
        0x800080
        0x800081
        0x1
        0x802001
        0x2081
        0x2081
        0x80
        0x802081
        0x81
        0x1
        0x2000
        0x800001
        0x2001
        0x802080
        0x800081
        0x2001
        0x2080
        0x800000
        0x802001
        0x80
        0x800000
        0x2000
        0x802080
    .end array-data

    :array_9
    .array-data 4
        0x100
        0x2080100
        0x2080000
        0x42000100    # 32.000977f
        0x80000
        0x100
        0x40000000    # 2.0f
        0x2080000
        0x40080100
        0x80000
        0x2000100
        0x40080100
        0x42000100    # 32.000977f
        0x42080000    # 34.0f
        0x80100
        0x40000000    # 2.0f
        0x2000000
        0x40080000    # 2.125f
        0x40080000    # 2.125f
        0x0
        0x40000100    # 2.000061f
        0x42080100    # 34.000977f
        0x42080100    # 34.000977f
        0x2000100
        0x42080000    # 34.0f
        0x40000100    # 2.000061f
        0x0
        0x42000000    # 32.0f
        0x2080100
        0x2000000
        0x42000000    # 32.0f
        0x80100
        0x80000
        0x42000100    # 32.000977f
        0x100
        0x2000000
        0x40000000    # 2.0f
        0x2080000
        0x42000100    # 32.000977f
        0x40080100
        0x2000100
        0x40000000    # 2.0f
        0x42080000    # 34.0f
        0x2080100
        0x40080100
        0x100
        0x2000000
        0x42080000    # 34.0f
        0x42080100    # 34.000977f
        0x80100
        0x42000000    # 32.0f
        0x42080100    # 34.000977f
        0x2080000
        0x0
        0x40080000    # 2.125f
        0x42000000    # 32.0f
        0x80100
        0x2000100
        0x40000100    # 2.000061f
        0x80000
        0x0
        0x40080000    # 2.125f
        0x2080100
        0x40000100    # 2.000061f
    .end array-data

    :array_a
    .array-data 4
        0x20000010
        0x20400000
        0x4000
        0x20404010
        0x20400000
        0x10
        0x20404010
        0x400000
        0x20004000
        0x404010
        0x400000
        0x20000010
        0x400010
        0x20004000
        0x20000000
        0x4010
        0x0
        0x400010
        0x20004010
        0x4000
        0x404000
        0x20004010
        0x10
        0x20400010
        0x20400010
        0x0
        0x404010
        0x20404000
        0x4010
        0x404000
        0x20404000
        0x20000000
        0x20004000
        0x10
        0x20400010
        0x404000
        0x20404010
        0x400000
        0x4010
        0x20000010
        0x400000
        0x20004000
        0x20000000
        0x4010
        0x20000010
        0x20404010
        0x404000
        0x20400000
        0x404010
        0x20404000
        0x0
        0x20400010
        0x10
        0x4000
        0x20400000
        0x404010
        0x4000
        0x400010
        0x20004010
        0x0
        0x20404000
        0x20000000
        0x400010
        0x20004010
    .end array-data

    :array_b
    .array-data 4
        0x200000
        0x4200002
        0x4000802    # 1.5050005E-36f
        0x0
        0x800
        0x4000802    # 1.5050005E-36f
        0x200802
        0x4200800
        0x4200802
        0x200000
        0x0
        0x4000002
        0x2
        0x4000000
        0x4200002
        0x802
        0x4000800    # 1.5050001E-36f
        0x200802
        0x200002
        0x4000800    # 1.5050001E-36f
        0x4000002
        0x4200000
        0x4200800
        0x200002
        0x4200000
        0x800
        0x802
        0x4200802
        0x200800
        0x2
        0x4000000
        0x200800
        0x4000000
        0x200800
        0x200000
        0x4000802    # 1.5050005E-36f
        0x4000802    # 1.5050005E-36f
        0x4200002
        0x4200002
        0x2
        0x200002
        0x4000000
        0x4000800    # 1.5050001E-36f
        0x200000
        0x4200800
        0x802
        0x200802
        0x4200800
        0x802
        0x4000002
        0x4200802
        0x4200000
        0x200800
        0x0
        0x2
        0x4200802
        0x0
        0x200802
        0x4200000
        0x800
        0x4000002
        0x4000800    # 1.5050001E-36f
        0x800
        0x200002
    .end array-data

    :array_c
    .array-data 4
        0x10001040
        0x1000
        0x40000
        0x10041040
        0x10000000
        0x10001040
        0x40
        0x10000000
        0x40040
        0x10040000
        0x10041040
        0x41000
        0x10041000
        0x41040
        0x1000
        0x40
        0x10040000
        0x10000040
        0x10001000
        0x1040
        0x41000
        0x40040
        0x10040040
        0x10041000
        0x1040
        0x0
        0x0
        0x10040040
        0x10000040
        0x10001000
        0x41040
        0x40000
        0x41040
        0x40000
        0x10041000
        0x1000
        0x40
        0x10040040
        0x1000
        0x41040
        0x10001000
        0x40
        0x10000040
        0x10040000
        0x10040040
        0x10000000
        0x40000
        0x10001040
        0x0
        0x10041040
        0x40040
        0x10000040
        0x10040000
        0x10001000
        0x10001040
        0x0
        0x10041040
        0x41000
        0x41000
        0x1040
        0x1040
        0x40040
        0x10000000
        0x10041000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 76
    new-array v1, v0, [I

    iput-object v1, p0, Ljcifs/util/DES;->encryptKeys:[I

    .line 77
    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/DES;->decryptKeys:[I

    const/4 v0, 0x2

    .line 79
    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 76
    new-array v1, v0, [I

    iput-object v1, p0, Ljcifs/util/DES;->encryptKeys:[I

    .line 77
    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/DES;->decryptKeys:[I

    const/4 v0, 0x2

    .line 79
    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    .line 88
    array-length v0, p1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    .line 89
    new-array v0, v0, [B

    .line 90
    invoke-static {p1, v0}, Ljcifs/util/DES;->makeSMBKey([B[B)V

    .line 91
    invoke-virtual {p0, v0}, Ljcifs/util/DES;->setKey([B)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Ljcifs/util/DES;->setKey([B)V

    :goto_0
    return-void
.end method

.method private cookey([I[I)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 175
    aget v1, p1, v1

    add-int/lit8 v5, v4, 0x1

    .line 176
    aget v4, p1, v4

    const/high16 v6, 0xfc0000

    and-int v7, v1, v6

    shl-int/lit8 v7, v7, 0x6

    .line 177
    aput v7, p2, v2

    .line 178
    aget v7, p2, v2

    and-int/lit16 v8, v1, 0xfc0

    shl-int/lit8 v8, v8, 0xa

    or-int/2addr v7, v8

    aput v7, p2, v2

    .line 179
    aget v7, p2, v2

    and-int/2addr v6, v4

    ushr-int/lit8 v6, v6, 0xa

    or-int/2addr v6, v7

    aput v6, p2, v2

    .line 180
    aget v6, p2, v2

    and-int/lit16 v7, v4, 0xfc0

    ushr-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    aput v6, p2, v2

    add-int/lit8 v2, v2, 0x1

    const v6, 0x3f000

    and-int v7, v1, v6

    shl-int/lit8 v7, v7, 0xc

    .line 182
    aput v7, p2, v2

    .line 183
    aget v7, p2, v2

    and-int/lit8 v1, v1, 0x3f

    shl-int/2addr v1, v3

    or-int/2addr v1, v7

    aput v1, p2, v2

    .line 184
    aget v1, p2, v2

    and-int v3, v4, v6

    ushr-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    aput v1, p2, v2

    .line 185
    aget v1, p2, v2

    and-int/lit8 v3, v4, 0x3f

    or-int/2addr v1, v3

    aput v1, p2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    move v1, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method private decrypt([BI[BI)V
    .locals 3

    .line 202
    iget-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljcifs/util/DES;->squashBytesToInts([BI[III)V

    .line 203
    iget-object p1, p0, Ljcifs/util/DES;->tempInts:[I

    iget-object p2, p0, Ljcifs/util/DES;->tempInts:[I

    iget-object v0, p0, Ljcifs/util/DES;->decryptKeys:[I

    invoke-direct {p0, p1, p2, v0}, Ljcifs/util/DES;->des([I[I[I)V

    .line 204
    iget-object p1, p0, Ljcifs/util/DES;->tempInts:[I

    invoke-static {p1, v2, p3, p4, v1}, Ljcifs/util/DES;->spreadIntsToBytes([II[BII)V

    return-void
.end method

.method private des([I[I[I)V
    .locals 17

    const/4 v2, 0x0

    .line 214
    aget v3, p1, v2

    const/4 v4, 0x1

    .line 215
    aget v0, p1, v4

    ushr-int/lit8 v5, v3, 0x4

    xor-int/2addr v5, v0

    const v6, 0xf0f0f0f

    and-int/2addr v5, v6

    xor-int/2addr v0, v5

    shl-int/lit8 v5, v5, 0x4

    xor-int/2addr v3, v5

    ushr-int/lit8 v5, v3, 0x10

    xor-int/2addr v5, v0

    const v7, 0xffff

    and-int/2addr v5, v7

    xor-int/2addr v0, v5

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v3, v5

    ushr-int/lit8 v5, v0, 0x2

    xor-int/2addr v5, v3

    const v8, 0x33333333

    and-int/2addr v5, v8

    xor-int/2addr v3, v5

    shl-int/lit8 v5, v5, 0x2

    xor-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x8

    xor-int/2addr v5, v3

    const v9, 0xff00ff

    and-int/2addr v5, v9

    xor-int/2addr v3, v5

    const/16 v10, 0x8

    shl-int/2addr v5, v10

    xor-int/2addr v0, v5

    shl-int/lit8 v5, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1f

    and-int/2addr v0, v4

    or-int/2addr v0, v5

    xor-int v5, v3, v0

    const v11, -0x55555556

    and-int/2addr v5, v11

    xor-int/2addr v3, v5

    xor-int/2addr v0, v5

    shl-int/lit8 v5, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    and-int/2addr v3, v4

    or-int/2addr v3, v5

    move v12, v3

    const/4 v5, 0x0

    move v3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_0

    shl-int/lit8 v13, v3, 0x1c

    ushr-int/lit8 v14, v3, 0x4

    or-int/2addr v13, v14

    add-int/lit8 v14, v5, 0x1

    .line 241
    aget v5, p3, v5

    xor-int/2addr v5, v13

    .line 242
    sget-object v13, Ljcifs/util/DES;->SP7:[I

    and-int/lit8 v15, v5, 0x3f

    aget v13, v13, v15

    .line 243
    sget-object v15, Ljcifs/util/DES;->SP5:[I

    ushr-int/lit8 v16, v5, 0x8

    and-int/lit8 v16, v16, 0x3f

    aget v15, v15, v16

    or-int/2addr v13, v15

    .line 244
    sget-object v15, Ljcifs/util/DES;->SP3:[I

    ushr-int/lit8 v16, v5, 0x10

    and-int/lit8 v16, v16, 0x3f

    aget v15, v15, v16

    or-int/2addr v13, v15

    .line 245
    sget-object v15, Ljcifs/util/DES;->SP1:[I

    ushr-int/lit8 v5, v5, 0x18

    and-int/lit8 v5, v5, 0x3f

    aget v5, v15, v5

    or-int/2addr v5, v13

    add-int/lit8 v13, v14, 0x1

    .line 246
    aget v14, p3, v14

    xor-int/2addr v14, v3

    .line 247
    sget-object v15, Ljcifs/util/DES;->SP8:[I

    and-int/lit8 v16, v14, 0x3f

    aget v15, v15, v16

    or-int/2addr v5, v15

    .line 248
    sget-object v15, Ljcifs/util/DES;->SP6:[I

    ushr-int/lit8 v16, v14, 0x8

    and-int/lit8 v16, v16, 0x3f

    aget v15, v15, v16

    or-int/2addr v5, v15

    .line 249
    sget-object v15, Ljcifs/util/DES;->SP4:[I

    ushr-int/lit8 v16, v14, 0x10

    and-int/lit8 v16, v16, 0x3f

    aget v15, v15, v16

    or-int/2addr v5, v15

    .line 250
    sget-object v15, Ljcifs/util/DES;->SP2:[I

    ushr-int/lit8 v14, v14, 0x18

    and-int/lit8 v14, v14, 0x3f

    aget v14, v15, v14

    or-int/2addr v5, v14

    xor-int/2addr v12, v5

    shl-int/lit8 v5, v12, 0x1c

    ushr-int/lit8 v14, v12, 0x4

    or-int/2addr v5, v14

    add-int/lit8 v14, v13, 0x1

    .line 253
    aget v13, p3, v13

    xor-int/2addr v5, v13

    .line 254
    sget-object v13, Ljcifs/util/DES;->SP7:[I

    and-int/lit8 v15, v5, 0x3f

    aget v13, v13, v15

    .line 255
    sget-object v15, Ljcifs/util/DES;->SP5:[I

    ushr-int/lit8 v16, v5, 0x8

    and-int/lit8 v16, v16, 0x3f

    aget v15, v15, v16

    or-int/2addr v13, v15

    .line 256
    sget-object v15, Ljcifs/util/DES;->SP3:[I

    ushr-int/lit8 v16, v5, 0x10

    and-int/lit8 v16, v16, 0x3f

    aget v15, v15, v16

    or-int/2addr v13, v15

    .line 257
    sget-object v15, Ljcifs/util/DES;->SP1:[I

    ushr-int/lit8 v5, v5, 0x18

    and-int/lit8 v5, v5, 0x3f

    aget v5, v15, v5

    or-int/2addr v5, v13

    add-int/lit8 v13, v14, 0x1

    .line 258
    aget v14, p3, v14

    xor-int/2addr v14, v12

    .line 259
    sget-object v15, Ljcifs/util/DES;->SP8:[I

    and-int/lit8 v16, v14, 0x3f

    aget v15, v15, v16

    or-int/2addr v5, v15

    .line 260
    sget-object v15, Ljcifs/util/DES;->SP6:[I

    ushr-int/lit8 v16, v14, 0x8

    and-int/lit8 v16, v16, 0x3f

    aget v15, v15, v16

    or-int/2addr v5, v15

    .line 261
    sget-object v15, Ljcifs/util/DES;->SP4:[I

    ushr-int/lit8 v16, v14, 0x10

    and-int/lit8 v16, v16, 0x3f

    aget v15, v15, v16

    or-int/2addr v5, v15

    .line 262
    sget-object v15, Ljcifs/util/DES;->SP2:[I

    ushr-int/lit8 v14, v14, 0x18

    and-int/lit8 v14, v14, 0x3f

    aget v14, v15, v14

    or-int/2addr v5, v14

    xor-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    move v5, v13

    goto/16 :goto_0

    :cond_0
    shl-int/lit8 v0, v3, 0x1f

    ushr-int/lit8 v1, v3, 0x1

    or-int/2addr v0, v1

    xor-int v1, v12, v0

    and-int/2addr v1, v11

    xor-int v3, v12, v1

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x1f

    ushr-int/2addr v3, v4

    or-int/2addr v1, v3

    ushr-int/lit8 v3, v1, 0x8

    xor-int/2addr v3, v0

    and-int/2addr v3, v9

    xor-int/2addr v0, v3

    shl-int/2addr v3, v10

    xor-int/2addr v1, v3

    ushr-int/lit8 v3, v1, 0x2

    xor-int/2addr v3, v0

    and-int/2addr v3, v8

    xor-int/2addr v0, v3

    shl-int/lit8 v3, v3, 0x2

    xor-int/2addr v1, v3

    ushr-int/lit8 v3, v0, 0x10

    xor-int/2addr v3, v1

    and-int/2addr v3, v7

    xor-int/2addr v1, v3

    shl-int/lit8 v3, v3, 0x10

    xor-int/2addr v0, v3

    ushr-int/lit8 v3, v0, 0x4

    xor-int/2addr v3, v1

    and-int/2addr v3, v6

    xor-int/2addr v1, v3

    shl-int/lit8 v3, v3, 0x4

    xor-int/2addr v0, v3

    .line 283
    aput v0, p2, v2

    .line 284
    aput v1, p2, v4

    return-void
.end method

.method private deskey([BZ[I)V
    .locals 11

    const/16 v0, 0x38

    .line 127
    new-array v1, v0, [I

    .line 128
    new-array v2, v0, [I

    const/16 v3, 0x20

    .line 129
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v0, :cond_1

    .line 132
    sget-object v7, Ljcifs/util/DES;->pc1:[B

    aget-byte v7, v7, v5

    and-int/lit8 v8, v7, 0x7

    ushr-int/lit8 v7, v7, 0x3

    .line 134
    aget-byte v7, p1, v7

    sget-object v9, Ljcifs/util/DES;->bytebit:[B

    aget-byte v8, v9, v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_2
    const/16 v5, 0x10

    if-ge p1, v5, :cond_a

    if-eqz p2, :cond_2

    shl-int/lit8 v5, p1, 0x1

    goto :goto_3

    :cond_2
    rsub-int/lit8 v5, p1, 0xf

    shl-int/2addr v5, v6

    :goto_3
    add-int/lit8 v7, v5, 0x1

    .line 144
    aput v4, v3, v7

    aput v4, v3, v5

    const/4 v8, 0x0

    :goto_4
    const/16 v9, 0x1c

    if-ge v8, v9, :cond_4

    .line 146
    sget-object v10, Ljcifs/util/DES;->totrot:[I

    aget v10, v10, p1

    add-int/2addr v10, v8

    if-ge v10, v9, :cond_3

    .line 148
    aget v9, v1, v10

    aput v9, v2, v8

    goto :goto_5

    :cond_3
    add-int/lit8 v10, v10, -0x1c

    .line 150
    aget v9, v1, v10

    aput v9, v2, v8

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    :goto_6
    if-ge v9, v0, :cond_6

    .line 153
    sget-object v8, Ljcifs/util/DES;->totrot:[I

    aget v8, v8, p1

    add-int/2addr v8, v9

    if-ge v8, v0, :cond_5

    .line 155
    aget v8, v1, v8

    aput v8, v2, v9

    goto :goto_7

    :cond_5
    add-int/lit8 v8, v8, -0x1c

    .line 157
    aget v8, v1, v8

    aput v8, v2, v9

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_8
    const/16 v9, 0x18

    if-ge v8, v9, :cond_9

    .line 160
    sget-object v9, Ljcifs/util/DES;->pc2:[B

    aget-byte v9, v9, v8

    aget v9, v2, v9

    if-eqz v9, :cond_7

    .line 161
    aget v9, v3, v5

    sget-object v10, Ljcifs/util/DES;->bigbyte:[I

    aget v10, v10, v8

    or-int/2addr v9, v10

    aput v9, v3, v5

    .line 162
    :cond_7
    sget-object v9, Ljcifs/util/DES;->pc2:[B

    add-int/lit8 v10, v8, 0x18

    aget-byte v9, v9, v10

    aget v9, v2, v9

    if-eqz v9, :cond_8

    .line 163
    aget v9, v3, v7

    sget-object v10, Ljcifs/util/DES;->bigbyte:[I

    aget v10, v10, v8

    or-int/2addr v9, v10

    aput v9, v3, v7

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 166
    :cond_a
    invoke-direct {p0, v3, p3}, Ljcifs/util/DES;->cookey([I[I)V

    return-void
.end method

.method private encrypt([BI[BI)V
    .locals 3

    .line 194
    iget-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljcifs/util/DES;->squashBytesToInts([BI[III)V

    .line 195
    iget-object p1, p0, Ljcifs/util/DES;->tempInts:[I

    iget-object p2, p0, Ljcifs/util/DES;->tempInts:[I

    iget-object v0, p0, Ljcifs/util/DES;->encryptKeys:[I

    invoke-direct {p0, p1, p2, v0}, Ljcifs/util/DES;->des([I[I[I)V

    .line 196
    iget-object p1, p0, Ljcifs/util/DES;->tempInts:[I

    invoke-static {p1, v2, p3, p4, v1}, Ljcifs/util/DES;->spreadIntsToBytes([II[BII)V

    return-void
.end method

.method public static makeSMBKey([B[B)V
    .locals 10

    const/4 v0, 0x0

    .line 102
    aget-byte v1, p0, v0

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 103
    aget-byte v1, p0, v0

    and-int/2addr v1, v2

    const/4 v3, 0x6

    shl-int/2addr v1, v3

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x2

    shr-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 104
    aget-byte v1, p0, v2

    const/4 v4, 0x3

    and-int/2addr v1, v4

    const/4 v6, 0x5

    shl-int/2addr v1, v6

    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v4

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v1, v7

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v5

    .line 105
    aget-byte v1, p0, v5

    const/4 v7, 0x7

    and-int/2addr v1, v7

    const/4 v8, 0x4

    shl-int/2addr v1, v8

    aget-byte v9, p0, v4

    and-int/lit16 v9, v9, 0xff

    shr-int/2addr v9, v8

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v1, v9

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    .line 106
    aget-byte v1, p0, v4

    and-int/lit8 v1, v1, 0xf

    shl-int/2addr v1, v4

    aget-byte v4, p0, v8

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v8

    .line 107
    aget-byte v1, p0, v8

    and-int/lit8 v1, v1, 0x1f

    shl-int/2addr v1, v5

    aget-byte v4, p0, v6

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v3

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v6

    .line 108
    aget-byte v1, p0, v6

    and-int/lit8 v1, v1, 0x3f

    shl-int/2addr v1, v2

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v7

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    .line 109
    aget-byte p0, p0, v3

    and-int/lit8 p0, p0, 0x7f

    int-to-byte p0, p0

    aput-byte p0, p1, v7

    :goto_0
    const/16 p0, 0x8

    if-ge v0, p0, :cond_0

    .line 111
    aget-byte p0, p1, v0

    shl-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static spreadIntsToBytes([II[BII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, p1, v0

    .line 545
    aget v3, p0, v2

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    add-int/lit8 v3, v1, 0x1

    .line 546
    aget v4, p0, v2

    ushr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    add-int/lit8 v3, v1, 0x2

    .line 547
    aget v4, p0, v2

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    add-int/lit8 v1, v1, 0x3

    .line 548
    aget v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static squashBytesToInts([BI[III)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    .line 532
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public decrypt([B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, p1, v0, p2, v0}, Ljcifs/util/DES;->decrypt([BI[BI)V

    return-void
.end method

.method public decrypt([B)[B
    .locals 4

    .line 325
    array-length v0, p1

    .line 327
    rem-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 328
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Array must be a multiple of 8"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 332
    :cond_0
    new-array v1, v0, [B

    .line 333
    div-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x8

    .line 336
    invoke-direct {p0, p1, v3, v1, v3}, Ljcifs/util/DES;->encrypt([BI[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public encrypt([B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 290
    invoke-direct {p0, p1, v0, p2, v0}, Ljcifs/util/DES;->encrypt([BI[BI)V

    return-void
.end method

.method public encrypt([B)[B
    .locals 4

    .line 304
    array-length v0, p1

    .line 306
    rem-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 307
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Array must be a multiple of 8"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 311
    :cond_0
    new-array v1, v0, [B

    .line 312
    div-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x8

    .line 315
    invoke-direct {p0, p1, v3, v1, v3}, Ljcifs/util/DES;->encrypt([BI[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public setKey([B)V
    .locals 2

    .line 119
    iget-object v0, p0, Ljcifs/util/DES;->encryptKeys:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Ljcifs/util/DES;->deskey([BZ[I)V

    .line 120
    iget-object v0, p0, Ljcifs/util/DES;->decryptKeys:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljcifs/util/DES;->deskey([BZ[I)V

    return-void
.end method
