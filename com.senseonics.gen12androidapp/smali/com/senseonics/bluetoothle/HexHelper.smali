.class public Lcom/senseonics/bluetoothle/HexHelper;
.super Ljava/lang/Object;
.source "HexHelper.java"


# static fields
.field private static HEX_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/senseonics/bluetoothle/HexHelper;->HEX_ARRAY:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDateFromBytes([I)[I
    .locals 7

    const/4 v0, 0x3

    .line 39
    new-array v0, v0, [I

    const/4 v1, 0x1

    .line 41
    aget v2, p0, v1

    shr-int/2addr v2, v1

    add-int/lit16 v2, v2, 0x7d0

    const/4 v3, 0x0

    .line 44
    aget v4, p0, v3

    shr-int/lit8 v4, v4, 0x5

    .line 46
    aget v5, p0, v1

    const/4 v6, 0x2

    rem-int/2addr v5, v6

    if-ne v5, v1, :cond_0

    add-int/lit8 v4, v4, 0x8

    .line 49
    :cond_0
    aget p0, p0, v3

    and-int/lit8 p0, p0, 0x1f

    aput v2, v0, v3

    aput v4, v0, v1

    aput p0, v0, v6

    return-object v0
.end method

.method public static calculateTimeFromBytes([I)[I
    .locals 7

    const/4 v0, 0x3

    .line 65
    new-array v1, v0, [I

    const/4 v2, 0x1

    .line 67
    aget v3, p0, v2

    shr-int/2addr v3, v0

    const/4 v4, 0x0

    .line 70
    aget v5, p0, v4

    .line 71
    aget v6, p0, v2

    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v0, v6, 0x3

    shr-int/lit8 v5, v5, 0x5

    or-int/2addr v0, v5

    .line 74
    aget p0, p0, v4

    and-int/lit8 p0, p0, 0x1f

    const/4 v5, 0x2

    mul-int/lit8 p0, p0, 0x2

    aput v3, v1, v4

    aput v0, v1, v2

    aput p0, v1, v5

    return-object v1
.end method

.method public static intArrayToString([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 24
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 25
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 26
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 27
    sget-object v4, Lcom/senseonics/bluetoothle/HexHelper;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 28
    sget-object v4, Lcom/senseonics/bluetoothle/HexHelper;->HEX_ARRAY:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static intArrayToString([I)Ljava/lang/String;
    .locals 7

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    .line 9
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, p0, v3

    const-string v5, "%02x"

    const/4 v6, 0x1

    .line 10
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
