.class public Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;
.super Ljava/lang/Object;


# static fields
.field public static final MASK:I = 0xff

.field static final exps:[S

.field static final logs:[S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x100

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->exps:[S

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->logs:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x1s
        0x2s
        0x4s
        0x8s
        0x10s
        0x20s
        0x40s
        0x80s
        0x4ds
        0x9as
        0x79s
        0xf2s
        0xa9s
        0x1fs
        0x3es
        0x7cs
        0xf8s
        0xbds
        0x37s
        0x6es
        0xdcs
        0xf5s
        0xa7s
        0x3s
        0x6s
        0xcs
        0x18s
        0x30s
        0x60s
        0xc0s
        0xcds
        0xd7s
        0xe3s
        0x8bs
        0x5bs
        0xb6s
        0x21s
        0x42s
        0x84s
        0x45s
        0x8as
        0x59s
        0xb2s
        0x29s
        0x52s
        0xa4s
        0x5s
        0xas
        0x14s
        0x28s
        0x50s
        0xa0s
        0xds
        0x1as
        0x34s
        0x68s
        0xd0s
        0xeds
        0x97s
        0x63s
        0xc6s
        0xc1s
        0xcfs
        0xd3s
        0xebs
        0x9bs
        0x7bs
        0xf6s
        0xa1s
        0xfs
        0x1es
        0x3cs
        0x78s
        0xf0s
        0xads
        0x17s
        0x2es
        0x5cs
        0xb8s
        0x3ds
        0x7as
        0xf4s
        0xa5s
        0x7s
        0xes
        0x1cs
        0x38s
        0x70s
        0xe0s
        0x8ds
        0x57s
        0xaes
        0x11s
        0x22s
        0x44s
        0x88s
        0x5ds
        0xbas
        0x39s
        0x72s
        0xe4s
        0x85s
        0x47s
        0x8es
        0x51s
        0xa2s
        0x9s
        0x12s
        0x24s
        0x48s
        0x90s
        0x6ds
        0xdas
        0xf9s
        0xbfs
        0x33s
        0x66s
        0xccs
        0xd5s
        0xe7s
        0x83s
        0x4bs
        0x96s
        0x61s
        0xc2s
        0xc9s
        0xdfs
        0xf3s
        0xabs
        0x1bs
        0x36s
        0x6cs
        0xd8s
        0xfds
        0xb7s
        0x23s
        0x46s
        0x8cs
        0x55s
        0xaas
        0x19s
        0x32s
        0x64s
        0xc8s
        0xdds
        0xf7s
        0xa3s
        0xbs
        0x16s
        0x2cs
        0x58s
        0xb0s
        0x2ds
        0x5as
        0xb4s
        0x25s
        0x4as
        0x94s
        0x65s
        0xcas
        0xd9s
        0xffs
        0xb3s
        0x2bs
        0x56s
        0xacs
        0x15s
        0x2as
        0x54s
        0xa8s
        0x1ds
        0x3as
        0x74s
        0xe8s
        0x9ds
        0x77s
        0xees
        0x91s
        0x6fs
        0xdes
        0xf1s
        0xafs
        0x13s
        0x26s
        0x4cs
        0x98s
        0x7ds
        0xfas
        0xb9s
        0x3fs
        0x7es
        0xfcs
        0xb5s
        0x27s
        0x4es
        0x9cs
        0x75s
        0xeas
        0x99s
        0x7fs
        0xfes
        0xb1s
        0x2fs
        0x5es
        0xbcs
        0x35s
        0x6as
        0xd4s
        0xe5s
        0x87s
        0x43s
        0x86s
        0x41s
        0x82s
        0x49s
        0x92s
        0x69s
        0xd2s
        0xe9s
        0x9fs
        0x73s
        0xe6s
        0x81s
        0x4fs
        0x9es
        0x71s
        0xe2s
        0x89s
        0x5fs
        0xbes
        0x31s
        0x62s
        0xc4s
        0xc5s
        0xc7s
        0xc3s
        0xcbs
        0xdbs
        0xfbs
        0xbbs
        0x3bs
        0x76s
        0xecs
        0x95s
        0x67s
        0xces
        0xd1s
        0xefs
        0x93s
        0x6bs
        0xd6s
        0xe1s
        0x8fs
        0x53s
        0xa6s
        0x1s
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x0s
        0x1s
        0x17s
        0x2s
        0x2es
        0x18s
        0x53s
        0x3s
        0x6as
        0x2fs
        0x93s
        0x19s
        0x34s
        0x54s
        0x45s
        0x4s
        0x5cs
        0x6bs
        0xb6s
        0x30s
        0xa6s
        0x94s
        0x4bs
        0x1as
        0x8cs
        0x35s
        0x81s
        0x55s
        0xaas
        0x46s
        0xds
        0x5s
        0x24s
        0x5ds
        0x87s
        0x6cs
        0x9bs
        0xb7s
        0xc1s
        0x31s
        0x2bs
        0xa7s
        0xa3s
        0x95s
        0x98s
        0x4cs
        0xcas
        0x1bs
        0xe6s
        0x8ds
        0x73s
        0x36s
        0xcds
        0x82s
        0x12s
        0x56s
        0x62s
        0xabs
        0xf0s
        0x47s
        0x4fs
        0xes
        0xbds
        0x6s
        0xd4s
        0x25s
        0xd2s
        0x5es
        0x27s
        0x88s
        0x66s
        0x6ds
        0xd6s
        0x9cs
        0x79s
        0xb8s
        0x8s
        0xc2s
        0xdfs
        0x32s
        0x68s
        0x2cs
        0xfds
        0xa8s
        0x8as
        0xa4s
        0x5as
        0x96s
        0x29s
        0x99s
        0x22s
        0x4ds
        0x60s
        0xcbs
        0xe4s
        0x1cs
        0x7bs
        0xe7s
        0x3bs
        0x8es
        0x9es
        0x74s
        0xf4s
        0x37s
        0xd8s
        0xces
        0xf9s
        0x83s
        0x6fs
        0x13s
        0xb2s
        0x57s
        0xe1s
        0x63s
        0xdcs
        0xacs
        0xc4s
        0xf1s
        0xafs
        0x48s
        0xas
        0x50s
        0x42s
        0xfs
        0xbas
        0xbes
        0xc7s
        0x7s
        0xdes
        0xd5s
        0x78s
        0x26s
        0x65s
        0xd3s
        0xd1s
        0x5fs
        0xe3s
        0x28s
        0x21s
        0x89s
        0x59s
        0x67s
        0xfcs
        0x6es
        0xb1s
        0xd7s
        0xf8s
        0x9ds
        0xf3s
        0x7as
        0x3as
        0xb9s
        0xc6s
        0x9s
        0x41s
        0xc3s
        0xaes
        0xe0s
        0xdbs
        0x33s
        0x44s
        0x69s
        0x92s
        0x2ds
        0x52s
        0xfes
        0x16s
        0xa9s
        0xcs
        0x8bs
        0x80s
        0xa5s
        0x4as
        0x5bs
        0xb5s
        0x97s
        0xc9s
        0x2as
        0xa2s
        0x9as
        0xc0s
        0x23s
        0x86s
        0x4es
        0xbcs
        0x61s
        0xefs
        0xccs
        0x11s
        0xe5s
        0x72s
        0x1ds
        0x3ds
        0x7cs
        0xebs
        0xe8s
        0xe9s
        0x3cs
        0xeas
        0x8fs
        0x7ds
        0x9fs
        0xecs
        0x75s
        0x1es
        0xf5s
        0x3es
        0x38s
        0xf6s
        0xd9s
        0x3fs
        0xcfs
        0x76s
        0xfas
        0x1fs
        0x84s
        0xa0s
        0x70s
        0xeds
        0x14s
        0x90s
        0xb3s
        0x7es
        0x58s
        0xfbs
        0xe2s
        0x20s
        0x64s
        0xd0s
        0xdds
        0x77s
        0xads
        0xdas
        0xc5s
        0x40s
        0xf2s
        0x39s
        0xb0s
        0xf7s
        0x49s
        0xb4s
        0xbs
        0x7fs
        0x51s
        0x15s
        0x43s
        0x91s
        0x10s
        0x71s
        0xbbs
        0xees
        0xbfs
        0x85s
        0xc8s
        0xa1s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addElem(SS)S
    .locals 0

    xor-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static getExp(S)S
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->exps:[S

    aget-short p0, v0, p0

    return p0
.end method

.method public static getLog(S)S
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->logs:[S

    aget-short p0, v0, p0

    return p0
.end method

.method public static invElem(S)S
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->exps:[S

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->logs:[S

    aget-short p0, v1, p0

    rsub-int p0, p0, 0xff

    aget-short p0, v0, p0

    return p0
.end method

.method public static multElem(SS)S
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->exps:[S

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->logs:[S

    aget-short p0, v1, p0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->logs:[S

    aget-short p1, v1, p1

    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0xff

    aget-short p0, v0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
