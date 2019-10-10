.class public Lcom/senseonics/events/AlertEventPoint;
.super Lcom/senseonics/events/EventPoint;
.source "AlertEventPoint.java"


# instance fields
.field private alertType:Lcom/senseonics/util/Utils$ALERT_TYPE;

.field private glucoseType:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V
    .locals 0

    .line 25
    invoke-direct {p0, p2, p3, p4}, Lcom/senseonics/events/EventPoint;-><init>(ILjava/util/Calendar;I)V

    .line 26
    invoke-virtual {p0, p5}, Lcom/senseonics/events/AlertEventPoint;->setAlertType(Lcom/senseonics/util/Utils$ALERT_TYPE;)V

    .line 27
    invoke-virtual {p0, p6}, Lcom/senseonics/events/AlertEventPoint;->setGlucoseType(Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/util/Utils$EVENT_TYPE;Ljava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V
    .locals 0

    .line 16
    invoke-direct {p0, p2, p3}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;I)V

    .line 17
    invoke-virtual {p0, p4}, Lcom/senseonics/events/AlertEventPoint;->setAlertType(Lcom/senseonics/util/Utils$ALERT_TYPE;)V

    .line 18
    invoke-virtual {p0, p5}, Lcom/senseonics/events/AlertEventPoint;->setGlucoseType(Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

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

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 61
    :cond_1
    check-cast p1, Lcom/senseonics/events/AlertEventPoint;

    .line 62
    invoke-virtual {p0}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v2

    invoke-virtual {p1}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    invoke-virtual {p1}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

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

.method public getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/senseonics/events/AlertEventPoint;->alertType:Lcom/senseonics/util/Utils$ALERT_TYPE;

    return-object v0
.end method

.method public getGlucoseType()Lcom/senseonics/util/Utils$GLUCOSE_TYPE;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/senseonics/events/AlertEventPoint;->glucoseType:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAlertType(Lcom/senseonics/util/Utils$ALERT_TYPE;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/senseonics/events/AlertEventPoint;->alertType:Lcom/senseonics/util/Utils$ALERT_TYPE;

    return-void
.end method

.method public setGlucoseType(Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/senseonics/events/AlertEventPoint;->glucoseType:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<AlertEventPoint>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/senseonics/events/EventPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|AlertType:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/events/AlertEventPoint;->alertType:Lcom/senseonics/util/Utils$ALERT_TYPE;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|GlucoseType:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/events/AlertEventPoint;->glucoseType:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</AlertEventPoint>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
