.class Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;
.super Ljava/lang/Object;


# static fields
.field private static final VALID_SEQ_MASK:J = 0xffffffffffffL

.field private static final WINDOW_SIZE:J = 0x40L


# instance fields
.field private bitmap:J

.field private latestConfirmedSeq:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    return-void
.end method


# virtual methods
.method reportAuthenticated(J)V
    .locals 7

    const-wide v0, 0xffffffffffffL

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'seq\' out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x40

    const-wide/16 v3, 0x1

    if-gtz v0, :cond_1

    iget-wide v5, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long/2addr v5, p1

    cmp-long p1, v5, v1

    if-gez p1, :cond_3

    iget-wide p1, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    long-to-int v0, v5

    shl-long v0, v3, v0

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    return-void

    :cond_1
    iget-wide v5, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long v5, p1, v5

    cmp-long v0, v5, v1

    if-ltz v0, :cond_2

    iput-wide v3, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    long-to-int v2, v5

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    or-long/2addr v0, v3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    :goto_0
    iput-wide p1, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    :cond_3
    return-void
.end method

.method reset()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    return-void
.end method

.method shouldDiscard(J)Z
    .locals 6

    const-wide v0, 0xffffffffffffL

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    cmp-long v0, p1, v2

    if-gtz v0, :cond_2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long/2addr v2, p1

    const-wide/16 p1, 0x40

    cmp-long p1, v2, p1

    if-ltz p1, :cond_1

    return v1

    :cond_1
    iget-wide p1, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    const-wide/16 v4, 0x1

    long-to-int v0, v2

    shl-long v2, v4, v0

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
