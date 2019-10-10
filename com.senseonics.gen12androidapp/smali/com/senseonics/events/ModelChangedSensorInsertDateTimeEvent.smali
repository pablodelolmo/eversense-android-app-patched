.class public Lcom/senseonics/events/ModelChangedSensorInsertDateTimeEvent;
.super Ljava/lang/Object;
.source "ModelChangedSensorInsertDateTimeEvent.java"


# instance fields
.field private sensorInsertionDateTime:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/senseonics/events/ModelChangedSensorInsertDateTimeEvent;->sensorInsertionDateTime:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public getSensorInsertionDateTime()Ljava/util/Calendar;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/senseonics/events/ModelChangedSensorInsertDateTimeEvent;->sensorInsertionDateTime:Ljava/util/Calendar;

    return-object v0
.end method
