.class public Lcom/senseonics/events/GlucoseEventPoint;
.super Lcom/senseonics/events/EventPoint;
.source "GlucoseEventPoint.java"


# instance fields
.field private calibrationFlag:I


# direct methods
.method public constructor <init>(ILjava/util/Calendar;IILjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/events/EventPoint;-><init>(ILjava/util/Calendar;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/senseonics/events/GlucoseEventPoint;->calibrationFlag:I

    .line 23
    sget-object p1, Lcom/senseonics/util/Utils$EVENT_TYPE;->GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/GlucoseEventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 24
    invoke-virtual {p0, p4}, Lcom/senseonics/events/GlucoseEventPoint;->setCalibrationFlag(I)V

    .line 25
    invoke-virtual {p0, p5}, Lcom/senseonics/events/GlucoseEventPoint;->setNotes(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;II)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/senseonics/events/GlucoseEventPoint;->calibrationFlag:I

    .line 12
    sget-object p1, Lcom/senseonics/util/Utils$EVENT_TYPE;->GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/GlucoseEventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 13
    invoke-virtual {p0, p3}, Lcom/senseonics/events/GlucoseEventPoint;->setCalibrationFlag(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;IILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(Ljava/util/Calendar;II)V

    .line 18
    invoke-virtual {p0, p4}, Lcom/senseonics/events/GlucoseEventPoint;->setNotes(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCalibrationFlag()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/senseonics/events/GlucoseEventPoint;->calibrationFlag:I

    return v0
.end method

.method public setCalibrationFlag(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/senseonics/events/GlucoseEventPoint;->calibrationFlag:I

    return-void
.end method
