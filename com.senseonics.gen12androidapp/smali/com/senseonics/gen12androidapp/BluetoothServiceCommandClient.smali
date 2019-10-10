.class public Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
.super Ljava/lang/Object;
.source "BluetoothServiceCommandClient.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->context:Landroid/content/Context;

    return-void
.end method

.method private contextStartService(Landroid/content/Intent;)V
    .locals 2

    .line 406
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method private gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;
    .locals 3

    .line 399
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->context:Landroid/content/Context;

    const-class v2, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private postBloodGlucoseRecordRange()V
    .locals 1

    .line 207
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_BLOOD_GLUCOSE_RANGE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 208
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postLastCalibrationDateRequest()V
    .locals 1

    .line 389
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_LAST_CALIBRATION_DATE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 390
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postLastCalibrationTimeRequest()V
    .locals 1

    .line 394
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_LAST_CALIBRATION_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 395
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadGlucoseData()V
    .locals 1

    .line 81
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_GLUCOSE_DATA:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadMostRecentGlucoseValue()V
    .locals 1

    .line 86
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MOST_RECENT_GLUCOSE_VALUE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue1()V
    .locals 1

    .line 103
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_1:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 104
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue2()V
    .locals 1

    .line 108
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_2:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue3()V
    .locals 1

    .line 113
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_3:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue4()V
    .locals 1

    .line 118
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_4:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue5()V
    .locals 1

    .line 123
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_5:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue6()V
    .locals 1

    .line 128
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_6:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 129
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue7()V
    .locals 1

    .line 133
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_7:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue8()V
    .locals 1

    .line 138
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_8:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 139
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValues()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue1()V

    .line 93
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue2()V

    .line 94
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue3()V

    .line 95
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue4()V

    .line 96
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue5()V

    .line 97
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue6()V

    .line 98
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue7()V

    .line 99
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue8()V

    return-void
.end method

.method private postSensorGlucoseAlertRecordRange()V
    .locals 1

    .line 201
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_GLUCOSE_ALERT_RANGE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 202
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postSensorGlucoseRecordRange()V
    .locals 1

    .line 195
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_SENSOR_GLUCOSE_RANGE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 196
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public postCompletedCalibrationsCountRequest()V
    .locals 1

    .line 379
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_COMPLETED_CALIBRATIONS_COUNT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 380
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postEEP24MSP()V
    .locals 1

    .line 180
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_EEP24_MSP:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 181
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postGetRangesForSyncing()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postSensorGlucoseRecordRange()V

    .line 213
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postSensorGlucoseAlertRecordRange()V

    .line 219
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postBloodGlucoseRecordRange()V

    return-void
.end method

.method public postLastCalibrationDateTimeRequest()V
    .locals 0

    .line 384
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postLastCalibrationDateRequest()V

    .line 385
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postLastCalibrationTimeRequest()V

    return-void
.end method

.method public postMEPMSPInfo()V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadMEPSavedValue()V

    .line 186
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPSavedRefChannelMetric()V

    .line 187
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPSavedDriftMetric()V

    .line 188
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPSavedLowRefMetric()V

    .line 189
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPSavedSpike()V

    .line 190
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postEEP24MSP()V

    return-void
.end method

.method public postMEPSavedDriftMetric()V
    .locals 1

    .line 165
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_DRIFT_METRIC:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 166
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postMEPSavedLowRefMetric()V
    .locals 1

    .line 170
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_LOW_REF_METRIC:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 171
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postMEPSavedRefChannelMetric()V
    .locals 1

    .line 160
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_REF_CHANNEL_METRIC:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 161
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postMEPSavedSpike()V
    .locals 1

    .line 175
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_SPIKE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 176
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postMarkPatientEventDeleted(J)V
    .locals 2

    .line 59
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->MARK_PATIENT_EVENT_RECORD_DELETED:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "record number"

    .line 60
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 61
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postReadClinicalModeDuration()V
    .locals 1

    .line 26
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_CLINICAL_MODE_DURATION:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postReadCurrentTransmitterDateAndTime()V
    .locals 1

    .line 144
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_CURRENT_TRANSMITTER_DATE_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 145
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postReadMEPSavedValue()V
    .locals 1

    .line 155
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_VALUE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postReadRawDataAndGlucoseData()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValues()V

    .line 76
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadMostRecentGlucoseValue()V

    .line 77
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadGlucoseData()V

    return-void
.end method

.method public postReadSensorGlucoseAlertsAndStatus()V
    .locals 1

    .line 338
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_GLUCOSE_ALERTS_AND_STATUS:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 339
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postSendCurrentDateAndTimeToTransmitter()V
    .locals 1

    .line 150
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->SEND_CURRENT_DATE_TIME_TO_TRANSMITTER:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 151
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postSnooze(I)V
    .locals 2

    .line 30
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->SNOOZE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PushNotificationMessageCode"

    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postSync(Lcom/senseonics/bluetoothle/TransmitterSyncRequest;)V
    .locals 3

    .line 65
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->SYNC:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "expected response id"

    .line 66
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectedResponseId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "data"

    .line 67
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getData()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v1, "record number"

    .line 68
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getHighestExpectedRecordNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "expected response count"

    .line 69
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectResponseCount()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteClinicalModeRequest(Z)V
    .locals 2

    .line 53
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_CLINICAL_MODE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is clinical mode"

    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteDelayBLEDisconnectAlarmAddressRequest(I)V
    .locals 2

    .line 373
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_BLE_DISCONNECT_DELAY:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 374
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteEveningCalibrationTime(II)V
    .locals 2

    .line 331
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_EVENING_CALIBRATION_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "calibration hour"

    .line 332
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "calibration minute"

    .line 333
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteGlucoseEvent(Lcom/senseonics/events/GlucoseEventPoint;F)V
    .locals 4

    .line 36
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_GLUCOSE_EVENT_POINT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "milliseconds"

    .line 37
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "glucose level"

    .line 38
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getGlucoseLevel()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "single float"

    .line 39
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 40
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseAlarmEnabledRequest(Z)V
    .locals 2

    .line 317
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_ALARM_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 318
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseAlarmRepeatIntervalDayTime(I)V
    .locals 2

    .line 361
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_GLUCOSE_ALARM_REPEAT_DAY:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 362
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 363
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseAlarmRepeatIntervalNightTime(I)V
    .locals 2

    .line 367
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_GLUCOSE_ALARM_REPEAT_NIGHT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 368
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseAlarmRequest(I)V
    .locals 2

    .line 241
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_ALARM:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 242
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseTarget(I)V
    .locals 2

    .line 229
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_TARGET:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 230
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteLowGlucoseAlarmRepeatIntervalDayTime(I)V
    .locals 2

    .line 349
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_LOW_GLUCOSE_ALARM_REPEAT_DAY:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 350
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteLowGlucoseAlarmRepeatIntervalNightTime(I)V
    .locals 2

    .line 355
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_LOW_GLUCOSE_ALARM_REPEAT_NIGHT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 356
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteLowGlucoseAlarmRequest(I)V
    .locals 2

    .line 235
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_LOW_ALARM:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 236
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteLowGlucoseTargetRequest(I)V
    .locals 2

    .line 223
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_LOW_TARGET:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 224
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteMorningCalibrationTime(II)V
    .locals 2

    .line 324
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_MORNING_CALIBRATION_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "calibration hour"

    .line 325
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "calibration minute"

    .line 326
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePatientEvent(Lcom/senseonics/events/PatientEventPoint;)V
    .locals 4

    .line 44
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PATIENT_EVENT_POINT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "event quantity"

    .line 45
    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->quantity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "event sub type id"

    .line 46
    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->eventSubTypeId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "event type id"

    .line 47
    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->eventTypeId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "milliseconds"

    .line 48
    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 49
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveAlertsRequest(Z)V
    .locals 2

    .line 247
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 248
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 249
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveHighAlertsRequest(Z)V
    .locals 2

    .line 258
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_HIGH_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 259
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveHighTimeIntervalRequest(I)V
    .locals 2

    .line 264
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_HIGH_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 265
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveLowAlertsRequest(Z)V
    .locals 2

    .line 270
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_LOW_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 271
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveLowTimeIntervalRequest(I)V
    .locals 2

    .line 276
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_LOW_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 277
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveTimeIntervalRequest(I)V
    .locals 0

    .line 253
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWritePredictiveHighTimeIntervalRequest(I)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWritePredictiveLowTimeIntervalRequest(I)V

    return-void
.end method

.method public postWriteRateAlert(Z)V
    .locals 2

    .line 282
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 283
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteRateAlertThresholdRequest(I)V
    .locals 0

    .line 288
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteRateFallingAlertThresholdRequest(I)V

    .line 289
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteRateRisingAlertThresholdRequest(I)V

    return-void
.end method

.method public postWriteRateFallingAlert(Z)V
    .locals 2

    .line 293
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_FALLING_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 294
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteRateFallingAlertThresholdRequest(I)V
    .locals 2

    .line 299
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_FALLING_THRESHOLD:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 300
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteRateRisingAlert(Z)V
    .locals 2

    .line 305
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_RISING_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 306
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteRateRisingAlertThresholdRequest(I)V
    .locals 2

    .line 311
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_RISING_THRESHOLD:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 312
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteVibrateModeRequest(Z)V
    .locals 2

    .line 343
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_VIBRATION_MODE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 344
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method
