.class public Lcom/senseonics/util/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# static fields
.field public static final kMmolToMg:F = 18.02f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MLConvertMgToMmol(F)F
    .locals 2

    const v0, 0x419028f6    # 18.02f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const/4 p0, 0x3

    .line 9
    invoke-static {v0, v1, p0}, Lcom/senseonics/util/Convert;->round(DI)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static MLConvertMmolToMg(F)I
    .locals 1

    const v0, 0x419028f6    # 18.02f

    mul-float p0, p0, v0

    .line 23
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static MLConvertMmolToMgRate(F)F
    .locals 2

    const v0, 0x419028f6    # 18.02f

    mul-float p0, p0, v0

    float-to-double v0, p0

    const/4 p0, 0x1

    .line 28
    invoke-static {v0, v1, p0}, Lcom/senseonics/util/Convert;->round(DI)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static round(DI)D
    .locals 4

    if-gez p2, :cond_0

    .line 14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p2

    .line 16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    long-to-double v0, v0

    mul-double p0, p0, v0

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method
