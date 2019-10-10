.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish1024Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x18

.field private static final ROTATION_0_1:I = 0xd

.field private static final ROTATION_0_2:I = 0x8

.field private static final ROTATION_0_3:I = 0x2f

.field private static final ROTATION_0_4:I = 0x8

.field private static final ROTATION_0_5:I = 0x11

.field private static final ROTATION_0_6:I = 0x16

.field private static final ROTATION_0_7:I = 0x25

.field private static final ROTATION_1_0:I = 0x26

.field private static final ROTATION_1_1:I = 0x13

.field private static final ROTATION_1_2:I = 0xa

.field private static final ROTATION_1_3:I = 0x37

.field private static final ROTATION_1_4:I = 0x31

.field private static final ROTATION_1_5:I = 0x12

.field private static final ROTATION_1_6:I = 0x17

.field private static final ROTATION_1_7:I = 0x34

.field private static final ROTATION_2_0:I = 0x21

.field private static final ROTATION_2_1:I = 0x4

.field private static final ROTATION_2_2:I = 0x33

.field private static final ROTATION_2_3:I = 0xd

.field private static final ROTATION_2_4:I = 0x22

.field private static final ROTATION_2_5:I = 0x29

.field private static final ROTATION_2_6:I = 0x3b

.field private static final ROTATION_2_7:I = 0x11

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x14

.field private static final ROTATION_3_2:I = 0x30

.field private static final ROTATION_3_3:I = 0x29

.field private static final ROTATION_3_4:I = 0x2f

.field private static final ROTATION_3_5:I = 0x1c

.field private static final ROTATION_3_6:I = 0x10

.field private static final ROTATION_3_7:I = 0x19

.field private static final ROTATION_4_0:I = 0x29

.field private static final ROTATION_4_1:I = 0x9

.field private static final ROTATION_4_2:I = 0x25

.field private static final ROTATION_4_3:I = 0x1f

.field private static final ROTATION_4_4:I = 0xc

.field private static final ROTATION_4_5:I = 0x2f

.field private static final ROTATION_4_6:I = 0x2c

.field private static final ROTATION_4_7:I = 0x1e

.field private static final ROTATION_5_0:I = 0x10

.field private static final ROTATION_5_1:I = 0x22

.field private static final ROTATION_5_2:I = 0x38

.field private static final ROTATION_5_3:I = 0x33

.field private static final ROTATION_5_4:I = 0x4

.field private static final ROTATION_5_5:I = 0x35

.field private static final ROTATION_5_6:I = 0x2a

.field private static final ROTATION_5_7:I = 0x29

.field private static final ROTATION_6_0:I = 0x1f

.field private static final ROTATION_6_1:I = 0x2c

.field private static final ROTATION_6_2:I = 0x2f

.field private static final ROTATION_6_3:I = 0x2e

.field private static final ROTATION_6_4:I = 0x13

.field private static final ROTATION_6_5:I = 0x2a

.field private static final ROTATION_6_6:I = 0x2c

.field private static final ROTATION_6_7:I = 0x19

.field private static final ROTATION_7_0:I = 0x9

.field private static final ROTATION_7_1:I = 0x30

.field private static final ROTATION_7_2:I = 0x23

.field private static final ROTATION_7_3:I = 0x34

.field private static final ROTATION_7_4:I = 0x17

.field private static final ROTATION_7_5:I = 0x1f

.field private static final ROTATION_7_6:I = 0x25

.field private static final ROTATION_7_7:I = 0x14


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 227

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v5

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v6

    array-length v7, v3

    const/16 v8, 0x21

    if-eq v7, v8, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    array-length v7, v4

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const/4 v7, 0x0

    aget-wide v9, p1, v7

    const/4 v11, 0x1

    aget-wide v12, p1, v11

    const/4 v14, 0x2

    aget-wide v15, p1, v14

    const/16 v17, 0x3

    aget-wide v18, p1, v17

    const/4 v14, 0x4

    aget-wide v20, p1, v14

    aget-wide v22, p1, v8

    const/16 v24, 0x6

    aget-wide v25, p1, v24

    const/16 v27, 0x7

    aget-wide v28, p1, v27

    const/16 v7, 0x8

    aget-wide v30, p1, v7

    const/16 v7, 0x9

    aget-wide v32, p1, v7

    const/16 v8, 0xa

    aget-wide v34, p1, v8

    const/16 v36, 0xb

    aget-wide v37, p1, v36

    const/16 v8, 0xc

    aget-wide v39, p1, v8

    const/16 v8, 0xd

    aget-wide v41, p1, v8

    const/16 v43, 0xe

    aget-wide v44, p1, v43

    const/16 v46, 0xf

    aget-wide v46, p1, v46

    const/16 v1, 0x13

    :goto_0
    if-lt v1, v11, :cond_2

    aget v48, v5, v1

    aget v49, v6, v1

    add-int/lit8 v50, v48, 0x1

    aget-wide v51, v3, v50

    sub-long v9, v9, v51

    add-int/lit8 v51, v48, 0x2

    aget-wide v52, v3, v51

    sub-long v12, v12, v52

    add-int/lit8 v52, v48, 0x3

    aget-wide v53, v3, v52

    sub-long v14, v15, v53

    add-int/lit8 v16, v48, 0x4

    aget-wide v53, v3, v16

    move-wide/from16 v55, v12

    sub-long v11, v18, v53

    add-int/lit8 v13, v48, 0x5

    aget-wide v18, v3, v13

    sub-long v7, v20, v18

    add-int/lit8 v18, v48, 0x6

    aget-wide v20, v3, v18

    move-object/from16 v57, v5

    move-object/from16 v58, v6

    sub-long v5, v22, v20

    add-int/lit8 v19, v48, 0x7

    aget-wide v20, v3, v19

    move-wide/from16 v59, v11

    sub-long v11, v25, v20

    add-int/lit8 v20, v48, 0x8

    aget-wide v21, v3, v20

    move-wide/from16 v61, v5

    sub-long v5, v28, v21

    add-int/lit8 v21, v48, 0x9

    aget-wide v22, v3, v21

    move-wide/from16 v63, v5

    sub-long v5, v30, v22

    add-int/lit8 v22, v48, 0xa

    aget-wide v25, v3, v22

    move-wide/from16 v65, v5

    sub-long v5, v32, v25

    add-int/lit8 v23, v48, 0xb

    aget-wide v25, v3, v23

    move-wide/from16 v67, v5

    sub-long v5, v34, v25

    add-int/lit8 v25, v48, 0xc

    aget-wide v28, v3, v25

    move-wide/from16 v69, v5

    sub-long v5, v37, v28

    add-int/lit8 v26, v48, 0xd

    aget-wide v28, v3, v26

    move-wide/from16 v71, v7

    sub-long v7, v39, v28

    add-int/lit8 v28, v48, 0xe

    aget-wide v30, v3, v28

    add-int/lit8 v29, v49, 0x1

    aget-wide v32, v4, v29

    add-long v30, v30, v32

    move-wide/from16 v73, v7

    sub-long v7, v41, v30

    add-int/lit8 v30, v48, 0xf

    aget-wide v32, v3, v30

    add-int/lit8 v31, v49, 0x2

    aget-wide v34, v4, v31

    add-long v32, v32, v34

    move-wide/from16 v75, v7

    sub-long v7, v44, v32

    add-int/lit8 v31, v48, 0x10

    aget-wide v32, v3, v31

    move-object/from16 v77, v3

    int-to-long v2, v1

    add-long v32, v32, v2

    const-wide/16 v34, 0x1

    add-long v32, v32, v34

    move/from16 v78, v1

    sub-long v0, v46, v32

    move-wide/from16 v79, v2

    const/16 v2, 0x9

    invoke-static {v0, v1, v2, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    const/16 v2, 0x30

    invoke-static {v5, v6, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    const/16 v5, 0x23

    move-wide/from16 v81, v2

    move-wide/from16 v2, v75

    invoke-static {v2, v3, v5, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v11, v2

    const/16 v5, 0x34

    move-wide/from16 v85, v0

    move-wide/from16 v83, v2

    move-wide/from16 v0, v67

    move-wide/from16 v2, v71

    invoke-static {v0, v1, v5, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v5, 0x17

    move-wide/from16 v87, v0

    move-wide/from16 v0, v55

    invoke-static {v0, v1, v5, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/16 v5, 0x1f

    move-wide/from16 v91, v0

    move-wide/from16 v89, v7

    move-wide/from16 v6, v61

    move-wide/from16 v0, v65

    invoke-static {v6, v7, v5, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v5

    sub-long/2addr v0, v5

    const/16 v7, 0x25

    move-wide/from16 v93, v0

    move-wide/from16 v95, v11

    move-wide/from16 v0, v59

    move-wide/from16 v11, v69

    invoke-static {v0, v1, v7, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v7, v11, v0

    const/16 v11, 0x14

    move-wide/from16 v98, v7

    move/from16 v97, v13

    move-wide/from16 v12, v63

    move-wide/from16 v7, v73

    invoke-static {v12, v13, v11, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v7, v11

    const/16 v13, 0x1f

    invoke-static {v11, v12, v13, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v9, v11

    const/16 v13, 0x2c

    invoke-static {v5, v6, v13, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v5

    sub-long/2addr v14, v5

    const/16 v13, 0x2f

    invoke-static {v0, v1, v13, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v13, 0x2e

    move-wide/from16 v103, v0

    move-object/from16 v100, v4

    move-wide/from16 v101, v5

    move-wide/from16 v0, v91

    move-wide/from16 v4, v95

    invoke-static {v0, v1, v13, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v6, 0x13

    move-wide/from16 v105, v0

    move-wide/from16 v0, v85

    invoke-static {v0, v1, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/16 v6, 0x2a

    move-wide/from16 v107, v7

    move-wide/from16 v109, v11

    move-wide/from16 v7, v83

    move-wide/from16 v11, v89

    invoke-static {v7, v8, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v11, v6

    const/16 v8, 0x2c

    move-wide/from16 v113, v0

    move-wide/from16 v111, v11

    move-wide/from16 v11, v81

    move-wide/from16 v0, v93

    invoke-static {v11, v12, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v0, v11

    const/16 v8, 0x19

    move-wide/from16 v115, v0

    move-wide/from16 v117, v2

    move-wide/from16 v0, v87

    move-wide/from16 v2, v98

    invoke-static {v0, v1, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v8, 0x10

    invoke-static {v0, v1, v8, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    const/16 v8, 0x22

    invoke-static {v6, v7, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v14, v6

    const/16 v8, 0x38

    invoke-static {v11, v12, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v4, v11

    const/16 v8, 0x33

    move-wide/from16 v119, v6

    move-wide/from16 v121, v11

    move-wide/from16 v11, v113

    move-wide/from16 v6, v117

    invoke-static {v11, v12, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v6, v11

    move-wide/from16 v123, v11

    move-wide/from16 v11, v109

    const/4 v8, 0x4

    invoke-static {v11, v12, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v2, v11

    const/16 v8, 0x35

    move-wide/from16 v127, v0

    move-wide/from16 v125, v2

    move-wide/from16 v2, v103

    move-wide/from16 v0, v107

    invoke-static {v2, v3, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v8, 0x2a

    move-wide/from16 v129, v0

    move-wide/from16 v131, v4

    move-wide/from16 v0, v101

    move-wide/from16 v4, v111

    invoke-static {v0, v1, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v8, 0x29

    move-wide/from16 v133, v4

    move-wide/from16 v135, v11

    move-wide/from16 v4, v105

    move-wide/from16 v11, v115

    invoke-static {v4, v5, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v11, v4

    invoke-static {v4, v5, v8, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v9, v4

    const/16 v8, 0x9

    invoke-static {v2, v3, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    const/16 v8, 0x25

    invoke-static {v0, v1, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    const/16 v8, 0x1f

    move-wide/from16 v137, v0

    move-wide/from16 v139, v6

    move-wide/from16 v0, v131

    move-wide/from16 v6, v135

    invoke-static {v6, v7, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v0, v6

    move-wide/from16 v141, v6

    move-wide/from16 v6, v127

    const/16 v8, 0xc

    invoke-static {v6, v7, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v11, v6

    const/16 v8, 0x2f

    move-wide/from16 v143, v6

    move-wide/from16 v145, v11

    move-wide/from16 v6, v121

    move-wide/from16 v11, v125

    invoke-static {v6, v7, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v11, v6

    const/16 v8, 0x2c

    move-wide/from16 v147, v6

    move-wide/from16 v149, v11

    move-wide/from16 v6, v119

    move-wide/from16 v11, v129

    invoke-static {v6, v7, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v11, v6

    const/16 v8, 0x1e

    move-wide/from16 v151, v6

    move-wide/from16 v153, v11

    move-wide/from16 v6, v123

    move-wide/from16 v11, v133

    invoke-static {v6, v7, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v11, v6

    aget-wide v32, v77, v48

    sub-long v9, v9, v32

    aget-wide v32, v77, v50

    sub-long v4, v4, v32

    aget-wide v32, v77, v51

    sub-long v14, v14, v32

    aget-wide v32, v77, v52

    sub-long v2, v2, v32

    aget-wide v32, v77, v16

    move-wide/from16 v155, v2

    sub-long v2, v139, v32

    aget-wide v32, v77, v97

    move-wide/from16 v157, v4

    sub-long v4, v137, v32

    aget-wide v32, v77, v18

    sub-long v0, v0, v32

    aget-wide v18, v77, v19

    move-wide/from16 v159, v4

    sub-long v4, v141, v18

    aget-wide v18, v77, v20

    move-wide/from16 v161, v4

    sub-long v4, v145, v18

    aget-wide v18, v77, v21

    move-wide/from16 v163, v4

    sub-long v4, v143, v18

    aget-wide v18, v77, v22

    move-wide/from16 v165, v2

    sub-long v2, v149, v18

    aget-wide v18, v77, v23

    move-wide/from16 v167, v2

    sub-long v2, v147, v18

    aget-wide v18, v77, v25

    move-wide/from16 v169, v4

    sub-long v4, v153, v18

    aget-wide v18, v77, v26

    aget-wide v20, v100, v49

    add-long v18, v18, v20

    move-wide/from16 v171, v4

    sub-long v4, v151, v18

    aget-wide v18, v77, v28

    aget-wide v20, v100, v29

    add-long v18, v18, v20

    sub-long v11, v11, v18

    aget-wide v18, v77, v30

    add-long v18, v18, v79

    sub-long v6, v6, v18

    const/4 v8, 0x5

    invoke-static {v6, v7, v8, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v9, v6

    const/16 v8, 0x14

    invoke-static {v2, v3, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    const/16 v8, 0x30

    invoke-static {v4, v5, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v8, 0x29

    move-wide/from16 v173, v2

    move-wide/from16 v175, v4

    move-wide/from16 v2, v165

    move-wide/from16 v4, v169

    invoke-static {v4, v5, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v8, 0x2f

    move-wide/from16 v177, v4

    move-wide/from16 v4, v157

    invoke-static {v4, v5, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v11, v4

    const/16 v8, 0x1c

    move-wide/from16 v181, v6

    move-wide/from16 v179, v11

    move-wide/from16 v11, v159

    move-wide/from16 v6, v163

    invoke-static {v11, v12, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v6, v11

    const/16 v8, 0x10

    move-wide/from16 v185, v0

    move-wide/from16 v183, v6

    move-wide/from16 v6, v155

    move-wide/from16 v0, v167

    invoke-static {v6, v7, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v0, v6

    const/16 v8, 0x19

    move-wide/from16 v187, v0

    move-wide/from16 v189, v4

    move-wide/from16 v0, v161

    move-wide/from16 v4, v171

    invoke-static {v0, v1, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v8, 0x21

    invoke-static {v0, v1, v8, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    const/4 v8, 0x4

    invoke-static {v11, v12, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v14, v11

    const/16 v8, 0x33

    invoke-static {v6, v7, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v2, v6

    move-wide/from16 v193, v6

    move-wide/from16 v191, v11

    move-wide/from16 v11, v185

    move-wide/from16 v6, v189

    const/16 v8, 0xd

    invoke-static {v6, v7, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v11, v6

    const/16 v8, 0x22

    move-wide/from16 v195, v6

    move-wide/from16 v6, v181

    invoke-static {v6, v7, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const/16 v8, 0x29

    move-wide/from16 v199, v0

    move-wide/from16 v197, v4

    move-wide/from16 v4, v175

    move-wide/from16 v0, v179

    invoke-static {v4, v5, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v8, 0x3b

    move-wide/from16 v201, v0

    move-wide/from16 v203, v2

    move-wide/from16 v0, v173

    move-wide/from16 v2, v183

    invoke-static {v0, v1, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v8, 0x11

    move-wide/from16 v205, v2

    move-wide/from16 v207, v6

    move-wide/from16 v2, v177

    move-wide/from16 v6, v187

    invoke-static {v2, v3, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v6, v2

    const/16 v8, 0x26

    invoke-static {v2, v3, v8, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v9, v2

    const/16 v8, 0x13

    invoke-static {v4, v5, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v14, v4

    const/16 v8, 0xa

    invoke-static {v0, v1, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v11, v0

    const/16 v8, 0x37

    move-wide/from16 v211, v0

    move-wide/from16 v209, v4

    move-wide/from16 v4, v203

    move-wide/from16 v0, v207

    invoke-static {v0, v1, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v8, 0x31

    move-wide/from16 v213, v0

    move-wide/from16 v0, v199

    invoke-static {v0, v1, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    const/16 v8, 0x12

    move-wide/from16 v217, v2

    move-wide/from16 v215, v6

    move-wide/from16 v6, v193

    move-wide/from16 v2, v197

    invoke-static {v6, v7, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v2, v6

    const/16 v8, 0x17

    move-wide/from16 v221, v0

    move-wide/from16 v219, v2

    move-wide/from16 v2, v191

    move-wide/from16 v0, v201

    invoke-static {v2, v3, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v8, 0x34

    move-wide/from16 v223, v0

    move-wide/from16 v225, v11

    move-wide/from16 v0, v195

    move-wide/from16 v11, v205

    invoke-static {v0, v1, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v11, v0

    const/16 v8, 0x18

    invoke-static {v0, v1, v8, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    const/16 v8, 0xd

    invoke-static {v6, v7, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v18

    sub-long v15, v14, v18

    const/16 v6, 0x8

    invoke-static {v2, v3, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v22

    sub-long v20, v4, v22

    const/16 v2, 0x2f

    move-wide/from16 v7, v221

    move-wide/from16 v3, v225

    invoke-static {v7, v8, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    sub-long v25, v3, v28

    move-wide/from16 v2, v217

    invoke-static {v2, v3, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    sub-long v30, v11, v32

    const/16 v2, 0x11

    move-wide/from16 v3, v211

    move-wide/from16 v6, v215

    invoke-static {v3, v4, v2, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v37

    sub-long v34, v6, v37

    const/16 v2, 0x16

    move-wide/from16 v3, v209

    move-wide/from16 v5, v219

    invoke-static {v3, v4, v2, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v41

    sub-long v39, v5, v41

    const/16 v2, 0x25

    move-wide/from16 v3, v213

    move-wide/from16 v5, v223

    invoke-static {v3, v4, v2, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v46

    sub-long v44, v5, v46

    add-int/lit8 v2, v78, -0x2

    move-wide v12, v0

    move v1, v2

    move-object/from16 v5, v57

    move-object/from16 v6, v58

    move-object/from16 v3, v77

    move-object/from16 v4, v100

    move-object/from16 v0, p0

    const/16 v7, 0x9

    const/16 v8, 0xd

    const/4 v11, 0x1

    const/4 v14, 0x4

    goto/16 :goto_0

    :cond_2
    move-object/from16 v77, v3

    move-object/from16 v100, v4

    const/4 v0, 0x0

    aget-wide v1, v77, v0

    sub-long/2addr v9, v1

    const/4 v0, 0x1

    aget-wide v1, v77, v0

    sub-long/2addr v12, v1

    const/4 v0, 0x2

    aget-wide v1, v77, v0

    sub-long/2addr v15, v1

    aget-wide v0, v77, v17

    sub-long v18, v18, v0

    const/4 v0, 0x4

    aget-wide v1, v77, v0

    sub-long v20, v20, v1

    const/4 v0, 0x5

    aget-wide v1, v77, v0

    sub-long v22, v22, v1

    aget-wide v0, v77, v24

    sub-long v25, v25, v0

    aget-wide v0, v77, v27

    sub-long v28, v28, v0

    const/16 v0, 0x8

    aget-wide v1, v77, v0

    sub-long v30, v30, v1

    const/16 v0, 0x9

    aget-wide v1, v77, v0

    sub-long v32, v32, v1

    const/16 v0, 0xa

    aget-wide v1, v77, v0

    sub-long v34, v34, v1

    aget-wide v0, v77, v36

    sub-long v37, v37, v0

    const/16 v0, 0xc

    aget-wide v1, v77, v0

    sub-long v39, v39, v1

    const/16 v0, 0xd

    aget-wide v1, v77, v0

    const/4 v0, 0x0

    aget-wide v3, v100, v0

    add-long/2addr v1, v3

    sub-long v41, v41, v1

    aget-wide v1, v77, v43

    const/4 v3, 0x1

    aget-wide v4, v100, v3

    add-long/2addr v1, v4

    sub-long v44, v44, v1

    const/16 v1, 0xf

    aget-wide v1, v77, v1

    sub-long v46, v46, v1

    aput-wide v9, p2, v0

    aput-wide v12, p2, v3

    const/4 v0, 0x2

    aput-wide v15, p2, v0

    aput-wide v18, p2, v17

    const/4 v0, 0x4

    aput-wide v20, p2, v0

    const/4 v0, 0x5

    aput-wide v22, p2, v0

    aput-wide v25, p2, v24

    aput-wide v28, p2, v27

    const/16 v0, 0x8

    aput-wide v30, p2, v0

    const/16 v0, 0x9

    aput-wide v32, p2, v0

    const/16 v0, 0xa

    aput-wide v34, p2, v0

    aput-wide v37, p2, v36

    const/16 v0, 0xc

    aput-wide v39, p2, v0

    const/16 v0, 0xd

    aput-wide v41, p2, v0

    aput-wide v44, p2, v43

    const/16 v0, 0xf

    aput-wide v46, p2, v0

    return-void
.end method

.method encryptBlock([J[J)V
    .locals 231

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v5

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v6

    array-length v7, v3

    const/16 v8, 0x21

    if-eq v7, v8, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    array-length v7, v4

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const/4 v7, 0x0

    aget-wide v9, p1, v7

    const/4 v11, 0x1

    aget-wide v12, p1, v11

    const/4 v14, 0x2

    aget-wide v15, p1, v14

    const/16 v17, 0x3

    aget-wide v18, p1, v17

    const/4 v14, 0x4

    aget-wide v20, p1, v14

    aget-wide v22, p1, v8

    const/16 v24, 0x6

    aget-wide v25, p1, v24

    const/16 v27, 0x7

    aget-wide v28, p1, v27

    const/16 v8, 0x8

    aget-wide v30, p1, v8

    const/16 v8, 0x9

    aget-wide v32, p1, v8

    const/16 v8, 0xa

    aget-wide v34, p1, v8

    const/16 v36, 0xb

    aget-wide v37, p1, v36

    const/16 v8, 0xc

    aget-wide v39, p1, v8

    const/16 v8, 0xd

    aget-wide v41, p1, v8

    const/16 v43, 0xe

    aget-wide v44, p1, v43

    const/16 v46, 0xf

    aget-wide v46, p1, v46

    aget-wide v48, v3, v7

    add-long v9, v9, v48

    aget-wide v48, v3, v11

    add-long v12, v12, v48

    const/4 v1, 0x2

    aget-wide v48, v3, v1

    add-long v15, v15, v48

    aget-wide v48, v3, v17

    add-long v18, v18, v48

    aget-wide v48, v3, v14

    add-long v20, v20, v48

    const/4 v1, 0x5

    aget-wide v48, v3, v1

    add-long v22, v22, v48

    aget-wide v48, v3, v24

    add-long v25, v25, v48

    aget-wide v48, v3, v27

    add-long v28, v28, v48

    const/16 v1, 0x8

    aget-wide v48, v3, v1

    add-long v30, v30, v48

    const/16 v1, 0x9

    aget-wide v48, v3, v1

    add-long v32, v32, v48

    const/16 v1, 0xa

    aget-wide v48, v3, v1

    add-long v34, v34, v48

    aget-wide v48, v3, v36

    add-long v37, v37, v48

    const/16 v1, 0xc

    aget-wide v48, v3, v1

    add-long v39, v39, v48

    aget-wide v48, v3, v8

    aget-wide v50, v4, v7

    add-long v48, v48, v50

    add-long v41, v41, v48

    aget-wide v48, v3, v43

    aget-wide v50, v4, v11

    add-long v48, v48, v50

    add-long v44, v44, v48

    const/16 v1, 0xf

    aget-wide v48, v3, v1

    add-long v46, v46, v48

    move-wide/from16 v52, v22

    move-wide/from16 v54, v28

    move-wide/from16 v56, v32

    move-wide/from16 v58, v37

    move-wide/from16 v60, v41

    move-wide/from16 v62, v46

    const/4 v1, 0x1

    move-wide/from16 v229, v15

    move-wide/from16 v14, v18

    move-wide/from16 v18, v229

    :goto_0
    const/16 v11, 0x14

    if-ge v1, v11, :cond_2

    aget v11, v5, v1

    aget v16, v6, v1

    const/16 v7, 0x18

    add-long/2addr v9, v12

    invoke-static {v12, v13, v7, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    move-object/from16 v64, v5

    move-object/from16 v65, v6

    add-long v5, v18, v14

    invoke-static {v14, v15, v8, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    move/from16 v68, v1

    move-wide/from16 v66, v9

    move-wide/from16 v8, v52

    add-long v0, v20, v8

    const/16 v7, 0x8

    invoke-static {v8, v9, v7, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v10, 0x2f

    move-object/from16 v71, v3

    move-wide/from16 v69, v8

    move-wide/from16 v7, v54

    add-long v2, v25, v7

    invoke-static {v7, v8, v10, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    move/from16 v72, v11

    move-wide/from16 v73, v12

    move-wide/from16 v9, v56

    add-long v11, v30, v9

    const/16 v13, 0x8

    invoke-static {v9, v10, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v13, 0x11

    move-wide/from16 v75, v11

    move-wide/from16 v77, v14

    move-wide/from16 v11, v58

    add-long v14, v34, v11

    invoke-static {v11, v12, v13, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v13, 0x16

    move-wide/from16 v79, v7

    move-wide/from16 v81, v14

    move-wide/from16 v7, v60

    add-long v14, v39, v7

    invoke-static {v7, v8, v13, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v13, 0x25

    move-wide/from16 v85, v0

    move-wide/from16 v83, v14

    move-wide/from16 v14, v62

    add-long v0, v44, v14

    invoke-static {v14, v15, v13, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v15, 0x26

    move-wide/from16 v87, v0

    add-long v0, v66, v9

    invoke-static {v9, v10, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v15, 0x13

    add-long/2addr v5, v7

    invoke-static {v7, v8, v15, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    add-long/2addr v2, v11

    const/16 v15, 0xa

    invoke-static {v11, v12, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v15, 0x37

    move-wide/from16 v89, v9

    add-long v9, v85, v13

    invoke-static {v13, v14, v15, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v15, 0x31

    move-wide/from16 v91, v11

    add-long v11, v81, v79

    move-wide/from16 v93, v7

    move-wide/from16 v7, v79

    invoke-static {v7, v8, v15, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v15, 0x12

    move-wide/from16 v95, v11

    add-long v11, v83, v77

    move-wide/from16 v97, v13

    move-wide/from16 v13, v77

    invoke-static {v13, v14, v15, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v15, 0x17

    move-wide/from16 v99, v11

    add-long v11, v87, v69

    move-wide/from16 v101, v2

    move-wide/from16 v2, v69

    invoke-static {v2, v3, v15, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v15, 0x34

    move-wide/from16 v103, v11

    add-long v11, v75, v73

    move-wide/from16 v105, v9

    move-wide/from16 v9, v73

    invoke-static {v9, v10, v15, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v15, 0x21

    add-long/2addr v0, v7

    invoke-static {v7, v8, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    add-long/2addr v5, v2

    const/4 v15, 0x4

    invoke-static {v2, v3, v15, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v15, 0x33

    move-wide/from16 v107, v7

    add-long v7, v105, v13

    invoke-static {v13, v14, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-wide/from16 v109, v13

    add-long v13, v101, v9

    const/16 v15, 0xd

    invoke-static {v9, v10, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v15, 0x22

    move-wide/from16 v111, v2

    add-long v2, v99, v97

    move-wide/from16 v113, v9

    move-wide/from16 v9, v97

    invoke-static {v9, v10, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v15, 0x29

    move-wide/from16 v115, v2

    add-long v2, v103, v93

    move-wide/from16 v117, v7

    move-wide/from16 v7, v93

    invoke-static {v7, v8, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v15, 0x3b

    add-long v11, v11, v91

    move-wide/from16 v119, v2

    move-wide/from16 v2, v91

    invoke-static {v2, v3, v15, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v15, 0x11

    move-wide/from16 v121, v11

    add-long v11, v95, v89

    move-wide/from16 v123, v7

    move-wide/from16 v7, v89

    invoke-static {v7, v8, v15, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    add-long/2addr v0, v9

    const/4 v15, 0x5

    invoke-static {v9, v10, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v15, 0x14

    add-long/2addr v5, v2

    invoke-static {v2, v3, v15, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v15, 0x30

    add-long v13, v13, v123

    move-wide/from16 v125, v9

    move-wide/from16 v9, v123

    invoke-static {v9, v10, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v15, 0x29

    move-wide/from16 v127, v9

    add-long v9, v117, v7

    invoke-static {v7, v8, v15, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v15, 0x2f

    move-wide/from16 v129, v2

    add-long v2, v119, v113

    move-wide/from16 v131, v7

    move-wide/from16 v7, v113

    invoke-static {v7, v8, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v15, 0x1c

    move-wide/from16 v133, v2

    add-long v2, v121, v111

    move-wide/from16 v135, v13

    move-wide/from16 v13, v111

    invoke-static {v13, v14, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v15, 0x10

    add-long v11, v11, v109

    move-wide/from16 v137, v2

    move-wide/from16 v2, v109

    invoke-static {v2, v3, v15, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v15, 0x19

    move-wide/from16 v139, v11

    add-long v11, v115, v107

    move-wide/from16 v141, v13

    move-wide/from16 v13, v107

    invoke-static {v13, v14, v15, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    aget-wide v18, v71, v72

    add-long v0, v0, v18

    add-int/lit8 v15, v72, 0x1

    aget-wide v18, v71, v15

    add-long v7, v7, v18

    add-int/lit8 v18, v72, 0x2

    aget-wide v20, v71, v18

    add-long v5, v5, v20

    add-int/lit8 v19, v72, 0x3

    aget-wide v20, v71, v19

    add-long v2, v2, v20

    add-int/lit8 v20, v72, 0x4

    aget-wide v21, v71, v20

    add-long v9, v9, v21

    add-int/lit8 v21, v72, 0x5

    aget-wide v22, v71, v21

    move-wide/from16 v143, v9

    add-long v9, v141, v22

    add-int/lit8 v22, v72, 0x6

    aget-wide v25, v71, v22

    add-long v25, v135, v25

    add-int/lit8 v23, v72, 0x7

    aget-wide v28, v71, v23

    add-long v13, v13, v28

    add-int/lit8 v28, v72, 0x8

    aget-wide v30, v71, v28

    add-long v30, v137, v30

    add-int/lit8 v29, v72, 0x9

    aget-wide v32, v71, v29

    move-wide/from16 v145, v13

    add-long v13, v131, v32

    add-int/lit8 v32, v72, 0xa

    aget-wide v34, v71, v32

    add-long v34, v139, v34

    add-int/lit8 v33, v72, 0xb

    aget-wide v37, v71, v33

    move-wide/from16 v147, v13

    add-long v13, v129, v37

    add-int/lit8 v37, v72, 0xc

    aget-wide v39, v71, v37

    add-long v11, v11, v39

    add-int/lit8 v38, v72, 0xd

    aget-wide v39, v71, v38

    aget-wide v41, v4, v16

    add-long v39, v39, v41

    move-wide/from16 v149, v11

    add-long v11, v127, v39

    add-int/lit8 v39, v72, 0xe

    aget-wide v41, v71, v39

    add-int/lit8 v40, v16, 0x1

    aget-wide v44, v4, v40

    add-long v41, v41, v44

    add-long v41, v133, v41

    add-int/lit8 v44, v72, 0xf

    aget-wide v45, v71, v44

    move-object/from16 v151, v4

    move-wide/from16 v152, v11

    move/from16 v4, v68

    int-to-long v11, v4

    add-long v45, v45, v11

    move-wide/from16 v154, v11

    add-long v11, v125, v45

    move/from16 v156, v4

    const/16 v4, 0x29

    add-long/2addr v0, v7

    invoke-static {v7, v8, v4, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    add-long/2addr v5, v2

    const/16 v4, 0x9

    invoke-static {v2, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v4, 0x25

    move-wide/from16 v157, v7

    add-long v7, v143, v9

    invoke-static {v9, v10, v4, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x1f

    move-wide/from16 v159, v9

    add-long v9, v25, v145

    move-wide/from16 v161, v2

    move-wide/from16 v2, v145

    invoke-static {v2, v3, v4, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v163, v2

    add-long v2, v30, v147

    move-wide/from16 v165, v7

    move-wide/from16 v7, v147

    const/16 v4, 0xc

    invoke-static {v7, v8, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x2f

    move-wide/from16 v167, v2

    add-long v2, v34, v13

    invoke-static {v13, v14, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v4, 0x2c

    move-wide/from16 v169, v2

    add-long v2, v149, v152

    move-wide/from16 v171, v9

    move-wide/from16 v9, v152

    invoke-static {v9, v10, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x1e

    move-wide/from16 v173, v2

    add-long v2, v41, v11

    invoke-static {v11, v12, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v4, 0x10

    add-long/2addr v0, v7

    invoke-static {v7, v8, v4, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x22

    add-long/2addr v5, v9

    invoke-static {v9, v10, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x38

    move-wide/from16 v175, v7

    add-long v7, v171, v13

    invoke-static {v13, v14, v4, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v4, 0x33

    move-wide/from16 v177, v13

    add-long v13, v165, v11

    invoke-static {v11, v12, v4, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v179, v9

    add-long v9, v169, v163

    move-wide/from16 v181, v11

    move-wide/from16 v11, v163

    const/4 v4, 0x4

    invoke-static {v11, v12, v4, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v4, 0x35

    move-wide/from16 v183, v9

    add-long v9, v173, v161

    move-wide/from16 v185, v7

    move-wide/from16 v7, v161

    invoke-static {v7, v8, v4, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x2a

    add-long v2, v2, v159

    move-wide/from16 v187, v9

    move-wide/from16 v9, v159

    invoke-static {v9, v10, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x29

    move-wide/from16 v189, v2

    add-long v2, v167, v157

    move-wide/from16 v191, v7

    move-wide/from16 v7, v157

    invoke-static {v7, v8, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x1f

    add-long/2addr v0, v11

    invoke-static {v11, v12, v4, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v4, 0x2c

    add-long/2addr v5, v9

    invoke-static {v9, v10, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x2f

    add-long v13, v13, v191

    move-wide/from16 v193, v11

    move-wide/from16 v11, v191

    invoke-static {v11, v12, v4, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v4, 0x2e

    move-wide/from16 v195, v11

    add-long v11, v185, v7

    invoke-static {v7, v8, v4, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x13

    move-wide/from16 v197, v9

    add-long v9, v187, v181

    move-wide/from16 v199, v7

    move-wide/from16 v7, v181

    invoke-static {v7, v8, v4, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x2a

    move-wide/from16 v201, v9

    add-long v9, v189, v179

    move-wide/from16 v203, v13

    move-wide/from16 v13, v179

    invoke-static {v13, v14, v4, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v4, 0x2c

    add-long v2, v2, v177

    move-wide/from16 v205, v9

    move-wide/from16 v9, v177

    invoke-static {v9, v10, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x19

    move-wide/from16 v207, v2

    add-long v2, v183, v175

    move-wide/from16 v209, v11

    move-wide/from16 v11, v175

    invoke-static {v11, v12, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    add-long/2addr v0, v7

    const/16 v4, 0x9

    invoke-static {v7, v8, v4, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x30

    add-long/2addr v5, v9

    invoke-static {v9, v10, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x23

    move-wide/from16 v211, v7

    add-long v7, v209, v13

    invoke-static {v13, v14, v4, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v4, 0x34

    move-wide/from16 v213, v13

    add-long v13, v203, v11

    invoke-static {v11, v12, v4, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v4, 0x17

    move-wide/from16 v215, v9

    add-long v9, v205, v199

    move-wide/from16 v217, v11

    move-wide/from16 v11, v199

    invoke-static {v11, v12, v4, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v4, 0x1f

    move-wide/from16 v219, v9

    add-long v9, v207, v197

    move-wide/from16 v221, v7

    move-wide/from16 v7, v197

    invoke-static {v7, v8, v4, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x25

    add-long v2, v2, v195

    move-wide/from16 v223, v9

    move-wide/from16 v9, v195

    invoke-static {v9, v10, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x14

    move-wide/from16 v225, v2

    add-long v2, v201, v193

    move-wide/from16 v227, v7

    move-wide/from16 v7, v193

    invoke-static {v7, v8, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    aget-wide v25, v71, v15

    add-long v0, v0, v25

    aget-wide v25, v71, v18

    add-long v11, v11, v25

    aget-wide v18, v71, v19

    add-long v18, v5, v18

    aget-wide v4, v71, v20

    add-long/2addr v4, v9

    aget-wide v9, v71, v21

    add-long v20, v13, v9

    aget-wide v9, v71, v22

    add-long v52, v227, v9

    aget-wide v9, v71, v23

    add-long v25, v221, v9

    aget-wide v9, v71, v28

    add-long v54, v7, v9

    aget-wide v6, v71, v29

    add-long v30, v223, v6

    aget-wide v6, v71, v32

    add-long v56, v217, v6

    aget-wide v6, v71, v33

    add-long v34, v225, v6

    aget-wide v6, v71, v37

    add-long v58, v215, v6

    aget-wide v6, v71, v38

    add-long/2addr v2, v6

    aget-wide v6, v71, v39

    aget-wide v8, v151, v40

    add-long/2addr v6, v8

    add-long v60, v213, v6

    aget-wide v6, v71, v44

    const/4 v8, 0x2

    add-int/lit8 v16, v16, 0x2

    aget-wide v8, v151, v16

    add-long/2addr v6, v8

    add-long v44, v219, v6

    add-int/lit8 v6, v72, 0x10

    aget-wide v6, v71, v6

    add-long v6, v6, v154

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    add-long v62, v211, v6

    add-int/lit8 v6, v156, 0x2

    move-wide v9, v0

    move-wide/from16 v39, v2

    move-wide v14, v4

    move v1, v6

    move-wide v12, v11

    move-object/from16 v5, v64

    move-object/from16 v6, v65

    move-object/from16 v3, v71

    move-object/from16 v4, v151

    move-object/from16 v0, p0

    const/4 v7, 0x0

    const/16 v8, 0xd

    goto/16 :goto_0

    :cond_2
    move-wide v3, v9

    move-wide v1, v12

    move-wide v5, v14

    move-wide/from16 v28, v54

    move-wide/from16 v9, v56

    move-wide/from16 v11, v58

    move-wide/from16 v7, v60

    move-wide/from16 v14, v62

    const/4 v13, 0x0

    aput-wide v3, p2, v13

    const/4 v3, 0x1

    aput-wide v1, p2, v3

    const/4 v1, 0x2

    aput-wide v18, p2, v1

    aput-wide v5, p2, v17

    const/4 v1, 0x4

    aput-wide v20, p2, v1

    const/4 v1, 0x5

    aput-wide v52, p2, v1

    aput-wide v25, p2, v24

    aput-wide v28, p2, v27

    const/16 v1, 0x8

    aput-wide v30, p2, v1

    const/16 v1, 0x9

    aput-wide v9, p2, v1

    const/16 v1, 0xa

    aput-wide v34, p2, v1

    aput-wide v11, p2, v36

    const/16 v1, 0xc

    aput-wide v39, p2, v1

    const/16 v1, 0xd

    aput-wide v7, p2, v1

    aput-wide v44, p2, v43

    const/16 v1, 0xf

    aput-wide v14, p2, v1

    return-void
.end method
