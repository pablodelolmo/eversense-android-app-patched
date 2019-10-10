.class public Lcom/senseonics/events/ModelChangedStartPhaseCalibrationDateTimeEvent;
.super Ljava/lang/Object;
.source "ModelChangedStartPhaseCalibrationDateTimeEvent.java"


# instance fields
.field private startCalibrationPhaseDateAndTime:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/senseonics/events/ModelChangedStartPhaseCalibrationDateTimeEvent;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/senseonics/events/ModelChangedStartPhaseCalibrationDateTimeEvent;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    return-object v0
.end method
