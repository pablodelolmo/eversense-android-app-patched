.class public Lcom/senseonics/events/HealthEventPoint;
.super Lcom/senseonics/events/EventPoint;
.source "HealthEventPoint.java"

# interfaces
.implements Lcom/senseonics/events/PatientEventPoint;


# instance fields
.field private healthCondition:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

.field private healthSeverity:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;


# direct methods
.method public constructor <init>(ILjava/util/Calendar;ILcom/senseonics/events/EventUtils$HEALTH_CONDITION;Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/events/EventPoint;-><init>(ILjava/util/Calendar;I)V

    .line 26
    invoke-virtual {p0, p4}, Lcom/senseonics/events/HealthEventPoint;->setHealthCondition(Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;)V

    .line 27
    invoke-virtual {p0, p5}, Lcom/senseonics/events/HealthEventPoint;->setHealthSeverity(Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;)V

    .line 28
    invoke-virtual {p0, p6}, Lcom/senseonics/events/HealthEventPoint;->setNotes(Ljava/lang/String;)V

    .line 29
    sget-object p1, Lcom/senseonics/util/Utils$EVENT_TYPE;->HEALTH_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/HealthEventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;ILcom/senseonics/events/EventUtils$HEALTH_CONDITION;Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;I)V

    .line 16
    invoke-virtual {p0, p3}, Lcom/senseonics/events/HealthEventPoint;->setHealthCondition(Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;)V

    .line 17
    invoke-virtual {p0, p4}, Lcom/senseonics/events/HealthEventPoint;->setHealthSeverity(Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;)V

    .line 18
    invoke-virtual {p0, p5}, Lcom/senseonics/events/HealthEventPoint;->setNotes(Ljava/lang/String;)V

    .line 19
    sget-object p1, Lcom/senseonics/util/Utils$EVENT_TYPE;->HEALTH_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/HealthEventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    return-void
.end method


# virtual methods
.method public eventSubTypeId()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/senseonics/events/HealthEventPoint;->healthCondition:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v0

    return v0
.end method

.method public eventTypeId()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getHealthCondition()Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/senseonics/events/HealthEventPoint;->healthCondition:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    return-object v0
.end method

.method public getHealthSeverity()Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/senseonics/events/HealthEventPoint;->healthSeverity:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    return-object v0
.end method

.method public quantity()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/senseonics/events/HealthEventPoint;->healthSeverity:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->getSubType()I

    move-result v0

    return v0
.end method

.method public setHealthCondition(Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/senseonics/events/HealthEventPoint;->healthCondition:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    return-void
.end method

.method public setHealthSeverity(Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/senseonics/events/HealthEventPoint;->healthSeverity:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    return-void
.end method
