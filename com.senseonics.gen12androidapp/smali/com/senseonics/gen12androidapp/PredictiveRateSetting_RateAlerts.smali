.class public Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;
.super Lcom/senseonics/gen12androidapp/PredictiveRateSetting;
.source "PredictiveRateSetting_RateAlerts.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;-><init>()V

    return-void
.end method

.method private getRateLevels()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    sget-object v1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v2, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    const/high16 v3, 0x3fc00000    # 1.5f

    const/high16 v4, 0x40a00000    # 5.0f

    if-ne v1, v2, :cond_0

    :goto_0
    cmpg-float v1, v3, v4

    if-gtz v1, :cond_2

    .line 116
    new-instance v1, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 117
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v3, v1

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {v3}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result v1

    float-to-double v1, v1

    .line 121
    invoke-static {v4}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result v3

    float-to-double v3, v3

    :goto_1
    cmpg-double v5, v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_1

    .line 124
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%.2f"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getGlucoseLevels"

    .line 125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "formatted:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v6, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7, v5}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    add-double/2addr v1, v5

    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Item;

    invoke-virtual {v1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 129
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.2f"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v2, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 131
    new-instance v1, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%.2f"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v7, v6

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getAvailablePickerValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;->getRateLevels()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getModelFloatValue(Lcom/senseonics/model/TransmitterStateModel;)F
    .locals 0

    .line 94
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result p1

    return p1
.end method

.method public getModelIntValue(Lcom/senseonics/model/TransmitterStateModel;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getModelSwitchValue(Lcom/senseonics/model/TransmitterStateModel;)Z
    .locals 0

    .line 84
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isRateAlertsActivated()Z

    move-result p1

    return p1
.end method

.method public getModelValueString(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;
    .locals 5

    .line 17
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;->getModelSwitchValue(Lcom/senseonics/model/TransmitterStateModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;->getModelFloatValue(Lcom/senseonics/model/TransmitterStateModel;)F

    move-result p1

    .line 20
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v1, :cond_0

    .line 21
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "mg/dL/min"

    aput-object p1, v4, v2

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2f %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "mmol/L/min"

    aput-object p1, v4, v2

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 27
    :cond_1
    sget-object p1, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getPickerPosition(Lcom/senseonics/model/TransmitterStateModel;)I
    .locals 5

    .line 61
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;->getAvailablePickerValues()Ljava/util/ArrayList;

    move-result-object v0

    .line 63
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;->getModelFloatValue(Lcom/senseonics/model/TransmitterStateModel;)F

    move-result p1

    .line 64
    sget-object v1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v2, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v1, v2, :cond_0

    .line 65
    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;F)I

    move-result p1

    goto :goto_0

    .line 67
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getSectionParentID()I
    .locals 1

    const v0, 0x7f09021a

    return v0
.end method

.method public getSelectedValueFromPicker(I)I
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;->getAvailablePickerValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Item;

    invoke-virtual {p1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 46
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_0

    .line 47
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMmolToMgRate(F)F

    move-result p1

    :goto_0
    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getSwitchTitleID()I
    .locals 1

    const v0, 0x7f0f01d2

    return v0
.end method

.method public getValueTitleID()I
    .locals 1

    const v0, 0x7f0f01da

    return v0
.end method

.method public getViewID()I
    .locals 1

    const v0, 0x7f090171

    return v0
.end method

.method public writePickerValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;I)V
    .locals 0

    .line 56
    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteRateAlertThresholdRequest(I)V

    return-void
.end method

.method public writeSwitchValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Z)V
    .locals 0

    .line 39
    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteRateAlert(Z)V

    return-void
.end method
