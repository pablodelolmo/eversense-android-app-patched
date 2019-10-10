.class public Lcom/senseonics/events/CalibrationEventPoint;
.super Lcom/senseonics/events/EventPoint;
.source "CalibrationEventPoint.java"


# instance fields
.field private calibrationFlag:I


# direct methods
.method public constructor <init>(ILjava/util/Calendar;IILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/events/EventPoint;-><init>(ILjava/util/Calendar;I)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/senseonics/events/CalibrationEventPoint;->calibrationFlag:I

    .line 24
    sget-object p1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/CalibrationEventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 25
    invoke-virtual {p0, p4}, Lcom/senseonics/events/CalibrationEventPoint;->setCalibrationFlag(I)V

    .line 26
    invoke-virtual {p0, p5}, Lcom/senseonics/events/CalibrationEventPoint;->setNotes(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;II)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;I)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/senseonics/events/CalibrationEventPoint;->calibrationFlag:I

    .line 13
    sget-object p1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/CalibrationEventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 14
    invoke-virtual {p0, p3}, Lcom/senseonics/events/CalibrationEventPoint;->setCalibrationFlag(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;IILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(Ljava/util/Calendar;II)V

    .line 19
    invoke-virtual {p0, p4}, Lcom/senseonics/events/CalibrationEventPoint;->setNotes(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCalibrationFlag()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/senseonics/events/CalibrationEventPoint;->calibrationFlag:I

    return v0
.end method

.method public setCalibrationFlag(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/senseonics/events/CalibrationEventPoint;->calibrationFlag:I

    return-void
.end method
