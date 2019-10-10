.class public Lcom/senseonics/model/ReadWriteHighGlucoseAlarmEnabledSingleByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "ReadWriteHighGlucoseAlarmEnabledSingleByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/SingleByteMemoryMapParsedResponse;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/16 v1, 0x55

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p2, v0}, Lcom/senseonics/model/TransmitterStateModel;->setHighGlucoseAlarmsEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p2, p1}, Lcom/senseonics/model/TransmitterStateModel;->setHighGlucoseAlarmsEnabled(Z)V

    .line 27
    :goto_0
    invoke-virtual {p2, v0}, Lcom/senseonics/model/TransmitterStateModel;->setSupportForHighGluAlarmPredRateHighLowSettings(Z)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 13
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmEnabled:[I

    return-object v0
.end method
