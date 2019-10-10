.class public Lcom/senseonics/bluetoothle/TransmitterStateSyncer;
.super Ljava/lang/Object;
.source "TransmitterStateSyncer.java"


# instance fields
.field private bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private context:Landroid/content/Context;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

.field private waitingForLastResponse:Z


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/BluetoothService;Landroid/content/SharedPreferences;Lcom/senseonics/model/TransmitterStateModel;Landroid/content/Context;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->waitingForLastResponse:Z

    .line 24
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    .line 25
    iput-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 26
    iput-object p3, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 27
    iput-object p4, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->context:Landroid/content/Context;

    .line 28
    iput-object p5, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    return-void
.end method

.method private getAppVersion()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 202
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private isGlucoseDataRequest(I)Z
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidAppVersion(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "\\."

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 213
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string v0, "AppVersion"

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid 1: length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    goto/16 :goto_4

    .line 218
    :cond_0
    aget-object v0, p1, v1

    const/4 v2, 0x1

    .line 219
    aget-object v3, p1, v2

    const/4 v4, 0x2

    .line 220
    aget-object p1, p1, v4

    .line 227
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 228
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move v4, p1

    const/4 p1, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    :goto_2
    const-string v4, "AppVersion"

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "AppVersion"

    const-string v4, "invalid 2"

    .line 234
    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ne p1, v2, :cond_6

    const/16 v2, 0xff

    if-ltz v0, :cond_1

    if-le v0, v2, :cond_2

    :cond_1
    const-string p1, "AppVersion"

    const-string v0, "invalid 3"

    .line 240
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_2
    if-ltz v3, :cond_3

    if-le v3, v2, :cond_4

    :cond_3
    const-string p1, "AppVersion"

    const-string v0, "invalid 4"

    .line 245
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_4
    if-ltz v4, :cond_5

    const v0, 0xffff

    if-le v4, v0, :cond_6

    :cond_5
    const-string p1, "AppVersion"

    const-string v0, "invalid 5"

    .line 250
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    :goto_4
    const-string v0, "AppVersion"

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "valid check:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private syncWholeTransmitterState()V
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postBatteryVoltageRequest()V

    .line 74
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getMorningCalibrationLocalTimeHour()I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getMorningCalibrationLocalTimeMinute()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    if-eq v1, v4, :cond_0

    .line 77
    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    aget v5, v0, v3

    aget v0, v0, v2

    invoke-virtual {v1, v5, v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteMorningCalibrationTime(II)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getMorningCalibrationTimeHour()I

    move-result v1

    iget-object v5, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getMorningCalibrationTimeMinute()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteMorningCalibrationTime(II)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getEveningCalibrationLocalTimeHour()I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getEveningCalibrationLocalTimeMinute()I

    move-result v1

    if-eq v0, v4, :cond_1

    if-eq v1, v4, :cond_1

    .line 87
    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    aget v4, v0, v3

    aget v0, v0, v2

    invoke-virtual {v1, v4, v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteEveningCalibrationTime(II)V

    goto :goto_1

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getEveningCalibrationTimeHour()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getEveningCalibrationTimeMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteEveningCalibrationTime(II)V

    .line 95
    :goto_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getDayStartTimeHour()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getDayStartTimeMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/BluetoothService;->postDayStartTime(II)V

    .line 96
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getNightStartTimeHour()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getNightStartTimeMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/BluetoothService;->postNightStartTime(II)V

    .line 99
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postPingRequest()V

    .line 100
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postGetModelRequest()V

    .line 101
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postVersionNumberRequest()V

    .line 102
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postLastCalibrationDateTimeRequest()V

    .line 103
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postPhaseStartDateTimeRequest()V

    .line 104
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postCurrentCalibrationPhaseRequest()V

    .line 105
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postCompletedCalibrationsCountRequest()V

    .line 106
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postHysteresisPercentRequest()V

    .line 107
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postHysteresisValueRequest()V

    .line 108
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postPredictiveHysteresisPercentRequest()V

    .line 109
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postPredictiveHysteresisValueRequest()V

    .line 111
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, v3}, Lcom/senseonics/model/TransmitterStateModel;->setAlgorithmParameterFormatVersion(I)V

    .line 112
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postAlgorithmParameterFormatVersion()V

    .line 114
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadCommunicationProtocolVersionRequest()V

    .line 117
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postMEPMSPInfo()V

    .line 120
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postGlucoseAlarmRepeatIntervalAndStartTime()V

    .line 123
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postLinkedSensorId()V

    .line 124
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadUnlinkedSensorIdRequest()V

    .line 125
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionDate()V

    .line 126
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionTime()V

    .line 128
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadClinicalModeRequest()V

    .line 130
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadDelayBLEDisconnectAlarmAddressRequest()V

    .line 131
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadVibrateModeRequest()V

    .line 141
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppVersion"

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateSyncer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->isValidAppVersion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v1, v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteAppVersion(Ljava/lang/String;)V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorGlucoseSamplingInterval()V

    .line 151
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadMorningCalibrationTime()V

    .line 152
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadEveningCalibrationTime()V

    .line 155
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadSensorGlucoseAlertsAndStatus()V

    .line 158
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postCalibrationThresholds()V

    .line 162
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadHighGlucoseTargetRequest()V

    .line 163
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadLowGlucoseTargetRequest()V

    .line 166
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadHighGlucoseAlarmRequest()V

    .line 167
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadLowGlucoseAlarmRequest()V

    .line 168
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadHighGlucoseAlarmEnabledRequest()V

    .line 171
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadPredictiveAlertsRequest()V

    .line 172
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadPredictiveLowAlertsRequest()V

    .line 173
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadPredictiveHighAlertsRequest()V

    .line 174
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadPredictiveTimeIntervalRequest()V

    .line 176
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadRateAlert()V

    .line 177
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadRateFallingAlert()V

    .line 178
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadRateRisingAlert()V

    .line 179
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadRateAlertThresholdRequest()V

    .line 181
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadSignalStrengthRequest()V

    .line 182
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postBatteryLifeRequest()V

    .line 185
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadRawDataAndGlucoseData()V

    return-void
.end method


# virtual methods
.method public isTransmitterSynced(IZ)Z
    .locals 2

    .line 36
    iget-boolean v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->waitingForLastResponse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->isGlucoseDataRequest(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 37
    iput-boolean v1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->waitingForLastResponse:Z

    if-nez p2, :cond_0

    const-string p1, "TimeChange"

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isTransmitterSynced:true|service:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterTime(J)V

    .line 47
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->adjustLastReadDateTimeWhenSendingReadCommand()V

    .line 48
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadCurrentTransmitterDateAndTime()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public syncTransmitterState()V
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->waitingForLastResponse:Z

    .line 60
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->syncWholeTransmitterState()V

    return-void
.end method

.method public syncTransmitterStateUponReconnect()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->waitingForLastResponse:Z

    .line 66
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->syncWholeTransmitterState()V

    return-void
.end method
