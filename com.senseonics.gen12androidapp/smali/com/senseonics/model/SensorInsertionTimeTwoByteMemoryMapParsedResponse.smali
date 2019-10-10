.class public Lcom/senseonics/model/SensorInsertionTimeTwoByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "SensorInsertionTimeTwoByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(IILcom/senseonics/model/TransmitterStateModel;)V
    .locals 4

    const/4 v0, 0x2

    .line 23
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object p2

    .line 24
    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v3, 0xb

    .line 26
    aget v2, p2, v2

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 27
    aget p1, p2, p1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 28
    aget p2, p2, v0

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->set(II)V

    const-string p1, "Insertion Debug"

    const-string p2, "set time only"

    .line 30
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p3, v1}, Lcom/senseonics/model/TransmitterStateModel;->setSensorInsertionDateAndTime(Ljava/util/Calendar;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p3, p1}, Lcom/senseonics/model/TransmitterStateModel;->setSensorInsertionDateAndTime(Ljava/util/Calendar;)V

    :goto_0
    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 18
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->sensorInsertionTimeAddress:[I

    return-object v0
.end method
