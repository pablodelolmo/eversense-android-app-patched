.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish256Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0xe

.field private static final ROTATION_0_1:I = 0x10

.field private static final ROTATION_1_0:I = 0x34

.field private static final ROTATION_1_1:I = 0x39

.field private static final ROTATION_2_0:I = 0x17

.field private static final ROTATION_2_1:I = 0x28

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x25

.field private static final ROTATION_4_0:I = 0x19

.field private static final ROTATION_4_1:I = 0x21

.field private static final ROTATION_5_0:I = 0x2e

.field private static final ROTATION_5_1:I = 0xc

.field private static final ROTATION_6_0:I = 0x3a

.field private static final ROTATION_6_1:I = 0x16

.field private static final ROTATION_7_0:I = 0x20

.field private static final ROTATION_7_1:I = 0x20


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 34

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v5

    array-length v6, v2

    const/16 v7, 0x9

    if-eq v6, v7, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    array-length v6, v3

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const/4 v6, 0x0

    aget-wide v8, p1, v6

    const/4 v10, 0x1

    aget-wide v11, p1, v10

    const/4 v13, 0x2

    aget-wide v14, p1, v13

    const/16 v16, 0x3

    aget-wide v17, p1, v16

    const/16 v1, 0x11

    :goto_0
    if-lt v1, v10, :cond_2

    aget v19, v4, v1

    aget v20, v5, v1

    add-int/lit8 v21, v19, 0x1

    aget-wide v22, v2, v21

    sub-long v8, v8, v22

    add-int/lit8 v22, v19, 0x2

    aget-wide v23, v2, v22

    add-int/lit8 v25, v20, 0x1

    aget-wide v26, v3, v25

    add-long v23, v23, v26

    sub-long v11, v11, v23

    add-int/lit8 v23, v19, 0x3

    aget-wide v26, v2, v23

    add-int/lit8 v24, v20, 0x2

    aget-wide v28, v3, v24

    add-long v26, v26, v28

    sub-long v13, v14, v26

    add-int/lit8 v15, v19, 0x4

    aget-wide v26, v2, v15

    int-to-long v6, v1

    add-long v26, v26, v6

    const-wide/16 v28, 0x1

    add-long v26, v26, v28

    move-wide/from16 v30, v11

    sub-long v10, v17, v26

    const/16 v12, 0x20

    invoke-static {v10, v11, v12, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v8, v10

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move-wide/from16 v4, v30

    invoke-static {v4, v5, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v13, v4

    const/16 v12, 0x3a

    invoke-static {v4, v5, v12, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    const/16 v12, 0x16

    invoke-static {v10, v11, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v13, v10

    const/16 v12, 0x2e

    invoke-static {v10, v11, v12, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const/16 v12, 0xc

    invoke-static {v4, v5, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v13, v4

    const/16 v12, 0x19

    invoke-static {v4, v5, v12, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    const/16 v12, 0x21

    invoke-static {v10, v11, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v13, v10

    aget-wide v17, v2, v19

    sub-long v8, v8, v17

    aget-wide v17, v2, v21

    aget-wide v19, v3, v20

    add-long v17, v17, v19

    sub-long v4, v4, v17

    aget-wide v17, v2, v22

    aget-wide v19, v3, v25

    add-long v17, v17, v19

    sub-long v13, v13, v17

    aget-wide v17, v2, v23

    add-long v17, v17, v6

    sub-long v10, v10, v17

    const/4 v6, 0x5

    invoke-static {v10, v11, v6, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const/16 v7, 0x25

    invoke-static {v4, v5, v7, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v13, v4

    const/16 v7, 0x17

    invoke-static {v4, v5, v7, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    const/16 v7, 0x28

    invoke-static {v10, v11, v7, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v13, v10

    const/16 v7, 0x34

    invoke-static {v10, v11, v7, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const/16 v7, 0x39

    invoke-static {v4, v5, v7, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v13, v4

    const/16 v7, 0xe

    invoke-static {v4, v5, v7, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    const/16 v7, 0x10

    invoke-static {v10, v11, v7, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v17

    sub-long v14, v13, v17

    add-int/lit8 v1, v1, -0x2

    move-wide v11, v4

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v10, 0x1

    const/4 v13, 0x2

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    aget-wide v4, v2, v1

    sub-long/2addr v8, v4

    const/4 v4, 0x1

    aget-wide v5, v2, v4

    aget-wide v19, v3, v1

    add-long v5, v5, v19

    sub-long/2addr v11, v5

    const/4 v5, 0x2

    aget-wide v6, v2, v5

    aget-wide v19, v3, v4

    add-long v6, v6, v19

    sub-long/2addr v14, v6

    aget-wide v6, v2, v16

    sub-long v17, v17, v6

    aput-wide v8, p2, v1

    aput-wide v11, p2, v4

    aput-wide v14, p2, v5

    aput-wide v17, p2, v16

    return-void
.end method

.method encryptBlock([J[J)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v5

    array-length v6, v2

    const/16 v7, 0x9

    if-eq v6, v7, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    array-length v6, v3

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const/4 v6, 0x0

    aget-wide v8, p1, v6

    const/4 v10, 0x1

    aget-wide v11, p1, v10

    const/4 v13, 0x2

    aget-wide v14, p1, v13

    const/16 v16, 0x3

    aget-wide v17, p1, v16

    aget-wide v19, v2, v6

    add-long v8, v8, v19

    aget-wide v19, v2, v10

    aget-wide v21, v3, v6

    add-long v19, v19, v21

    add-long v11, v11, v19

    aget-wide v19, v2, v13

    aget-wide v21, v3, v10

    add-long v19, v19, v21

    add-long v14, v14, v19

    aget-wide v19, v2, v16

    add-long v17, v17, v19

    const/4 v1, 0x1

    move-wide/from16 v30, v14

    move-wide/from16 v13, v17

    move-wide/from16 v17, v30

    :goto_0
    const/16 v10, 0x12

    if-ge v1, v10, :cond_2

    aget v10, v4, v1

    aget v15, v5, v1

    const/16 v6, 0xe

    add-long/2addr v8, v11

    invoke-static {v11, v12, v6, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v6, 0x10

    move-wide/from16 v23, v8

    add-long v7, v17, v13

    invoke-static {v13, v14, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v6, 0x34

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    add-long v4, v23, v13

    invoke-static {v13, v14, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v6, 0x39

    add-long/2addr v7, v11

    invoke-static {v11, v12, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v6, 0x17

    add-long/2addr v4, v11

    invoke-static {v11, v12, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v6, 0x28

    add-long/2addr v7, v13

    invoke-static {v13, v14, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    add-long/2addr v4, v13

    const/4 v6, 0x5

    invoke-static {v13, v14, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v9, 0x25

    add-long/2addr v7, v11

    invoke-static {v11, v12, v9, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    aget-wide v17, v2, v10

    add-long v4, v4, v17

    add-int/lit8 v9, v10, 0x1

    aget-wide v17, v2, v9

    aget-wide v19, v3, v15

    add-long v17, v17, v19

    add-long v11, v11, v17

    add-int/lit8 v17, v10, 0x2

    aget-wide v18, v2, v17

    add-int/lit8 v20, v15, 0x1

    aget-wide v21, v3, v20

    add-long v18, v18, v21

    add-long v7, v7, v18

    add-int/lit8 v18, v10, 0x3

    aget-wide v21, v2, v18

    move-wide/from16 v27, v7

    int-to-long v6, v1

    add-long v21, v21, v6

    add-long v13, v13, v21

    const/16 v8, 0x19

    add-long/2addr v4, v11

    invoke-static {v11, v12, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v8, 0x21

    move/from16 v29, v1

    add-long v0, v27, v13

    invoke-static {v13, v14, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v8, 0x2e

    add-long/2addr v4, v13

    invoke-static {v13, v14, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v8, 0xc

    add-long/2addr v0, v11

    invoke-static {v11, v12, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v8, 0x3a

    add-long/2addr v4, v11

    invoke-static {v11, v12, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v8, 0x16

    add-long/2addr v0, v13

    invoke-static {v13, v14, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    add-long/2addr v4, v13

    const/16 v8, 0x20

    invoke-static {v13, v14, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    add-long/2addr v0, v11

    invoke-static {v11, v12, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    aget-wide v8, v2, v9

    add-long/2addr v8, v4

    aget-wide v4, v2, v17

    aget-wide v19, v3, v20

    add-long v4, v4, v19

    add-long/2addr v11, v4

    aget-wide v4, v2, v18

    const/16 v17, 0x2

    add-int/lit8 v15, v15, 0x2

    aget-wide v17, v3, v15

    add-long v4, v4, v17

    add-long v17, v0, v4

    add-int/lit8 v10, v10, 0x4

    aget-wide v0, v2, v10

    add-long/2addr v0, v6

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    add-long/2addr v13, v0

    add-int/lit8 v1, v29, 0x2

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v0, p0

    const/4 v6, 0x0

    const/4 v7, 0x5

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    aput-wide v8, p2, v0

    const/4 v0, 0x1

    aput-wide v11, p2, v0

    const/4 v0, 0x2

    aput-wide v17, p2, v0

    aput-wide v13, p2, v16

    return-void
.end method
