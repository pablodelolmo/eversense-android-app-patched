.class public Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;
.super Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;
.source "ThresholdSetting_HighAlarm_Additional.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;-><init>()V

    return-void
.end method


# virtual methods
.method public getModelSwitchValue(Lcom/senseonics/model/TransmitterStateModel;)Z
    .locals 0

    .line 13
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isHighGlucoseAlarmsEnabled()Z

    move-result p1

    return p1
.end method

.method public getSwitchID()I
    .locals 1

    const v0, 0x7f090137

    return v0
.end method

.method public getSwitchTitleID()I
    .locals 1

    const v0, 0x7f0f0113

    return v0
.end method

.method public getSwitchTvID()I
    .locals 1

    const v0, 0x7f090138

    return v0
.end method

.method public getValueTitleID()I
    .locals 1

    const v0, 0x7f0f0114

    return v0
.end method

.method public writeSwitchValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Z)V
    .locals 0

    .line 8
    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteHighGlucoseAlarmEnabledRequest(Z)V

    return-void
.end method
