.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish512Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x2e

.field private static final ROTATION_0_1:I = 0x24

.field private static final ROTATION_0_2:I = 0x13

.field private static final ROTATION_0_3:I = 0x25

.field private static final ROTATION_1_0:I = 0x21

.field private static final ROTATION_1_1:I = 0x1b

.field private static final ROTATION_1_2:I = 0xe

.field private static final ROTATION_1_3:I = 0x2a

.field private static final ROTATION_2_0:I = 0x11

.field private static final ROTATION_2_1:I = 0x31

.field private static final ROTATION_2_2:I = 0x24

.field private static final ROTATION_2_3:I = 0x27

.field private static final ROTATION_3_0:I = 0x2c

.field private static final ROTATION_3_1:I = 0x9

.field private static final ROTATION_3_2:I = 0x36

.field private static final ROTATION_3_3:I = 0x38

.field private static final ROTATION_4_0:I = 0x27

.field private static final ROTATION_4_1:I = 0x1e

.field private static final ROTATION_4_2:I = 0x22

.field private static final ROTATION_4_3:I = 0x18

.field private static final ROTATION_5_0:I = 0xd

.field private static final ROTATION_5_1:I = 0x32

.field private static final ROTATION_5_2:I = 0xa

.field private static final ROTATION_5_3:I = 0x11

.field private static final ROTATION_6_0:I = 0x19

.field private static final ROTATION_6_1:I = 0x1d

.field private static final ROTATION_6_2:I = 0x27

.field private static final ROTATION_6_3:I = 0x2b

.field private static final ROTATION_7_0:I = 0x8

.field private static final ROTATION_7_1:I = 0x23

.field private static final ROTATION_7_2:I = 0x38

.field private static final ROTATION_7_3:I = 0x16


# direct methods
.method protected constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method public decryptBlock([J[J)V
    .locals 72

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->kw:[J

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$200()[I

    move-result-object v5

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v6

    array-length v7, v3

    const/16 v8, 0x11

    if-eq v7, v8, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    array-length v7, v4

    const/4 v9, 0x5

    if-eq v7, v9, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const/4 v7, 0x0

    aget-wide v10, p1, v7

    const/4 v12, 0x1

    aget-wide v13, p1, v12

    const/4 v15, 0x2

    aget-wide v16, p1, v15

    const/16 v18, 0x3

    aget-wide v19, p1, v18

    const/16 v21, 0x4

    aget-wide v22, p1, v21

    aget-wide v24, p1, v9

    const/16 v26, 0x6

    aget-wide v27, p1, v26

    const/16 v29, 0x7

    aget-wide v30, p1, v29

    const/16 v1, 0x11

    :goto_0
    if-lt v1, v12, :cond_2

    aget v32, v5, v1

    aget v33, v6, v1

    add-int/lit8 v34, v32, 0x1

    aget-wide v35, v3, v34

    sub-long v10, v10, v35

    add-int/lit8 v35, v32, 0x2

    aget-wide v36, v3, v35

    sub-long v13, v13, v36

    add-int/lit8 v36, v32, 0x3

    aget-wide v37, v3, v36

    sub-long v7, v16, v37

    add-int/lit8 v16, v32, 0x4

    aget-wide v37, v3, v16

    move-wide/from16 v39, v10

    sub-long v9, v19, v37

    add-int/lit8 v11, v32, 0x5

    aget-wide v19, v3, v11

    move-wide/from16 v41, v13

    sub-long v12, v22, v19

    add-int/lit8 v14, v32, 0x6

    aget-wide v19, v3, v14

    add-int/lit8 v17, v33, 0x1

    aget-wide v22, v4, v17

    add-long v19, v19, v22

    move-object/from16 v43, v5

    move-object/from16 v44, v6

    sub-long v5, v24, v19

    add-int/lit8 v19, v32, 0x7

    aget-wide v22, v3, v19

    add-int/lit8 v20, v33, 0x2

    aget-wide v24, v4, v20

    add-long v22, v22, v24

    move/from16 v45, v14

    sub-long v14, v27, v22

    add-int/lit8 v20, v32, 0x8

    aget-wide v22, v3, v20

    move-object/from16 v46, v3

    int-to-long v2, v1

    add-long v22, v22, v2

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move/from16 v47, v1

    sub-long v0, v30, v22

    move-wide/from16 v48, v2

    const/16 v2, 0x8

    move-object/from16 v50, v4

    move-wide/from16 v3, v41

    invoke-static {v3, v4, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    const/16 v4, 0x23

    move-wide/from16 v51, v14

    move-wide/from16 v14, v39

    invoke-static {v0, v1, v4, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v14, v0

    const/16 v4, 0x38

    invoke-static {v5, v6, v4, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v5

    sub-long/2addr v7, v5

    const/16 v4, 0x16

    invoke-static {v9, v10, v4, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v12, v9

    const/16 v4, 0x19

    invoke-static {v2, v3, v4, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v4, 0x1d

    move/from16 v53, v11

    move-wide/from16 v54, v12

    move-wide/from16 v11, v51

    invoke-static {v9, v10, v4, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v11, v9

    const/16 v4, 0x27

    invoke-static {v5, v6, v4, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v5

    sub-long/2addr v14, v5

    const/16 v13, 0x2b

    invoke-static {v0, v1, v13, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/16 v13, 0xd

    invoke-static {v2, v3, v13, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    const/16 v13, 0x32

    move-wide/from16 v56, v5

    move-wide/from16 v4, v54

    invoke-static {v0, v1, v13, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v6, 0xa

    move-wide/from16 v58, v0

    move-wide/from16 v0, v56

    invoke-static {v0, v1, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v11, v0

    const/16 v6, 0x11

    invoke-static {v9, v10, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v14, v9

    const/16 v6, 0x27

    invoke-static {v2, v3, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    const/16 v6, 0x1e

    invoke-static {v9, v10, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const/16 v6, 0x22

    invoke-static {v0, v1, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v6, 0x18

    move-wide/from16 v60, v0

    move-wide/from16 v0, v58

    invoke-static {v0, v1, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v11, v0

    aget-wide v22, v46, v32

    sub-long v14, v14, v22

    aget-wide v22, v46, v34

    sub-long v2, v2, v22

    aget-wide v22, v46, v35

    sub-long v7, v7, v22

    aget-wide v22, v46, v36

    sub-long v9, v9, v22

    aget-wide v22, v46, v16

    sub-long v4, v4, v22

    aget-wide v22, v46, v53

    aget-wide v24, v50, v33

    add-long v22, v22, v24

    move-wide/from16 v62, v4

    sub-long v4, v60, v22

    aget-wide v22, v46, v45

    aget-wide v16, v50, v17

    add-long v22, v22, v16

    sub-long v11, v11, v22

    aget-wide v16, v46, v19

    add-long v16, v16, v48

    sub-long v0, v0, v16

    const/16 v6, 0x2c

    invoke-static {v2, v3, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v11, v2

    const/16 v6, 0x9

    invoke-static {v0, v1, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v14, v0

    const/16 v6, 0x36

    invoke-static {v4, v5, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v7, v4

    move-wide/from16 v64, v0

    move-wide/from16 v0, v62

    const/16 v6, 0x38

    invoke-static {v9, v10, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v0, v9

    const/16 v6, 0x11

    invoke-static {v2, v3, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v13, 0x31

    invoke-static {v9, v10, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v11, v9

    const/16 v13, 0x24

    invoke-static {v4, v5, v13, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v14, v4

    move-wide/from16 v66, v14

    move-wide/from16 v13, v64

    const/16 v15, 0x27

    invoke-static {v13, v14, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v13

    sub-long/2addr v7, v13

    const/16 v15, 0x21

    invoke-static {v2, v3, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    const/16 v15, 0x1b

    invoke-static {v13, v14, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v13

    sub-long/2addr v0, v13

    const/16 v15, 0xe

    invoke-static {v4, v5, v15, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v11, v4

    const/16 v15, 0x2a

    move-wide/from16 v68, v7

    move-wide/from16 v6, v66

    invoke-static {v9, v10, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const/16 v10, 0x2e

    invoke-static {v2, v3, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v6, v2

    move-wide/from16 v70, v2

    move-wide/from16 v2, v68

    const/16 v10, 0x24

    invoke-static {v8, v9, v10, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v19

    sub-long v16, v2, v19

    const/16 v2, 0x13

    invoke-static {v4, v5, v2, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    sub-long v22, v0, v24

    const/16 v0, 0x25

    invoke-static {v13, v14, v0, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v30

    sub-long v27, v11, v30

    add-int/lit8 v1, v47, -0x2

    move-wide v10, v6

    move-object/from16 v5, v43

    move-object/from16 v6, v44

    move-object/from16 v3, v46

    move-object/from16 v4, v50

    move-wide/from16 v13, v70

    move-object/from16 v0, p0

    const/4 v7, 0x0

    const/16 v8, 0x11

    const/4 v9, 0x5

    const/4 v12, 0x1

    const/4 v15, 0x2

    goto/16 :goto_0

    :cond_2
    move-object/from16 v46, v3

    move-object/from16 v50, v4

    const/4 v0, 0x0

    aget-wide v1, v46, v0

    sub-long/2addr v10, v1

    const/4 v1, 0x1

    aget-wide v2, v46, v1

    sub-long/2addr v13, v2

    const/4 v1, 0x2

    aget-wide v2, v46, v1

    sub-long v16, v16, v2

    aget-wide v1, v46, v18

    sub-long v19, v19, v1

    aget-wide v1, v46, v21

    sub-long v22, v22, v1

    const/4 v1, 0x5

    aget-wide v2, v46, v1

    aget-wide v4, v50, v0

    add-long/2addr v2, v4

    sub-long v24, v24, v2

    aget-wide v1, v46, v26

    const/4 v3, 0x1

    aget-wide v4, v50, v3

    add-long/2addr v1, v4

    sub-long v27, v27, v1

    aget-wide v1, v46, v29

    sub-long v30, v30, v1

    aput-wide v10, p2, v0

    aput-wide v13, p2, v3

    const/4 v0, 0x2

    aput-wide v16, p2, v0

    aput-wide v19, p2, v18

    aput-wide v22, p2, v21

    const/4 v0, 0x5

    aput-wide v24, p2, v0

    aput-wide v27, p2, v26

    aput-wide v30, p2, v29

    return-void
.end method

.method public encryptBlock([J[J)V
    .locals 72

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->kw:[J

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$200()[I

    move-result-object v5

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v6

    array-length v7, v3

    const/16 v8, 0x11

    if-eq v7, v8, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    array-length v7, v4

    const/4 v9, 0x5

    if-eq v7, v9, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const/4 v7, 0x0

    aget-wide v10, p1, v7

    const/4 v12, 0x1

    aget-wide v13, p1, v12

    const/4 v15, 0x2

    aget-wide v16, p1, v15

    const/16 v18, 0x3

    aget-wide v19, p1, v18

    const/16 v21, 0x4

    aget-wide v22, p1, v21

    aget-wide v24, p1, v9

    const/16 v26, 0x6

    aget-wide v27, p1, v26

    const/16 v29, 0x7

    aget-wide v30, p1, v29

    aget-wide v32, v3, v7

    add-long v10, v10, v32

    aget-wide v32, v3, v12

    add-long v13, v13, v32

    aget-wide v32, v3, v15

    add-long v16, v16, v32

    aget-wide v32, v3, v18

    add-long v19, v19, v32

    aget-wide v32, v3, v21

    add-long v22, v22, v32

    aget-wide v32, v3, v9

    aget-wide v34, v4, v7

    add-long v32, v32, v34

    add-long v24, v24, v32

    aget-wide v32, v3, v26

    aget-wide v34, v4, v12

    add-long v32, v32, v34

    add-long v27, v27, v32

    aget-wide v32, v3, v29

    add-long v30, v30, v32

    move-wide/from16 v7, v19

    move-wide/from16 v36, v24

    move-wide/from16 v38, v30

    const/4 v1, 0x1

    :goto_0
    const/16 v9, 0x12

    if-ge v1, v9, :cond_2

    aget v9, v5, v1

    aget v19, v6, v1

    const/16 v12, 0x2e

    add-long/2addr v10, v13

    invoke-static {v13, v14, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    move-object/from16 v40, v5

    move-object/from16 v41, v6

    add-long v5, v16, v7

    const/16 v14, 0x24

    invoke-static {v7, v8, v14, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v15, 0x13

    move/from16 v42, v1

    move-object/from16 v43, v3

    move-wide/from16 v0, v36

    add-long v2, v22, v0

    invoke-static {v0, v1, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v15, 0x25

    move-wide/from16 v44, v7

    move/from16 v46, v9

    move-wide/from16 v47, v10

    move-wide/from16 v7, v38

    add-long v9, v27, v7

    invoke-static {v7, v8, v15, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v11, 0x21

    add-long/2addr v5, v12

    invoke-static {v12, v13, v11, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v13, 0x1b

    add-long/2addr v2, v7

    invoke-static {v7, v8, v13, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v13, 0xe

    add-long/2addr v9, v0

    invoke-static {v0, v1, v13, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v13, 0x2a

    add-long v14, v47, v44

    move-object/from16 v49, v4

    move-wide/from16 v50, v5

    move-wide/from16 v4, v44

    invoke-static {v4, v5, v13, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long/2addr v2, v11

    const/16 v6, 0x11

    invoke-static {v11, v12, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v6, 0x31

    add-long/2addr v9, v4

    invoke-static {v4, v5, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    add-long/2addr v14, v0

    const/16 v6, 0x24

    invoke-static {v0, v1, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v52, v2

    add-long v2, v50, v7

    const/16 v6, 0x27

    invoke-static {v7, v8, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v13, 0x2c

    add-long/2addr v9, v11

    invoke-static {v11, v12, v13, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v13, 0x9

    add-long/2addr v14, v7

    invoke-static {v7, v8, v13, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v13, 0x36

    add-long/2addr v2, v0

    invoke-static {v0, v1, v13, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v54, v7

    add-long v6, v52, v4

    const/16 v8, 0x38

    invoke-static {v4, v5, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    aget-wide v16, v43, v46

    add-long v14, v14, v16

    add-int/lit8 v13, v46, 0x1

    aget-wide v16, v43, v13

    add-long v11, v11, v16

    add-int/lit8 v16, v46, 0x2

    aget-wide v22, v43, v16

    add-long v2, v2, v22

    add-int/lit8 v17, v46, 0x3

    aget-wide v22, v43, v17

    add-long v4, v4, v22

    add-int/lit8 v20, v46, 0x4

    aget-wide v22, v43, v20

    add-long v6, v6, v22

    add-int/lit8 v22, v46, 0x5

    aget-wide v23, v43, v22

    aget-wide v27, v49, v19

    add-long v23, v23, v27

    add-long v0, v0, v23

    add-int/lit8 v23, v46, 0x6

    aget-wide v24, v43, v23

    add-int/lit8 v27, v19, 0x1

    aget-wide v30, v49, v27

    add-long v24, v24, v30

    add-long v9, v9, v24

    add-int/lit8 v24, v46, 0x7

    aget-wide v30, v43, v24

    move-wide/from16 v56, v9

    move/from16 v8, v42

    int-to-long v9, v8

    add-long v30, v30, v9

    move/from16 v58, v8

    move-wide/from16 v59, v9

    add-long v8, v54, v30

    add-long/2addr v14, v11

    const/16 v10, 0x27

    invoke-static {v11, v12, v10, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v10, 0x1e

    add-long/2addr v2, v4

    invoke-static {v4, v5, v10, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v10, 0x22

    add-long/2addr v6, v0

    invoke-static {v0, v1, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v10, 0x18

    move-wide/from16 v61, v4

    add-long v4, v56, v8

    invoke-static {v8, v9, v10, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v10, 0xd

    add-long/2addr v2, v11

    invoke-static {v11, v12, v10, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    const/16 v12, 0x32

    add-long/2addr v6, v8

    invoke-static {v8, v9, v12, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v12, 0xa

    add-long/2addr v4, v0

    invoke-static {v0, v1, v12, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v14, v14, v61

    move-wide/from16 v64, v2

    move/from16 v63, v13

    move-wide/from16 v12, v61

    const/16 v2, 0x11

    invoke-static {v12, v13, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v3, 0x19

    add-long/2addr v6, v10

    invoke-static {v10, v11, v3, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    const/16 v3, 0x1d

    add-long/2addr v4, v12

    invoke-static {v12, v13, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    add-long/2addr v14, v0

    const/16 v3, 0x27

    invoke-static {v0, v1, v3, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v3, 0x2b

    move-wide/from16 v66, v6

    add-long v6, v64, v8

    invoke-static {v8, v9, v3, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long/2addr v4, v10

    const/16 v3, 0x8

    invoke-static {v10, v11, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    const/16 v2, 0x23

    add-long/2addr v14, v8

    invoke-static {v8, v9, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long/2addr v6, v0

    const/16 v2, 0x38

    invoke-static {v0, v1, v2, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    const/16 v2, 0x16

    move-wide/from16 v68, v4

    add-long v3, v66, v12

    invoke-static {v12, v13, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    aget-wide v30, v43, v63

    add-long v14, v14, v30

    aget-wide v30, v43, v16

    add-long v10, v10, v30

    aget-wide v16, v43, v17

    add-long v16, v6, v16

    aget-wide v5, v43, v20

    add-long/2addr v5, v12

    aget-wide v12, v43, v22

    add-long v2, v3, v12

    aget-wide v12, v43, v23

    aget-wide v22, v49, v27

    add-long v12, v12, v22

    add-long v36, v0, v12

    aget-wide v0, v43, v24

    const/4 v4, 0x2

    add-int/lit8 v19, v19, 0x2

    aget-wide v12, v49, v19

    add-long/2addr v0, v12

    add-long v27, v68, v0

    const/16 v0, 0x8

    add-int/lit8 v0, v46, 0x8

    aget-wide v0, v43, v0

    add-long v0, v0, v59

    const-wide/16 v12, 0x1

    add-long/2addr v0, v12

    add-long v38, v8, v0

    add-int/lit8 v1, v58, 0x2

    move-wide/from16 v22, v2

    move-wide v7, v5

    move-object/from16 v5, v40

    move-object/from16 v6, v41

    move-object/from16 v3, v43

    move-object/from16 v4, v49

    move-object/from16 v0, p0

    const/4 v12, 0x1

    move-wide/from16 v70, v14

    const/4 v15, 0x2

    move-wide v13, v10

    move-wide/from16 v10, v70

    goto/16 :goto_0

    :cond_2
    move-wide/from16 v19, v7

    move-wide/from16 v0, v36

    move-wide/from16 v7, v38

    const/4 v3, 0x0

    aput-wide v10, p2, v3

    const/4 v3, 0x1

    aput-wide v13, p2, v3

    const/4 v3, 0x2

    aput-wide v16, p2, v3

    aput-wide v19, p2, v18

    aput-wide v22, p2, v21

    const/4 v3, 0x5

    aput-wide v0, p2, v3

    aput-wide v27, p2, v26

    aput-wide v7, p2, v29

    return-void
.end method
