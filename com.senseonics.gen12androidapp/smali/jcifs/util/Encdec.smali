.class public Ljcifs/util/Encdec;
.super Ljava/lang/Object;
.source "Encdec.java"


# static fields
.field public static final MILLISECONDS_BETWEEN_1970_AND_1601:J = 0xa9730b66800L

.field public static final SEC_BETWEEEN_1904_AND_1970:J = 0x7c25b080L

.field public static final TIME_1601_NANOS_64BE:I = 0x6

.field public static final TIME_1601_NANOS_64LE:I = 0x5

.field public static final TIME_1904_SEC_32BE:I = 0x3

.field public static final TIME_1904_SEC_32LE:I = 0x4

.field public static final TIME_1970_MILLIS_64BE:I = 0x7

.field public static final TIME_1970_MILLIS_64LE:I = 0x8

.field public static final TIME_1970_SEC_32BE:I = 0x1

.field public static final TIME_1970_SEC_32LE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dec_doublebe([BI)D
    .locals 0

    .line 167
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static dec_doublele([BI)D
    .locals 0

    .line 163
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static dec_floatbe([BI)F
    .locals 0

    .line 147
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static dec_floatle([BI)F
    .locals 0

    .line 143
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static dec_time([BII)Ljava/util/Date;
    .locals 10

    const-wide/32 v0, 0x7c25b080

    const-wide v2, 0xffffffffL

    const-wide v4, 0xa9730b66800L

    const-wide/16 v6, 0x2710

    const-wide/16 v8, 0x3e8

    packed-switch p2, :pswitch_data_0

    .line 232
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported time encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 230
    :pswitch_0
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 228
    :pswitch_1
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 222
    :pswitch_2
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide p0

    .line 223
    new-instance p2, Ljava/util/Date;

    div-long/2addr p0, v6

    sub-long/2addr p0, v4

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 225
    :pswitch_3
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide p0

    .line 226
    new-instance p2, Ljava/util/Date;

    div-long/2addr p0, v6

    sub-long/2addr p0, v4

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 219
    :pswitch_4
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    sub-long/2addr p0, v0

    mul-long p0, p0, v8

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 216
    :pswitch_5
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    sub-long/2addr p0, v0

    mul-long p0, p0, v8

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 214
    :pswitch_6
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result p0

    int-to-long p0, p0

    mul-long p0, p0, v8

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    .line 212
    :pswitch_7
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result p0

    int-to-long p0, p0

    mul-long p0, p0, v8

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static dec_ucs2le([BII[C)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    .line 306
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v2

    int-to-char v2, v2

    aput-char v2, p3, v1

    .line 307
    aget-char v2, p3, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 312
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static dec_uint16be([BI)S
    .locals 1

    .line 77
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static dec_uint16le([BI)S
    .locals 1

    .line 86
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static dec_uint32be([BI)I
    .locals 2

    .line 81
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static dec_uint32le([BI)I
    .locals 2

    .line 90
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static dec_uint64be([BI)J
    .locals 5

    .line 112
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x4

    .line 114
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static dec_uint64le([BI)J
    .locals 5

    add-int/lit8 v0, p1, 0x4

    .line 120
    invoke-static {p0, v0}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    .line 122
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static dec_utf8([BII)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sub-int v0, p2, p1

    .line 263
    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge p1, p2, :cond_a

    add-int/lit8 v3, p1, 0x1

    .line 266
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_a

    const/16 v4, 0x80

    if-ge p1, v4, :cond_1

    int-to-char p1, p1

    .line 268
    aput-char p1, v0, v2

    :cond_0
    move p1, v3

    goto/16 :goto_1

    :cond_1
    and-int/lit16 v5, p1, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_4

    sub-int v5, p2, v3

    const/4 v7, 0x2

    if-ge v5, v7, :cond_2

    goto/16 :goto_3

    :cond_2
    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    int-to-char p1, p1

    .line 273
    aput-char p1, v0, v2

    add-int/lit8 p1, v3, 0x1

    .line 274
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 275
    aget-char v5, v0, v2

    and-int/lit8 v7, v3, 0x3f

    or-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v0, v2

    and-int/2addr v3, v6

    if-ne v3, v4, :cond_3

    .line 276
    aget-char v3, v0, v2

    if-ge v3, v4, :cond_7

    .line 277
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid UTF-8 sequence"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    and-int/lit16 v5, p1, 0xf0

    const/16 v7, 0xe0

    if-ne v5, v7, :cond_9

    sub-int v5, p2, v3

    const/4 v7, 0x3

    if-ge v5, v7, :cond_5

    goto :goto_3

    :cond_5
    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xc

    int-to-char p1, p1

    .line 283
    aput-char p1, v0, v2

    add-int/lit8 p1, v3, 0x1

    .line 284
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v5, v3, 0xc0

    if-eq v5, v4, :cond_6

    .line 286
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid UTF-8 sequence"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 288
    :cond_6
    aget-char v5, v0, v2

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v5

    int-to-char v3, v3

    aput-char v3, v0, v2

    add-int/lit8 v3, p1, 0x1

    .line 289
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 290
    aget-char v5, v0, v2

    and-int/lit8 v7, p1, 0x3f

    or-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v0, v2

    and-int/2addr p1, v6

    if-ne p1, v4, :cond_8

    .line 291
    aget-char p1, v0, v2

    const/16 v4, 0x800

    if-ge p1, v4, :cond_0

    goto :goto_2

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 292
    :cond_8
    :goto_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid UTF-8 sequence"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 296
    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unsupported UTF-8 sequence"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 300
    :cond_a
    :goto_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static enc_doublebe(D[BI)I
    .locals 0

    .line 159
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p0, p1, p2, p3}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result p0

    return p0
.end method

.method public static enc_doublele(D[BI)I
    .locals 0

    .line 155
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p0, p1, p2, p3}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result p0

    return p0
.end method

.method public static enc_floatbe(F[BI)I
    .locals 0

    .line 135
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result p0

    return p0
.end method

.method public static enc_floatle(F[BI)I
    .locals 0

    .line 131
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result p0

    return p0
.end method

.method public static enc_time(Ljava/util/Date;[BII)I
    .locals 10

    const-wide/16 v0, -0x1

    const-wide/32 v2, 0x7c25b080

    const-wide/16 v4, 0x2710

    const-wide v6, 0xa9730b66800L

    const-wide/16 v8, 0x3e8

    packed-switch p3, :pswitch_data_0

    .line 199
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported time encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :pswitch_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result p0

    return p0

    .line 195
    :pswitch_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result p0

    return p0

    .line 189
    :pswitch_2
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    add-long/2addr v0, v6

    mul-long v0, v0, v4

    .line 190
    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result p0

    return p0

    .line 192
    :pswitch_3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    add-long/2addr v0, v6

    mul-long v0, v0, v4

    .line 193
    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result p0

    return p0

    .line 186
    :pswitch_4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v8

    add-long/2addr v4, v2

    and-long/2addr v0, v4

    long-to-int p0, v0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result p0

    return p0

    .line 183
    :pswitch_5
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v8

    add-long/2addr v4, v2

    and-long/2addr v0, v4

    long-to-int p0, v0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result p0

    return p0

    .line 181
    :pswitch_6
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v8

    long-to-int p0, v0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result p0

    return p0

    .line 179
    :pswitch_7
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v8

    long-to-int p0, v0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static enc_uint16be(S[BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 46
    aput-byte v1, p1, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 47
    aput-byte p0, p1, v0

    const/4 p0, 0x2

    return p0
.end method

.method public static enc_uint16le(S[BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    .line 59
    aput-byte v1, p1, p2

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 60
    aput-byte p0, p1, v0

    const/4 p0, 0x2

    return p0
.end method

.method public static enc_uint32be(I[BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 51
    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 52
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 53
    aput-byte v1, p1, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 54
    aput-byte p0, p1, v0

    const/4 p0, 0x4

    return p0
.end method

.method public static enc_uint32le(I[BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    .line 65
    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 66
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 67
    aput-byte v1, p1, p2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 68
    aput-byte p0, p1, v0

    const/4 p0, 0x4

    return p0
.end method

.method public static enc_uint64be(J[BI)I
    .locals 4

    const-wide v0, 0xffffffffL

    and-long v2, p0, v0

    long-to-int v2, v2

    add-int/lit8 v3, p3, 0x4

    .line 99
    invoke-static {v2, p2, v3}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    const/16 v2, 0x20

    shr-long/2addr p0, v2

    and-long/2addr p0, v0

    long-to-int p0, p0

    .line 100
    invoke-static {p0, p2, p3}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    const/16 p0, 0x8

    return p0
.end method

.method public static enc_uint64le(J[BI)I
    .locals 4

    const-wide v0, 0xffffffffL

    and-long v2, p0, v0

    long-to-int v2, v2

    .line 105
    invoke-static {v2, p2, p3}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    const/16 v2, 0x20

    shr-long/2addr p0, v2

    and-long/2addr p0, v0

    long-to-int p0, p0

    add-int/lit8 p3, p3, 0x4

    .line 106
    invoke-static {p0, p2, p3}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    const/16 p0, 0x8

    return p0
.end method

.method public static enc_utf8(Ljava/lang/String;[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    if-ge v2, v0, :cond_4

    .line 241
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    int-to-byte v3, v3

    .line 243
    aput-byte v3, p1, v1

    :goto_1
    move v1, v4

    goto :goto_2

    :cond_0
    const/16 v4, 0x7ff

    if-le v3, v4, :cond_2

    sub-int v4, p3, v1

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    .line 248
    aput-byte v5, p1, v1

    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 249
    aput-byte v5, p1, v4

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v3, v3, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 250
    aput-byte v3, p1, v1

    goto :goto_1

    :cond_2
    sub-int v4, p3, v1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    .line 255
    aput-byte v5, p1, v1

    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v3, v3, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 256
    aput-byte v3, p1, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    sub-int/2addr v1, p2

    return v1
.end method
