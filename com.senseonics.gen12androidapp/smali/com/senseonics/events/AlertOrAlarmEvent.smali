.class public Lcom/senseonics/events/AlertOrAlarmEvent;
.super Ljava/lang/Object;
.source "AlertOrAlarmEvent.java"


# instance fields
.field private aep:Lcom/senseonics/events/AlertEventPoint;

.field private notificationId:I


# direct methods
.method public constructor <init>(Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/senseonics/events/AlertOrAlarmEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    .line 13
    iput p2, p0, Lcom/senseonics/events/AlertOrAlarmEvent;->notificationId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 37
    :cond_1
    check-cast p1, Lcom/senseonics/events/AlertOrAlarmEvent;

    .line 38
    iget-object v2, p0, Lcom/senseonics/events/AlertOrAlarmEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    invoke-virtual {v2}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    iget-object v3, p1, Lcom/senseonics/events/AlertOrAlarmEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    invoke-virtual {v3}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/senseonics/events/AlertOrAlarmEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    .line 39
    invoke-virtual {v2}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v2

    iget-object p1, p1, Lcom/senseonics/events/AlertOrAlarmEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    invoke-virtual {p1}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/senseonics/events/AlertOrAlarmEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    return-object v0
.end method

.method public getNotificationId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/senseonics/events/AlertOrAlarmEvent;->notificationId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/senseonics/events/AlertOrAlarmEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/senseonics/events/AlertOrAlarmEvent;->aep:Lcom/senseonics/events/AlertEventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
