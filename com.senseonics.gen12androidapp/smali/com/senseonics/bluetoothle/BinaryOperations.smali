.class public Lcom/senseonics/bluetoothle/BinaryOperations;
.super Ljava/lang/Object;
.source "BinaryOperations.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GenerateChecksumCRC16([I)I
    .locals 8

    const/4 v0, 0x0

    const v1, 0xffff

    const/4 v2, 0x0

    const v3, 0xffff

    .line 13
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 14
    aget v4, p0, v2

    move v5, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1

    shr-int/lit8 v6, v4, 0xf

    shr-int/lit8 v7, v5, 0x7

    xor-int/2addr v6, v7

    shl-int/lit8 v4, v4, 0x1

    and-int/2addr v4, v1

    if-lez v6, :cond_0

    xor-int/lit16 v4, v4, 0x1021

    and-int/2addr v4, v1

    :cond_0
    shl-int/lit8 v5, v5, 0x1

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static calculateDateBytes(III)[I
    .locals 3

    const/4 v0, 0x2

    .line 107
    new-array v0, v0, [I

    add-int/lit16 p0, p0, -0x7d0

    const/4 v1, 0x1

    shl-int/2addr p0, v1

    aput p0, v0, v1

    const/4 p0, 0x7

    if-le p1, p0, :cond_0

    .line 111
    aget v2, v0, v1

    add-int/2addr v2, v1

    aput v2, v0, v1

    :cond_0
    const/4 v1, 0x0

    and-int/2addr p0, p1

    shl-int/lit8 p0, p0, 0x5

    or-int/2addr p0, p2

    aput p0, v0, v1

    return-object v0
.end method

.method public static calculateDateFromBytes([I)[I
    .locals 7

    const/4 v0, 0x3

    .line 143
    new-array v0, v0, [I

    const/4 v1, 0x1

    .line 145
    aget v2, p0, v1

    shr-int/2addr v2, v1

    add-int/lit16 v2, v2, 0x7d0

    const/4 v3, 0x0

    .line 148
    aget v4, p0, v3

    shr-int/lit8 v4, v4, 0x5

    .line 150
    aget v5, p0, v1

    const/4 v6, 0x2

    rem-int/2addr v5, v6

    if-ne v5, v1, :cond_0

    add-int/lit8 v4, v4, 0x8

    .line 153
    :cond_0
    aget p0, p0, v3

    and-int/lit8 p0, p0, 0x1f

    aput v2, v0, v3

    aput v4, v0, v1

    aput p0, v0, v6

    return-object v0
.end method

.method public static calculateTimeBytes(III)[I
    .locals 3

    const/4 v0, 0x2

    .line 166
    new-array v1, v0, [I

    and-int/lit8 v2, p1, 0x38

    shr-int/lit8 v2, v2, 0x3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x5

    .line 169
    div-int/2addr p2, v0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, v2

    const/4 v0, 0x1

    aput p0, v1, v0

    or-int p0, p2, p1

    const/4 p1, 0x0

    aput p0, v1, p1

    return-object v1
.end method

.method public static calculateTimeFromBytes([I)[I
    .locals 7

    const/4 v0, 0x3

    .line 184
    new-array v1, v0, [I

    const/4 v2, 0x1

    .line 186
    aget v3, p0, v2

    shr-int/2addr v3, v0

    const/4 v4, 0x0

    .line 189
    aget v5, p0, v4

    .line 190
    aget v6, p0, v2

    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v0, v6, 0x3

    shr-int/lit8 v5, v5, 0x5

    or-int/2addr v0, v5

    .line 193
    aget p0, p0, v4

    and-int/lit8 p0, p0, 0x1f

    const/4 v5, 0x2

    mul-int/lit8 p0, p0, 0x2

    aput v3, v1, v4

    aput v0, v1, v2

    aput p0, v1, v5

    return-object v1
.end method

.method public static data16BitsFromIntLSByteFirst(I)[I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-le p0, v2, :cond_0

    .line 36
    new-array v1, v1, [I

    and-int/lit16 v2, p0, 0xff

    aput v2, v1, v3

    const v2, 0xff00

    and-int/2addr p0, v2

    shr-int/lit8 p0, p0, 0x8

    aput p0, v1, v0

    goto :goto_0

    .line 41
    :cond_0
    new-array v1, v1, [I

    aput p0, v1, v3

    aput v3, v1, v0

    :goto_0
    return-object v1
.end method

.method public static data24BitsFromIntLSByteFirst(I)[I
    .locals 3

    const/4 v0, 0x3

    .line 70
    new-array v0, v0, [I

    and-int/lit16 v1, p0, 0xff

    const/4 v2, 0x0

    aput v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aput v1, v0, v2

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    const/4 v1, 0x2

    aput p0, v0, v1

    return-object v0
.end method

.method public static data32BitsFromIntLSByteFirst(I)[I
    .locals 3

    const/4 v0, 0x4

    .line 95
    new-array v0, v0, [I

    and-int/lit16 v1, p0, 0xff

    const/4 v2, 0x0

    aput v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aput v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aput v1, v0, v2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    const/4 v1, 0x3

    aput p0, v0, v1

    return-object v0
.end method

.method public static dataIntFrom16BitsLSByteFirst(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    return p0
.end method

.method public static dataIntFrom16BitsLSByteFirst([I)I
    .locals 3

    .line 52
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p0, "DATA"

    const-string v0, "Parameter length error"

    .line 53
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 57
    :cond_0
    aget v0, p0, v1

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->dataIntFrom16BitsLSByteFirst(II)I

    move-result p0

    return p0
.end method

.method public static dataIntFrom24BitsLSByteFirst([I)I
    .locals 3

    .line 83
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "DATA"

    const-string v0, "Parameter length error"

    .line 84
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 88
    :cond_0
    aget v0, p0, v1

    const/4 v1, 0x1

    aget v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget p0, p0, v1

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 205
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 207
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 208
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method
