.class public Lorg/bouncycastle/crypto/tls/MaxFragmentLength;
.super Ljava/lang/Object;


# static fields
.field public static pow2_10:S = 0x2s

.field public static pow2_11:S = 0x3s

.field public static pow2_12:S = 0x4s

.field public static pow2_9:S = 0x1s


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid(S)Z
    .locals 1

    sget-short v0, Lorg/bouncycastle/crypto/tls/MaxFragmentLength;->pow2_9:S

    if-lt p0, v0, :cond_0

    sget-short v0, Lorg/bouncycastle/crypto/tls/MaxFragmentLength;->pow2_12:S

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
