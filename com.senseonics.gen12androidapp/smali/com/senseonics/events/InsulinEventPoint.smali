.class public Lcom/senseonics/events/InsulinEventPoint;
.super Lcom/senseonics/events/EventPoint;
.source "InsulinEventPoint.java"

# interfaces
.implements Lcom/senseonics/events/PatientEventPoint;


# instance fields
.field private insulinType:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field private units:F


# direct methods
.method public constructor <init>(ILjava/util/Calendar;IFLcom/senseonics/events/EventUtils$INSULIN_TYPE;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/events/EventPoint;-><init>(ILjava/util/Calendar;I)V

    .line 25
    invoke-virtual {p0, p4}, Lcom/senseonics/events/InsulinEventPoint;->setUnits(F)V

    .line 26
    invoke-virtual {p0, p5}, Lcom/senseonics/events/InsulinEventPoint;->setInsulinType(Lcom/senseonics/events/EventUtils$INSULIN_TYPE;)V

    .line 27
    invoke-virtual {p0, p6}, Lcom/senseonics/events/InsulinEventPoint;->setNotes(Ljava/lang/String;)V

    .line 28
    sget-object p1, Lcom/senseonics/util/Utils$EVENT_TYPE;->INSULIN_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/InsulinEventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;IFLcom/senseonics/events/EventUtils$INSULIN_TYPE;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;I)V

    .line 15
    invoke-virtual {p0, p3}, Lcom/senseonics/events/InsulinEventPoint;->setUnits(F)V

    .line 16
    invoke-virtual {p0, p4}, Lcom/senseonics/events/InsulinEventPoint;->setInsulinType(Lcom/senseonics/events/EventUtils$INSULIN_TYPE;)V

    .line 17
    invoke-virtual {p0, p5}, Lcom/senseonics/events/InsulinEventPoint;->setNotes(Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/senseonics/util/Utils$EVENT_TYPE;->INSULIN_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/InsulinEventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    return-void
.end method


# virtual methods
.method public eventSubTypeId()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/senseonics/events/InsulinEventPoint;->insulinType:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v0

    return v0
.end method

.method public eventTypeId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getInsulinType()Lcom/senseonics/events/EventUtils$INSULIN_TYPE;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/senseonics/events/InsulinEventPoint;->insulinType:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    return-object v0
.end method

.method public getUnits()F
    .locals 1

    .line 32
    iget v0, p0, Lcom/senseonics/events/InsulinEventPoint;->units:F

    return v0
.end method

.method public quantity()I
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/senseonics/events/InsulinEventPoint;->getUnits()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public setInsulinType(Lcom/senseonics/events/EventUtils$INSULIN_TYPE;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/senseonics/events/InsulinEventPoint;->insulinType:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    return-void
.end method

.method public setUnits(F)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/senseonics/events/InsulinEventPoint;->units:F

    return-void
.end method
