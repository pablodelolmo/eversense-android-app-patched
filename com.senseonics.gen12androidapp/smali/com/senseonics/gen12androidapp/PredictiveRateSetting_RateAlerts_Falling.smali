.class public Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;
.super Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;
.source "PredictiveRateSetting_RateAlerts_Falling.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;-><init>()V

    return-void
.end method


# virtual methods
.method public getModelFloatValue(Lcom/senseonics/model/TransmitterStateModel;)F
    .locals 0

    .line 28
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result p1

    return p1
.end method

.method public getModelSwitchValue(Lcom/senseonics/model/TransmitterStateModel;)Z
    .locals 0

    .line 23
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isRateFallingAlertsActivated()Z

    move-result p1

    return p1
.end method

.method public getSwitchTitleID()I
    .locals 1

    const v0, 0x7f0f01d3

    return v0
.end method

.method public getViewID()I
    .locals 1

    const v0, 0x7f090172

    return v0
.end method

.method public writePickerValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;I)V
    .locals 0

    .line 13
    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteRateFallingAlertThresholdRequest(I)V

    return-void
.end method

.method public writeSwitchValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Z)V
    .locals 0

    .line 8
    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteRateFallingAlert(Z)V

    return-void
.end method
