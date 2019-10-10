.class public Lcom/senseonics/events/NotificationDialogEvent;
.super Ljava/lang/Object;
.source "NotificationDialogEvent.java"


# instance fields
.field private final ep:Lcom/senseonics/events/EventPoint;

.field private final transmitterMessageCode:Lcom/senseonics/util/TransmitterMessageCode;


# direct methods
.method public constructor <init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/senseonics/events/NotificationDialogEvent;->ep:Lcom/senseonics/events/EventPoint;

    .line 12
    iput-object p2, p0, Lcom/senseonics/events/NotificationDialogEvent;->transmitterMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 30
    :cond_0
    instance-of v1, p1, Lcom/senseonics/events/NotificationDialogEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 31
    :cond_1
    check-cast p1, Lcom/senseonics/events/NotificationDialogEvent;

    .line 32
    iget-object v1, p0, Lcom/senseonics/events/NotificationDialogEvent;->ep:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    iget-object v3, p1, Lcom/senseonics/events/NotificationDialogEvent;->ep:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/senseonics/events/NotificationDialogEvent;->transmitterMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    iget-object p1, p1, Lcom/senseonics/events/NotificationDialogEvent;->transmitterMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    .line 33
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEventPoint()Lcom/senseonics/events/EventPoint;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/senseonics/events/NotificationDialogEvent;->ep:Lcom/senseonics/events/EventPoint;

    return-object v0
.end method

.method public getNotificationId()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/senseonics/events/NotificationDialogEvent;->transmitterMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v0

    return v0
.end method

.method public getTransmitterMessageCode()Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/senseonics/events/NotificationDialogEvent;->transmitterMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/senseonics/events/NotificationDialogEvent;->ep:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/senseonics/events/NotificationDialogEvent;->transmitterMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "eventType"

    iget-object v2, p0, Lcom/senseonics/events/NotificationDialogEvent;->ep:Lcom/senseonics/events/EventPoint;

    .line 44
    invoke-virtual {v2}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "transmitterMessageCode"

    iget-object v2, p0, Lcom/senseonics/events/NotificationDialogEvent;->transmitterMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
