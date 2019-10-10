.class public Lcom/senseonics/events/CalibrationRequestEvent;
.super Ljava/lang/Object;
.source "CalibrationRequestEvent.java"


# instance fields
.field private final eventPoint:Lcom/senseonics/events/EventPoint;

.field private notificationId:I


# direct methods
.method public constructor <init>(Lcom/senseonics/events/EventPoint;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/senseonics/events/CalibrationRequestEvent;->eventPoint:Lcom/senseonics/events/EventPoint;

    .line 9
    iput p2, p0, Lcom/senseonics/events/CalibrationRequestEvent;->notificationId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 23
    :cond_0
    instance-of v1, p1, Lcom/senseonics/events/CalibrationRequestEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 25
    :cond_1
    check-cast p1, Lcom/senseonics/events/CalibrationRequestEvent;

    .line 27
    iget-object v1, p0, Lcom/senseonics/events/CalibrationRequestEvent;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    iget-object p1, p1, Lcom/senseonics/events/CalibrationRequestEvent;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object p1

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getEventPoint()Lcom/senseonics/events/EventPoint;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/senseonics/events/CalibrationRequestEvent;->eventPoint:Lcom/senseonics/events/EventPoint;

    return-object v0
.end method

.method public getNotificationId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/senseonics/events/CalibrationRequestEvent;->notificationId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/senseonics/events/CalibrationRequestEvent;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->hashCode()I

    move-result v0

    return v0
.end method
