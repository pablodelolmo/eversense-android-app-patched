.class public Lorg/bouncycastle/crypto/engines/ChaChaEngine;
.super Lorg/bouncycastle/crypto/engines/Salsa20Engine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    return-void
.end method

.method public static chachaCore(I[I[I)V
    .locals 32

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

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    rem-int/lit8 v4, p0, 0x2

    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rounds must be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v4, 0x0

    aget v5, v0, v4

    const/4 v6, 0x1

    aget v7, v0, v6

    const/4 v8, 0x2

    aget v9, v0, v8

    const/4 v10, 0x3

    aget v11, v0, v10

    const/4 v12, 0x4

    aget v13, v0, v12

    const/4 v14, 0x5

    aget v15, v0, v14

    const/16 v16, 0x6

    aget v17, v0, v16

    const/4 v14, 0x7

    aget v18, v0, v14

    const/16 v12, 0x8

    aget v19, v0, v12

    const/16 v20, 0x9

    aget v21, v0, v20

    const/16 v22, 0xa

    aget v23, v0, v22

    const/16 v24, 0xb

    aget v25, v0, v24

    const/16 v10, 0xc

    aget v26, v0, v10

    const/16 v27, 0xd

    aget v28, v0, v27

    const/16 v29, 0xe

    aget v29, v0, v29

    const/16 v30, 0xf

    aget v30, v0, v30

    move/from16 v2, p0

    :goto_0
    if-lez v2, :cond_3

    add-int/2addr v5, v13

    xor-int v8, v26, v5

    invoke-static {v8, v3}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v8

    add-int v19, v19, v8

    xor-int v13, v13, v19

    invoke-static {v13, v10}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v13

    add-int/2addr v5, v13

    xor-int/2addr v8, v5

    invoke-static {v8, v12}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v8

    add-int v19, v19, v8

    xor-int v13, v13, v19

    invoke-static {v13, v14}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v13

    add-int/2addr v7, v15

    xor-int v6, v28, v7

    invoke-static {v6, v3}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v6

    add-int v21, v21, v6

    xor-int v15, v15, v21

    invoke-static {v15, v10}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v15

    add-int/2addr v7, v15

    xor-int/2addr v6, v7

    invoke-static {v6, v12}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v6

    add-int v21, v21, v6

    xor-int v15, v15, v21

    invoke-static {v15, v14}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v15

    add-int v9, v9, v17

    xor-int v4, v29, v9

    invoke-static {v4, v3}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v4

    add-int v23, v23, v4

    xor-int v3, v17, v23

    invoke-static {v3, v10}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v3

    add-int/2addr v9, v3

    xor-int/2addr v4, v9

    invoke-static {v4, v12}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v4

    add-int v23, v23, v4

    xor-int v3, v3, v23

    invoke-static {v3, v14}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v3

    add-int v11, v11, v18

    xor-int v14, v30, v11

    const/16 v12, 0x10

    invoke-static {v14, v12}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v14

    add-int v25, v25, v14

    xor-int v12, v18, v25

    invoke-static {v12, v10}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v12

    add-int/2addr v11, v12

    xor-int/2addr v14, v11

    const/16 v10, 0x8

    invoke-static {v14, v10}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v14

    add-int v25, v25, v14

    xor-int v10, v12, v25

    const/4 v12, 0x7

    invoke-static {v10, v12}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v10

    add-int/2addr v5, v15

    xor-int v12, v14, v5

    const/16 v14, 0x10

    invoke-static {v12, v14}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v12

    add-int v23, v23, v12

    xor-int v14, v15, v23

    const/16 v15, 0xc

    invoke-static {v14, v15}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v14

    add-int/2addr v5, v14

    xor-int/2addr v12, v5

    const/16 v15, 0x8

    invoke-static {v12, v15}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v30

    add-int v23, v23, v30

    xor-int v12, v14, v23

    const/4 v14, 0x7

    invoke-static {v12, v14}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v15

    add-int/2addr v7, v3

    xor-int/2addr v8, v7

    const/16 v12, 0x10

    invoke-static {v8, v12}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v8

    add-int v25, v25, v8

    xor-int v3, v3, v25

    const/16 v12, 0xc

    invoke-static {v3, v12}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v3

    add-int/2addr v7, v3

    xor-int/2addr v8, v7

    const/16 v12, 0x8

    invoke-static {v8, v12}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v26

    add-int v25, v25, v26

    xor-int v3, v3, v25

    const/4 v8, 0x7

    invoke-static {v3, v8}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v17

    add-int/2addr v9, v10

    xor-int v3, v6, v9

    const/16 v6, 0x10

    invoke-static {v3, v6}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v3

    add-int v19, v19, v3

    xor-int v6, v10, v19

    const/16 v8, 0xc

    invoke-static {v6, v8}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v6

    add-int/2addr v9, v6

    xor-int/2addr v3, v9

    const/16 v8, 0x8

    invoke-static {v3, v8}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v28

    add-int v19, v19, v28

    xor-int v3, v6, v19

    const/4 v6, 0x7

    invoke-static {v3, v6}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v18

    add-int/2addr v11, v13

    xor-int v3, v4, v11

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v3

    add-int v21, v21, v3

    xor-int v6, v13, v21

    const/16 v8, 0xc

    invoke-static {v6, v8}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v6

    add-int/2addr v11, v6

    xor-int/2addr v3, v11

    const/16 v8, 0x8

    invoke-static {v3, v8}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v29

    add-int v21, v21, v29

    xor-int v3, v6, v21

    const/4 v6, 0x7

    invoke-static {v3, v6}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v13

    add-int/lit8 v2, v2, -0x2

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/16 v10, 0xc

    const/16 v12, 0x8

    const/4 v14, 0x7

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/2addr v5, v3

    aput v5, v1, v2

    const/4 v2, 0x1

    aget v3, v0, v2

    add-int/2addr v7, v3

    aput v7, v1, v2

    const/4 v2, 0x2

    aget v3, v0, v2

    add-int/2addr v9, v3

    aput v9, v1, v2

    const/4 v2, 0x3

    aget v3, v0, v2

    add-int/2addr v11, v3

    aput v11, v1, v2

    const/4 v2, 0x4

    aget v3, v0, v2

    add-int/2addr v13, v3

    aput v13, v1, v2

    const/4 v2, 0x5

    aget v3, v0, v2

    add-int/2addr v15, v3

    aput v15, v1, v2

    aget v2, v0, v16

    add-int v17, v17, v2

    aput v17, v1, v16

    const/4 v2, 0x7

    aget v3, v0, v2

    add-int v18, v18, v3

    aput v18, v1, v2

    const/16 v2, 0x8

    aget v3, v0, v2

    add-int v19, v19, v3

    aput v19, v1, v2

    aget v2, v0, v20

    add-int v21, v21, v2

    aput v21, v1, v20

    aget v2, v0, v22

    add-int v23, v23, v2

    aput v23, v1, v22

    aget v2, v0, v24

    add-int v25, v25, v2

    aput v25, v1, v24

    const/16 v2, 0xc

    aget v3, v0, v2

    add-int v26, v26, v3

    aput v26, v1, v2

    aget v2, v0, v27

    add-int v28, v28, v2

    aput v28, v1, v27

    const/16 v2, 0xe

    const/16 v3, 0xe

    aget v3, v0, v3

    add-int v29, v29, v3

    aput v29, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0xf

    aget v0, v0, v3

    add-int v30, v30, v0

    aput v30, v1, v2

    return-void
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xc

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-nez v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xd

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method protected generateKeyStream([B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rounds:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->chachaCore(I[I[I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/util/Pack;->intToLittleEndian([I[BI)V

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChaCha"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rounds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected resetCounter()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v2, 0xd

    const/4 v3, 0x0

    aput v3, v1, v2

    const/16 v1, 0xc

    aput v3, v0, v1

    return-void
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

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires 128 bit or 256 bit key"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    const/4 v5, 0x4

    aput v4, v0, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v4, 0x5

    invoke-static {p1, v5}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    aput v6, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v4, 0x6

    const/16 v6, 0x8

    invoke-static {p1, v6}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    aput v7, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v4, 0x7

    const/16 v7, 0xc

    invoke-static {p1, v7}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    aput v8, v0, v4

    array-length v0, p1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->sigma:[B

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->tau:[B

    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v1, v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v4, 0x9

    add-int/lit8 v8, v2, 0x4

    invoke-static {p1, v8}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    aput v8, v1, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v4, 0xa

    add-int/lit8 v8, v2, 0x8

    invoke-static {p1, v8}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    aput v8, v1, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v4, 0xb

    add-int/2addr v2, v7

    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    aput p1, v1, v4

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p1, v3

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v1, 0x1

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, p1, v1

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v1, 0x2

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, p1, v1

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v1, 0x3

    invoke-static {v0, v7}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    aput v0, p1, v1

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    aput v3, p1, v7

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v0, 0xe

    invoke-static {p2, v3}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p1, v0

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v0, 0xf

    invoke-static {p2, v5}, Lorg/bouncycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result p2

    aput p2, p1, v0

    return-void
.end method
