.class public Lcom/senseonics/events/CalibrationCountdownEvent;
.super Ljava/lang/Object;
.source "CalibrationCountdownEvent.java"


# instance fields
.field private final currentCountdownMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/senseonics/events/CalibrationCountdownEvent;->currentCountdownMillis:J

    return-void
.end method


# virtual methods
.method public getCurrentCountdownMillis()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/senseonics/events/CalibrationCountdownEvent;->currentCountdownMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 18
    const-class v0, Lcom/senseonics/events/CalibrationCountdownEvent;

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "currentCountdownMillis"

    iget-wide v2, p0, Lcom/senseonics/events/CalibrationCountdownEvent;->currentCountdownMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
