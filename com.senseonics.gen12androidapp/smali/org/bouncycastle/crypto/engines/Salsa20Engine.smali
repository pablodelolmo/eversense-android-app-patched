.class public Lorg/bouncycastle/crypto/engines/Salsa20Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# static fields
.field public static final DEFAULT_ROUNDS:I = 0x14

.field private static final STATE_SIZE:I = 0x10

.field protected static final sigma:[B

.field protected static final tau:[B


# instance fields
.field private cW0:I

.field private cW1:I

.field private cW2:I

.field protected engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field protected rounds:I

.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "expand 32-byte k"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->sigma:[B

    const-string v0, "expand 16-byte k"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->tau:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    const/16 v1, 0x10

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v1, 0x40

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-lez p1, :cond_1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'rounds\' must be a positive, even number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private limitExceeded()Z
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    return v2
.end method

.method private limitExceeded(I)Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    const/4 v1, 0x0

    if-ge v0, p1, :cond_1

    iget p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ltz p1, :cond_1

    iget p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez p1, :cond_1

    iget p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method private resetLimitCounter()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    return-void
.end method

.method protected static rotl(II)I
    .locals 1

    shl-int v0, p0, p1

    neg-int p1, p1

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static salsaCore(I[I[I)V
    .locals 33

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    array-length v2, v1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    rem-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rounds must be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v6, v0, v5

    const/4 v7, 0x2

    aget v8, v0, v7

    const/4 v9, 0x3

    aget v10, v0, v9

    const/4 v11, 0x4

    aget v12, v0, v11

    const/4 v13, 0x5

    aget v14, v0, v13

    const/4 v15, 0x6

    aget v16, v0, v15

    const/4 v15, 0x7

    aget v17, v0, v15

    const/16 v18, 0x8

    aget v19, v0, v18

    const/16 v13, 0x9

    aget v20, v0, v13

    const/16 v21, 0xa

    aget v22, v0, v21

    const/16 v23, 0xb

    aget v24, v0, v23

    const/16 v25, 0xc

    aget v26, v0, v25

    const/16 v11, 0xd

    aget v27, v0, v11

    const/16 v28, 0xe

    aget v28, v0, v28

    const/16 v29, 0xf

    aget v29, v0, v29

    move/from16 v2, p0

    :goto_0
    if-lez v2, :cond_3

    add-int v9, v4, v26

    invoke-static {v9, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v9

    xor-int/2addr v9, v12

    add-int v12, v9, v4

    invoke-static {v12, v13}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v12

    xor-int v12, v19, v12

    add-int v7, v12, v9

    invoke-static {v7, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int v7, v26, v7

    add-int v5, v7, v12

    const/16 v3, 0x12

    invoke-static {v5, v3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    add-int v5, v14, v6

    invoke-static {v5, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int v5, v20, v5

    add-int v15, v5, v14

    invoke-static {v15, v13}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v15

    xor-int v15, v27, v15

    add-int v13, v15, v5

    invoke-static {v13, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v13

    xor-int/2addr v6, v13

    add-int v13, v6, v15

    invoke-static {v13, v3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v13

    xor-int/2addr v13, v14

    add-int v14, v22, v16

    const/4 v3, 0x7

    invoke-static {v14, v3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v14

    xor-int v3, v28, v14

    add-int v14, v3, v22

    const/16 v11, 0x9

    invoke-static {v14, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v14

    xor-int/2addr v8, v14

    add-int v11, v8, v3

    const/16 v14, 0xd

    invoke-static {v11, v14}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v11

    xor-int v11, v16, v11

    add-int v14, v11, v8

    const/16 v1, 0x12

    invoke-static {v14, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v14

    xor-int v1, v22, v14

    add-int v14, v29, v24

    const/4 v0, 0x7

    invoke-static {v14, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v14

    xor-int v0, v10, v14

    add-int v10, v0, v29

    const/16 v14, 0x9

    invoke-static {v10, v14}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v10

    xor-int v10, v17, v10

    add-int v14, v10, v0

    move/from16 v30, v2

    const/16 v2, 0xd

    invoke-static {v14, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v14

    xor-int v2, v24, v14

    add-int v14, v2, v10

    move/from16 v31, v15

    const/16 v15, 0x12

    invoke-static {v14, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v14

    xor-int v14, v29, v14

    add-int v15, v4, v0

    move/from16 v32, v7

    const/4 v7, 0x7

    invoke-static {v15, v7}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v15

    xor-int/2addr v6, v15

    add-int v7, v6, v4

    const/16 v15, 0x9

    invoke-static {v7, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int/2addr v8, v7

    add-int v7, v8, v6

    const/16 v15, 0xd

    invoke-static {v7, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int/2addr v0, v7

    add-int v7, v0, v8

    const/16 v15, 0x12

    invoke-static {v7, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int/2addr v4, v7

    add-int v7, v13, v9

    const/4 v15, 0x7

    invoke-static {v7, v15}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int v16, v11, v7

    add-int v7, v16, v13

    const/16 v11, 0x9

    invoke-static {v7, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int v17, v10, v7

    add-int v7, v17, v16

    const/16 v10, 0xd

    invoke-static {v7, v10}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v7

    xor-int/2addr v7, v9

    add-int v9, v7, v17

    const/16 v10, 0x12

    invoke-static {v9, v10}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v9

    xor-int/2addr v9, v13

    add-int v10, v1, v5

    const/4 v11, 0x7

    invoke-static {v10, v11}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v10

    xor-int v24, v2, v10

    add-int v2, v24, v1

    const/16 v10, 0x9

    invoke-static {v2, v10}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int v19, v12, v2

    add-int v2, v19, v24

    const/16 v10, 0xd

    invoke-static {v2, v10}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int v20, v5, v2

    add-int v2, v20, v19

    const/16 v5, 0x12

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int v22, v1, v2

    add-int v1, v14, v3

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v1

    xor-int v26, v32, v1

    add-int v1, v26, v14

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v1

    xor-int v27, v31, v1

    add-int v1, v27, v26

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v1

    xor-int v28, v3, v1

    add-int v1, v28, v27

    const/16 v2, 0x12

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v1

    xor-int v29, v14, v1

    add-int/lit8 v2, v30, -0x2

    move v10, v0

    move v12, v7

    move v14, v9

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v9, 0x3

    const/16 v11, 0xd

    const/16 v13, 0x9

    const/4 v15, 0x7

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v4, v2

    move-object/from16 v2, p2

    aput v4, v2, v1

    const/4 v1, 0x1

    aget v3, v0, v1

    add-int/2addr v6, v3

    aput v6, v2, v1

    const/4 v1, 0x2

    aget v3, v0, v1

    add-int/2addr v8, v3

    aput v8, v2, v1

    const/4 v1, 0x3

    aget v3, v0, v1

    add-int/2addr v10, v3

    aput v10, v2, v1

    const/4 v1, 0x4

    aget v3, v0, v1

    add-int/2addr v12, v3

    aput v12, v2, v1

    const/4 v1, 0x5

    aget v3, v0, v1

    add-int/2addr v14, v3

    aput v14, v2, v1

    const/4 v1, 0x6

    aget v3, v0, v1

    add-int v16, v16, v3

    aput v16, v2, v1

    const/4 v1, 0x7

    aget v3, v0, v1

    add-int v17, v17, v3

    aput v17, v2, v1

    aget v1, v0, v18

    add-int v19, v19, v1

    aput v19, v2, v18

    const/16 v1, 0x9

    aget v3, v0, v1

    add-int v20, v20, v3

    aput v20, v2, v1

    aget v1, v0, v21

    add-int v22, v22, v1

    aput v22, v2, v21

    aget v1, v0, v23

    add-int v24, v24, v1

    aput v24, v2, v23

    aget v1, v0, v25

    add-int v26, v26, v1

    aput v26, v2, v25

    const/16 v1, 0xd

    aget v3, v0, v1

    add-int v27, v27, v3

    aput v27, v2, v1

    const/16 v1, 0xe

    const/16 v3, 0xe

    aget v3, v0, v3

    add-int v28, v28, v3

    aput v28, v2, v1

    const/16 v1, 0xf

    const/16 v3, 0xf

    aget v0, v0, v3

    add-int v29, v29, v0

    aput v29, v2, v1

    return-void
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-nez v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x9

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method protected generateKeyStream([B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/util/Pack;->intToLittleEndian([I[BI)V

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    const-string v0, "Salsa20"

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getNonceSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Init parameters must include an IV"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v0, p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Init parameters must include a key"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->reset()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    return-void

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires exactly "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes of IV"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBytes([BII[BI)V
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not initialised"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int v0, p5, p3

    array-length v1, p4

    if-le v0, v1, :cond_2

    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->limitExceeded(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lorg/bouncycastle/crypto/MaxBytesExceededException;

    const-string p2, "2^70 byte limit per IV would be exceeded; Change IV"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_5

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    :cond_4
    add-int v1, v0, p5

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->resetLimitCounter()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    return-void
.end method

.method protected resetCounter()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput v3, v1, v2

    const/16 v1, 0x8

    aput v3, v0, v1

    return-void
.end method

.method public returnByte(B)B
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->limitExceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/MaxBytesExceededException;

    const-string v0, "2^70 byte limit per IV; Change IV"

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v0, v0, v1

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    return p1
.end method

.method protected setKey([B[B)V
    .locals 9

    array-length v0, p1

    const/16 v1, 0x20

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    array-length v0, p1

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires 128 bit or 256 bit key"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v4}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    aput v5, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x2

    const/4 v5, 0x4

    invoke-static {p1, v5}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    aput v6, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x3

    const/16 v6, 0x8

    invoke-static {p1, v6}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    aput v7, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xc

    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    aput v7, v0, v5

    array-length v0, p1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->sigma:[B

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->tau:[B

    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v7, 0xb

    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    aput v8, v1, v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    add-int/lit8 v7, v2, 0x4

    invoke-static {p1, v7}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    aput v7, v1, v3

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v7, 0xd

    add-int/lit8 v8, v2, 0x8

    invoke-static {p1, v8}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    aput v8, v1, v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v7, 0xe

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    aput p1, v1, v7

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p1, v4

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v1, 0x5

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, p1, v1

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0xa

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, p1, v1

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0xf

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    aput v0, p1, v1

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v0, 0x6

    invoke-static {p2, v4}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p1, v0

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v0, 0x7

    invoke-static {p2, v5}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result p2

    aput p2, p1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    return-void
.end method
