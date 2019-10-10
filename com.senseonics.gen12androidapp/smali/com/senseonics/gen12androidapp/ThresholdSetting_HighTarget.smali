.class public Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;
.super Lcom/senseonics/gen12androidapp/ThresholdSetting;
.source "ThresholdSetting_HighTarget.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/ThresholdSetting;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdjacentModelValue_1(Lcom/senseonics/model/TransmitterStateModel;)I
    .locals 0

    .line 60
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result p1

    return p1
.end method

.method public getAdjacentModelValue_2(Lcom/senseonics/model/TransmitterStateModel;)I
    .locals 0

    .line 65
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result p1

    return p1
.end method

.method public getAdjacentProfileAttribute_1()Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
    .locals 1

    .line 50
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    return-object v0
.end method

.method public getAdjacentProfileAttribute_2()Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
    .locals 1

    .line 55
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

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

    .line 45
    invoke-virtual {p1, p2, p3}, Lcom/senseonics/util/ThresholdsController;->getTargetHighValues(II)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getGlucoseProfileAttribute()Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
    .locals 1

    .line 30
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    return-object v0
.end method

.method public getModelIntValue(Lcom/senseonics/model/TransmitterStateModel;)I
    .locals 0

    .line 40
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result p1

    return p1
.end method

.method public getSectionParentID()I
    .locals 1

    const v0, 0x7f090293

    return v0
.end method

.method public getSelectedValueFromPicker(ILcom/senseonics/util/ThresholdsController;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/bluetoothle/DialogUtils;)I
    .locals 0

    .line 19
    invoke-virtual/range {p0 .. p5}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;->getGlucoseValueMgFromPicker(ILcom/senseonics/util/ThresholdsController;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/bluetoothle/DialogUtils;)I

    move-result p1

    .line 18
    invoke-virtual {p2, p1}, Lcom/senseonics/util/ThresholdsController;->getTargetHighWithRangeChecked(I)I

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

    const v0, 0x7f0f0120

    return v0
.end method

.method public getValueTvID()I
    .locals 1

    const v0, 0x7f090143

    return v0
.end method

.method public getViewID()I
    .locals 1

    const v0, 0x7f090293

    return v0
.end method

.method public writePickerValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;I)V
    .locals 0

    .line 25
    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteHighGlucoseTarget(I)V

    return-void
.end method
