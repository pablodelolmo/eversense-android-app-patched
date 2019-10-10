.class public Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalNightTimeSingleByteMemoryParsedResponse;
.super Ljava/lang/Object;
.source "ReadWriteLowGlucoseAlarmRepeatIntervalNightTimeSingleByteMemoryParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/SingleByteMemoryMapParsedResponse;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 0

    .line 17
    invoke-virtual {p2, p1}, Lcom/senseonics/model/TransmitterStateModel;->setLowGlucoseAlarmRepeatIntervalNightTime(I)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 12
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmRepeatIntervalNightTimeAddress:[I

    return-object v0
.end method
