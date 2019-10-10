.class public Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;
.super Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;
.source "PredictiveRateSetting_PredictiveAlerts_High.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;-><init>()V

    return-void
.end method


# virtual methods
.method public getModelIntValue(Lcom/senseonics/model/TransmitterStateModel;)I
    .locals 0

    .line 28
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveRisingRateAlertMinuteInterval()I

    move-result p1

    return p1
.end method

.method public getModelSwitchValue(Lcom/senseonics/model/TransmitterStateModel;)Z
    .locals 0

    .line 23
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isPredictiveHighAlertsActivated()Z

    move-result p1

    return p1
.end method

.method public getSwitchTitleID()I
    .locals 1

    const v0, 0x7f0f01c9

    return v0
.end method

.method public getViewID()I
    .locals 1

    const v0, 0x7f09016f

    return v0
.end method

.method public writePickerValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;I)V
    .locals 0

    .line 13
    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWritePredictiveHighTimeIntervalRequest(I)V

    return-void
.end method

.method public writeSwitchValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Z)V
    .locals 0

    .line 8
    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWritePredictiveHighAlertsRequest(Z)V

    return-void
.end method
