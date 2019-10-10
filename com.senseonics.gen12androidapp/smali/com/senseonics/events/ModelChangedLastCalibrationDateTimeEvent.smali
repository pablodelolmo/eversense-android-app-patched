.class public Lcom/senseonics/events/ModelChangedLastCalibrationDateTimeEvent;
.super Ljava/lang/Object;
.source "ModelChangedLastCalibrationDateTimeEvent.java"


# instance fields
.field private lastCalibrationDateAndTime:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/senseonics/events/ModelChangedLastCalibrationDateTimeEvent;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public getLastCalibrationDateAndTime()Ljava/util/Calendar;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/senseonics/events/ModelChangedLastCalibrationDateTimeEvent;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    return-object v0
.end method
