.class public Ljcifs/util/MD4;
.super Ljava/security/MessageDigest;
.source "MD4.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BLOCK_LENGTH:I = 0x40


# instance fields
.field private X:[I

.field private buffer:[B

.field private context:[I

.field private count:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "MD4"

    .line 72
    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 50
    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/MD4;->context:[I

    const/16 v0, 0x40

    .line 60
    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    const/16 v0, 0x10

    .line 65
    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/MD4;->X:[I

    .line 73
    invoke-virtual {p0}, Ljcifs/util/MD4;->engineReset()V

    return-void
.end method

.method private constructor <init>(Ljcifs/util/MD4;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljcifs/util/MD4;-><init>()V

    .line 81
    iget-object v0, p1, Ljcifs/util/MD4;->context:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Ljcifs/util/MD4;->context:[I

    .line 82
    iget-object v0, p1, Ljcifs/util/MD4;->buffer:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    .line 83
    iget-wide v0, p1, Ljcifs/util/MD4;->count:J

    iput-wide v0, p0, Ljcifs/util/MD4;->count:J

    return-void
.end method

.method private FF(IIIIII)I
    .locals 0

    and-int/2addr p3, p2

    not-int p2, p2

    and-int/2addr p2, p4

    or-int/2addr p2, p3

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    shl-int p2, p1, p6

    rsub-int/lit8 p3, p6, 0x20

    ushr-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private GG(IIIIII)I
    .locals 1

    or-int v0, p3, p4

    and-int/2addr p2, v0

    and-int/2addr p3, p4

    or-int/2addr p2, p3

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x5a827999

    add-int/2addr p1, p2

    shl-int p2, p1, p6

    rsub-int/lit8 p3, p6, 0x20

    ushr-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private HH(IIIIII)I
    .locals 0

    xor-int/2addr p2, p3

    xor-int/2addr p2, p4

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x6ed9eba1

    add-int/2addr p1, p2

    shl-int p2, p1, p6

    rsub-int/lit8 p3, p6, 0x20

    ushr-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private transform([BI)V
    .locals 26

    move-object/from16 v7, p0

    const/4 v8, 0x0

    move/from16 v2, p2

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x10

    const/16 v9, 0x8

    if-ge v1, v3, :cond_0

    .line 217
    iget-object v3, v7, Ljcifs/util/MD4;->X:[I

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v9

    or-int/2addr v2, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, v7, Ljcifs/util/MD4;->context:[I

    aget v1, v0, v8

    .line 224
    iget-object v0, v7, Ljcifs/util/MD4;->context:[I

    const/4 v10, 0x1

    aget v11, v0, v10

    .line 225
    iget-object v0, v7, Ljcifs/util/MD4;->context:[I

    const/4 v12, 0x2

    aget v13, v0, v12

    .line 226
    iget-object v0, v7, Ljcifs/util/MD4;->context:[I

    const/4 v14, 0x3

    aget v15, v0, v14

    .line 228
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v8

    const/4 v6, 0x3

    move-object v0, v7

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v16

    .line 229
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v10

    const/4 v6, 0x7

    move-object v0, v7

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v15

    .line 230
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v12

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v13

    .line 231
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v14

    const/16 v6, 0x13

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v11

    .line 232
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v17, 0x4

    aget v5, v0, v17

    const/4 v6, 0x3

    move-object v0, v7

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v16

    .line 233
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v18, 0x5

    aget v5, v0, v18

    const/4 v6, 0x7

    move-object v0, v7

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v15

    .line 234
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v19, 0x6

    aget v5, v0, v19

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v13

    .line 235
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v20, 0x7

    aget v5, v0, v20

    const/16 v6, 0x13

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v11

    .line 236
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v9

    const/4 v6, 0x3

    move-object v0, v7

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v16

    .line 237
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v21, 0x9

    aget v5, v0, v21

    const/4 v6, 0x7

    move-object v0, v7

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v15

    .line 238
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v22, 0xa

    aget v5, v0, v22

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v13

    .line 239
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v23, 0xb

    aget v5, v0, v23

    const/16 v6, 0x13

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v11

    .line 240
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v24, 0xc

    aget v5, v0, v24

    const/4 v6, 0x3

    move-object v0, v7

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v16

    .line 241
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v25, 0xd

    aget v5, v0, v25

    const/4 v6, 0x7

    move-object v0, v7

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v15

    .line 242
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v1, 0xe

    aget v5, v0, v1

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v13

    .line 243
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v1, 0xf

    aget v5, v0, v1

    const/16 v6, 0x13

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->FF(IIIIII)I

    move-result v11

    .line 245
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v8

    const/4 v6, 0x3

    move-object v0, v7

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v16

    .line 246
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v17

    const/4 v6, 0x5

    move-object v0, v7

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v15

    .line 247
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v9

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v13

    .line 248
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v24

    const/16 v6, 0xd

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v11

    .line 249
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v10

    const/4 v6, 0x3

    move-object v0, v7

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v16

    .line 250
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v18

    const/4 v6, 0x5

    move-object v0, v7

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v15

    .line 251
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v21

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v13

    .line 252
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xd

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v11

    .line 253
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v12

    const/4 v6, 0x3

    move-object v0, v7

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v16

    .line 254
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v19

    const/4 v6, 0x5

    move-object v0, v7

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v15

    .line 255
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v13

    .line 256
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v1, 0xe

    aget v5, v0, v1

    const/16 v6, 0xd

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v11

    .line 257
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v14

    const/4 v6, 0x3

    move-object v0, v7

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v16

    .line 258
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v20

    const/4 v6, 0x5

    move-object v0, v7

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v15

    .line 259
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v23

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v13

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v13

    .line 260
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v1, 0xf

    aget v5, v0, v1

    const/16 v6, 0xd

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->GG(IIIIII)I

    move-result v11

    .line 262
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v8

    const/4 v6, 0x3

    move-object v0, v7

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v16

    .line 263
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v9

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v15

    move/from16 v2, v16

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v9

    .line 264
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v17

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v13

    move v2, v9

    move/from16 v3, v16

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v13

    .line 265
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v24

    const/16 v6, 0xf

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v9

    move/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v11

    .line 266
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v12

    const/4 v6, 0x3

    move-object v0, v7

    move/from16 v1, v16

    move v2, v11

    move v3, v13

    move v4, v9

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v15

    .line 267
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v9

    move v2, v15

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v9

    .line 268
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v19

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v13

    move v2, v9

    move v3, v15

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v13

    .line 269
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v1, 0xe

    aget v5, v0, v1

    const/16 v6, 0xf

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v9

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v11

    .line 270
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v10

    const/4 v6, 0x3

    move-object v0, v7

    move v1, v15

    move v2, v11

    move v3, v13

    move v4, v9

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v15

    .line 271
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v21

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v9

    move v2, v15

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v9

    .line 272
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v18

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v13

    move v2, v9

    move v3, v15

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v13

    .line 273
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xf

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v9

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v11

    .line 274
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v14

    const/4 v6, 0x3

    move-object v0, v7

    move v1, v15

    move v2, v11

    move v3, v13

    move v4, v9

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v15

    .line 275
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v23

    const/16 v6, 0x9

    move-object v0, v7

    move v1, v9

    move v2, v15

    move v3, v11

    move v4, v13

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v9

    .line 276
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    aget v5, v0, v20

    const/16 v6, 0xb

    move-object v0, v7

    move v1, v13

    move v2, v9

    move v3, v15

    move v4, v11

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v13

    .line 277
    iget-object v0, v7, Ljcifs/util/MD4;->X:[I

    const/16 v1, 0xf

    aget v5, v0, v1

    const/16 v6, 0xf

    move-object v0, v7

    move v1, v11

    move v2, v13

    move v3, v9

    move v4, v15

    invoke-direct/range {v0 .. v6}, Ljcifs/util/MD4;->HH(IIIIII)I

    move-result v0

    .line 279
    iget-object v1, v7, Ljcifs/util/MD4;->context:[I

    aget v2, v1, v8

    add-int/2addr v2, v15

    aput v2, v1, v8

    .line 280
    iget-object v1, v7, Ljcifs/util/MD4;->context:[I

    aget v2, v1, v10

    add-int/2addr v2, v0

    aput v2, v1, v10

    .line 281
    iget-object v0, v7, Ljcifs/util/MD4;->context:[I

    aget v1, v0, v12

    add-int/2addr v1, v13

    aput v1, v0, v12

    .line 282
    iget-object v0, v7, Ljcifs/util/MD4;->context:[I

    aget v1, v0, v14

    add-int/2addr v1, v9

    aput v1, v0, v14

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 93
    new-instance v0, Ljcifs/util/MD4;

    invoke-direct {v0, p0}, Ljcifs/util/MD4;-><init>(Ljcifs/util/MD4;)V

    return-object v0
.end method

.method public engineDigest()[B
    .locals 9

    .line 173
    iget-wide v0, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v2, 0x40

    rem-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x38

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v0, 0x78

    :goto_0
    add-int/lit8 v0, v1, 0x8

    .line 177
    new-array v0, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 178
    aput-byte v2, v0, v3

    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    add-int v4, v1, v2

    .line 184
    iget-wide v5, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v7, 0x8

    mul-long v5, v5, v7

    mul-int/lit8 v7, v2, 0x8

    ushr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 186
    :cond_1
    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Ljcifs/util/MD4;->engineUpdate([BII)V

    const/16 v0, 0x10

    .line 188
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_2

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v4

    .line 192
    iget-object v6, p0, Ljcifs/util/MD4;->context:[I

    aget v6, v6, v1

    mul-int/lit8 v7, v4, 0x8

    ushr-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 195
    :cond_3
    invoke-virtual {p0}, Ljcifs/util/MD4;->engineReset()V

    return-object v0
.end method

.method public engineReset()V
    .locals 4

    .line 106
    iget-object v0, p0, Ljcifs/util/MD4;->context:[I

    const/4 v1, 0x0

    const v2, 0x67452301

    aput v2, v0, v1

    .line 107
    iget-object v0, p0, Ljcifs/util/MD4;->context:[I

    const/4 v2, 0x1

    const v3, -0x10325477

    aput v3, v0, v2

    .line 108
    iget-object v0, p0, Ljcifs/util/MD4;->context:[I

    const/4 v2, 0x2

    const v3, -0x67452302

    aput v3, v0, v2

    .line 109
    iget-object v0, p0, Ljcifs/util/MD4;->context:[I

    const/4 v2, 0x3

    const v3, 0x10325476

    aput v3, v0, v2

    const-wide/16 v2, 0x0

    .line 110
    iput-wide v2, p0, Ljcifs/util/MD4;->count:J

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    .line 112
    iget-object v2, p0, Ljcifs/util/MD4;->buffer:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public engineUpdate(B)V
    .locals 5

    .line 120
    iget-wide v0, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v2, 0x40

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 121
    iget-wide v1, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljcifs/util/MD4;->count:J

    .line 122
    iget-object v1, p0, Ljcifs/util/MD4;->buffer:[B

    aput-byte p1, v1, v0

    const/16 p1, 0x3f

    if-ne v0, p1, :cond_0

    .line 124
    iget-object p1, p0, Ljcifs/util/MD4;->buffer:[B

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljcifs/util/MD4;->transform([BI)V

    :cond_0
    return-void
.end method

.method public engineUpdate([BII)V
    .locals 6

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    .line 141
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    goto :goto_2

    .line 145
    :cond_0
    iget-wide v0, p0, Ljcifs/util/MD4;->count:J

    const-wide/16 v4, 0x40

    rem-long/2addr v0, v4

    long-to-int v0, v0

    .line 146
    iget-wide v4, p0, Ljcifs/util/MD4;->count:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljcifs/util/MD4;->count:J

    rsub-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-lt p3, v1, :cond_2

    .line 150
    iget-object v3, p0, Ljcifs/util/MD4;->buffer:[B

    invoke-static {p1, p2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v0, p0, Ljcifs/util/MD4;->buffer:[B

    invoke-direct {p0, v0, v2}, Ljcifs/util/MD4;->transform([BI)V

    :goto_0
    add-int/lit8 v0, v1, 0x40

    add-int/lit8 v3, v0, -0x1

    if-ge v3, p3, :cond_1

    add-int/2addr v1, p2

    .line 156
    invoke-direct {p0, p1, v1}, Ljcifs/util/MD4;->transform([BI)V

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_3

    add-int/2addr p2, v1

    .line 161
    iget-object v2, p0, Ljcifs/util/MD4;->buffer:[B

    sub-int/2addr p3, v1

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-void

    .line 142
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method
