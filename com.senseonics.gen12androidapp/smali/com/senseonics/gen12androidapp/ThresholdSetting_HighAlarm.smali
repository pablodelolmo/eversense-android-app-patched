.class public Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;
.super Lcom/senseonics/gen12androidapp/ThresholdSetting;
.source "ThresholdSetting_HighAlarm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/ThresholdSetting;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAdjacentModelValue_1(Lcom/senseonics/model/TransmitterStateModel;)I
    .locals 0

    .line 59
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result p1

    return p1
.end method

.method protected getAdjacentModelValue_2(Lcom/senseonics/model/TransmitterStateModel;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getAdjacentProfileAttribute_1()Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
    .locals 1

    .line 49
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    return-object v0
.end method

.method protected getAdjacentProfileAttribute_2()Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAvailablePickerValuesFromAdjacentValues(Lcom/senseonics/util/ThresholdsController;II)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/util/ThresholdsController;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-virtual {p1, p2}, Lcom/senseonics/util/ThresholdsController;->getAlarmHighValues(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getGlucoseProfileAttribute()Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
    .locals 1

    .line 29
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    return-object v0
.end method

.method public getModelIntValue(Lcom/senseonics/model/TransmitterStateModel;)I
    .locals 0

    .line 39
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result p1

    return p1
.end method

.method public getSectionParentID()I
    .locals 1

    const v0, 0x7f090030

    return v0
.end method

.method public getSelectedValueFromPicker(ILcom/senseonics/util/ThresholdsController;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/bluetoothle/DialogUtils;)I
    .locals 0

    .line 18
    invoke-virtual/range {p0 .. p5}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;->getGlucoseValueMgFromPicker(ILcom/senseonics/util/ThresholdsController;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/bluetoothle/DialogUtils;)I

    move-result p1

    .line 17
    invoke-virtual {p2, p1}, Lcom/senseonics/util/ThresholdsController;->getAlarmHighWithRangeChecked(I)I

    move-result p1

    return p1
.end method

.method public getValueLabelTvID()I
    .locals 1

    const v0, 0x7f09013b

    return v0
.end method

.method public getValueLayoutID()I
    .locals 1

    const v0, 0x7f09013c

    return v0
.end method

.method public getValueTitleID()I
    .locals 1

    const v0, 0x7f0f0113

    return v0
.end method

.method public getValueTvID()I
    .locals 1

    const v0, 0x7f090143

    return v0
.end method

.method public getViewID()I
    .locals 1

    const v0, 0x7f090030

    return v0
.end method

.method public writePickerValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;I)V
    .locals 0

    .line 24
    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteHighGlucoseAlarmRequest(I)V

    return-void
.end method
