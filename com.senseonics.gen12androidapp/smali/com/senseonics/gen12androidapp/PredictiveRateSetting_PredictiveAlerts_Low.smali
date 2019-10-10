.class public Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;
.super Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;
.source "PredictiveRateSetting_PredictiveAlerts_Low.java"


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
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveFallingRateAlertMinuteInterval()I

    move-result p1

    return p1
.end method

.method public getModelSwitchValue(Lcom/senseonics/model/TransmitterStateModel;)Z
    .locals 0

    .line 23
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isPredictiveLowAlertsActivated()Z

    move-result p1

    return p1
.end method

.method public getSwitchTitleID()I
    .locals 1

    const v0, 0x7f0f01ca

    return v0
.end method

.method public getViewID()I
    .locals 1

    const v0, 0x7f090170

    return v0
.end method

.method public writePickerValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;I)V
    .locals 0

    .line 13
    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWritePredictiveLowTimeIntervalRequest(I)V

    return-void
.end method

.method public writeSwitchValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Z)V
    .locals 0

    .line 8
    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWritePredictiveLowAlertsRequest(Z)V

    return-void
.end method
