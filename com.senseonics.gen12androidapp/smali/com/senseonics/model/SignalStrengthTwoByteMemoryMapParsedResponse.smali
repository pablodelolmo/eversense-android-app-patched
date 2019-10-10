.class public Lcom/senseonics/model/SignalStrengthTwoByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "SignalStrengthTwoByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(IILcom/senseonics/model/TransmitterStateModel;)V
    .locals 1

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    .line 21
    sget-object p2, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 24
    sget-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->EXCELLENT:Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v0}, Lcom/senseonics/model/SIGNAL_STRENGTH;->getThreshold()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 25
    sget-object p2, Lcom/senseonics/model/SIGNAL_STRENGTH;->EXCELLENT:Lcom/senseonics/model/SIGNAL_STRENGTH;

    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->GOOD:Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v0}, Lcom/senseonics/model/SIGNAL_STRENGTH;->getThreshold()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 27
    sget-object p2, Lcom/senseonics/model/SIGNAL_STRENGTH;->GOOD:Lcom/senseonics/model/SIGNAL_STRENGTH;

    goto :goto_0

    .line 28
    :cond_1
    sget-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v0}, Lcom/senseonics/model/SIGNAL_STRENGTH;->getThreshold()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 29
    sget-object p2, Lcom/senseonics/model/SIGNAL_STRENGTH;->LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    goto :goto_0

    .line 30
    :cond_2
    sget-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->VERY_LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v0}, Lcom/senseonics/model/SIGNAL_STRENGTH;->getThreshold()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 31
    sget-object p2, Lcom/senseonics/model/SIGNAL_STRENGTH;->VERY_LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    goto :goto_0

    .line 32
    :cond_3
    sget-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->POOR:Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v0}, Lcom/senseonics/model/SIGNAL_STRENGTH;->getThreshold()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 33
    sget-object p2, Lcom/senseonics/model/SIGNAL_STRENGTH;->POOR:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 35
    :cond_4
    :goto_0
    invoke-virtual {p3, p2}, Lcom/senseonics/model/TransmitterStateModel;->setSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;)V

    .line 37
    sget-object p1, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    if-eq p2, p1, :cond_5

    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    sget-object p2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p2, :cond_5

    .line 38
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p3, p1}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    :cond_5
    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 15
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->sensorFieldCurrentAddress:[I

    return-object v0
.end method
