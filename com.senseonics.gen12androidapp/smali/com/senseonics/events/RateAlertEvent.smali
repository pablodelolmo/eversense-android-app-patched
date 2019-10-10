.class public Lcom/senseonics/events/RateAlertEvent;
.super Ljava/lang/Object;
.source "RateAlertEvent.java"


# instance fields
.field private final aep:Lcom/senseonics/events/AlertEventPoint;

.field private notificationId:I


# direct methods
.method public constructor <init>(Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/senseonics/events/RateAlertEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    .line 9
    iput p2, p0, Lcom/senseonics/events/RateAlertEvent;->notificationId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 15
    :cond_0
    instance-of v1, p1, Lcom/senseonics/events/RateAlertEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 17
    :cond_1
    check-cast p1, Lcom/senseonics/events/RateAlertEvent;

    .line 19
    iget-object v1, p1, Lcom/senseonics/events/RateAlertEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/AlertEventPoint;->getRateValue()F

    move-result v1

    iget-object v3, p0, Lcom/senseonics/events/RateAlertEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    invoke-virtual {v3}, Lcom/senseonics/events/AlertEventPoint;->getRateValue()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/senseonics/events/RateAlertEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    iget-object p1, p1, Lcom/senseonics/events/RateAlertEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    invoke-virtual {p1}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object p1

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/senseonics/events/RateAlertEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    return-object v0
.end method

.method public getNotificationId()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/senseonics/events/RateAlertEvent;->notificationId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/senseonics/events/RateAlertEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$EVENT_TYPE;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget-object v1, p0, Lcom/senseonics/events/RateAlertEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/AlertEventPoint;->getRateValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/senseonics/events/RateAlertEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/AlertEventPoint;->getRateValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
