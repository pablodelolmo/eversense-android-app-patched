.class public abstract Lcom/senseonics/gen12androidapp/ThresholdSetting;
.super Ljava/lang/Object;
.source "ThresholdSetting.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;


# instance fields
.field private final NonTemp:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ThresholdSetting;->NonTemp:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    return-void
.end method

.method private getValueToDisplay(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;)I
    .locals 1

    .line 50
    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/ThresholdSetting;->NonTemp:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    .line 53
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getGlucoseProfileAttribute()Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    move-result-object v0

    .line 51
    invoke-virtual {p2, p1, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result p1

    return p1

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getModelIntValue(Lcom/senseonics/model/TransmitterStateModel;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected abstract getAdjacentModelValue_1(Lcom/senseonics/model/TransmitterStateModel;)I
.end method

.method protected abstract getAdjacentModelValue_2(Lcom/senseonics/model/TransmitterStateModel;)I
.end method

.method protected abstract getAdjacentProfileAttribute_1()Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
.end method

.method protected abstract getAdjacentProfileAttribute_2()Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
.end method

.method public getArrowImageID()I
    .locals 1

    const v0, 0x7f09005a

    return v0
.end method

.method public getAvailablePickerValues(Lcom/senseonics/util/ThresholdsController;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/util/ThresholdsController;",
            "Lcom/senseonics/model/TransmitterStateModel;",
            "Lcom/senseonics/bluetoothle/TempProfileManager;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-virtual {p3}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ThresholdSetting;->NonTemp:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    .line 27
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getAdjacentProfileAttribute_1()Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    move-result-object v0

    .line 25
    invoke-virtual {p3, p2, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result p2

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ThresholdSetting;->NonTemp:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    .line 30
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getAdjacentProfileAttribute_2()Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    move-result-object v1

    .line 28
    invoke-virtual {p3, v0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result p3

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getAvailablePickerValuesFromAdjacentValues(Lcom/senseonics/util/ThresholdsController;II)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getAdjacentModelValue_1(Lcom/senseonics/model/TransmitterStateModel;)I

    move-result p3

    .line 37
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getAdjacentModelValue_2(Lcom/senseonics/model/TransmitterStateModel;)I

    move-result p2

    .line 34
    invoke-virtual {p0, p1, p3, p2}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getAvailablePickerValuesFromAdjacentValues(Lcom/senseonics/util/ThresholdsController;II)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getAvailablePickerValuesFromAdjacentValues(Lcom/senseonics/util/ThresholdsController;II)Ljava/util/ArrayList;
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
.end method

.method public getBodySectionID()I
    .locals 1

    const v0, 0x7f09007e

    return v0
.end method

.method protected abstract getGlucoseProfileAttribute()Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
.end method

.method getGlucoseValueMgFromPicker(ILcom/senseonics/util/ThresholdsController;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/bluetoothle/DialogUtils;)I
    .locals 0

    .line 63
    invoke-virtual {p0, p2, p3, p4}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getAvailablePickerValues(Lcom/senseonics/util/ThresholdsController;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Item;

    invoke-virtual {p1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p5, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseValueMg(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getHeaderSectionID()I
    .locals 1

    const v0, 0x7f090130

    return v0
.end method

.method public getModelFloatValue(Lcom/senseonics/model/TransmitterStateModel;)F
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public getModelSwitchValue(Lcom/senseonics/model/TransmitterStateModel;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getModelValueString(Landroid/content/Context;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;)Ljava/lang/String;
    .locals 0

    .line 18
    invoke-direct {p0, p2, p3}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueToDisplay(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPickerPosition(Lcom/senseonics/util/ThresholdsController;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;)I
    .locals 1

    .line 44
    invoke-direct {p0, p2, p3}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueToDisplay(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;)I

    move-result v0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getAvailablePickerValues(Lcom/senseonics/util/ThresholdsController;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;)Ljava/util/ArrayList;

    move-result-object p2

    .line 43
    invoke-virtual {p1, v0, p2}, Lcom/senseonics/util/ThresholdsController;->getPosition(ILjava/util/ArrayList;)I

    move-result p1

    return p1
.end method

.method public abstract getSelectedValueFromPicker(ILcom/senseonics/util/ThresholdsController;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/bluetoothle/DialogUtils;)I
.end method

.method public getSwitchID()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSwitchTitleID()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSwitchTvID()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setNonTempThreshold(ILcom/senseonics/bluetoothle/TempProfileManager;)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getGlucoseProfileAttribute()Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/ThresholdSetting;->NonTemp:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    .line 68
    invoke-virtual {p2, p1, v0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    return-void
.end method

.method public writeSwitchValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Z)V
    .locals 0

    return-void
.end method
