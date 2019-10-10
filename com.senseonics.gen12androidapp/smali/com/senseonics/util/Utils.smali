.class public Lcom/senseonics/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/util/Utils$ALERT_TYPE;,
        Lcom/senseonics/util/Utils$EVENT_TYPE;,
        Lcom/senseonics/util/Utils$STATISTIC_TYPE2;,
        Lcom/senseonics/util/Utils$STATISTIC_TYPE;,
        Lcom/senseonics/util/Utils$MLCheckResult;,
        Lcom/senseonics/util/Utils$ARROW_TYPE;,
        Lcom/senseonics/util/Utils$CAL_PHASE;,
        Lcom/senseonics/util/Utils$GLUCOSE_TYPE;,
        Lcom/senseonics/util/Utils$GLUCOSE_UNIT;
    }
.end annotation


# static fields
.field public static ADD_EDIT_EVENT_MAX_DAYS_AGO:I = 0x1e

.field public static AUTOMATIC_SYNC_ON_PUSH_INTERVAL:J = 0x0L

.field public static BATTERY_EVENT_TAG:Ljava/lang/String; = "BATTERY"

.field public static BATTERY_LOW_INTENT_FILTER:Ljava/lang/String; = "senseonics.battery.low"

.field public static CONTACT_PICKER_RESULT:I = 0x17de

.field public static final CRCLength:I = 0x2

.field public static DAILY_CALIBRATION_SAVE_RESULT:I = 0x177a

.field public static DAYS_TO_FETCH_FOR_SYNC:I = 0x3

.field public static DEFAULT_SYNC_DAYS:I = 0x1

.field public static EVENT_POSITION:I = 0x14

.field public static GLUCOSE_DEFAULT_LEVEL:I = 0x64

.field public static GLUCOSE_LEVEL_OUT_OF_RANGE_HIGH_STRING:Ljava/lang/String; = "HI"

.field public static GLUCOSE_LEVEL_OUT_OF_RANGE_LOW_STRING:Ljava/lang/String; = "LO"

.field public static GLUCOSE_LEVEL_UNKNOWN:I = -0x65

.field public static GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String; = "---"

.field public static GLUCOSE_MAX:I = 0x190

.field public static GLUCOSE_MIN:I = 0x0

.field public static GLUCOSE_MIN_Y:I = 0x14

.field public static GLUCOSE_VALID_MAX:I = 0x190

.field public static GLUCOSE_VALID_MIN:I = 0x28

.field public static GRAPH_GLUCOSE_MAX:I = 0x19a

.field public static GRAPH_GLUCOSE_MIN:I = 0x0

.field public static INTRANET_PW:Ljava/lang/String; = "smsi"

.field public static INTRANET_UN:Ljava/lang/String; = "SensorsGuest"

.field public static INT_MAX:I = 0xffff

.field public static LOG_OUT_BACK_RESULT:I = 0xfaa

.field public static final MY_TRANSMITTER_INFO_ARRIVED:Ljava/lang/String; = "senseonics.transmitter.info"

.field public static NO_OF_ALARMS_TO_SYNC:I = 0x0

.field public static NO_OF_EVENTS_TO_SYNC:I = 0x0

.field public static NotAvailable:Ljava/lang/String; = "N/A"

.field public static PLACEMENT_BACK_RESULT:I = 0x1b62

.field public static SENSOR_REPLACEMENT_INTENT_FILTER:Ljava/lang/String; = "senseonics.replacement.notification"

.field public static SHARED_PREF:Ljava/lang/String; = "SenseonicsPref"

.field public static STATISTICS_GLUCOSE_MAX:I = 0x190

.field public static STATISTICS_GLUCOSE_MIN:I = 0x28

.field public static TAP_HEADER_BACK_RESULT:I = 0xbc2

.field public static UNLINKED_SENSOR_SERIAL_NUMBER_ARRIVED:Ljava/lang/String; = "senseonics.unlinkedsensor.serialnumber"

.field public static URL_FAQ:Ljava/lang/String; = "https://intranet.senseonics.com/SE/FAQ/"

.field public static VERSION_RELEASE_DATE:Ljava/lang/String; = "08/12/2019"

.field public static WRITE_N_BYTE_FINISHED:Ljava/lang/String; = "senseonics.writeNByte.finished"

.field public static calibrationServer:Ljava/lang/String; = "https://sensordataserver.s4ms.com/CalibrationServer9/CalibrationService.svc"

.field public static clinicalModeDuration:J = 0x5943900L

.field public static currentDate:Ljava/util/Calendar; = null

.field public static currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT; = null

.field public static currentUnknownErrorCode:I = -0x1

.field public static dayStartTimeHourDefaultLocal:I = 0x8

.field public static dayStartTimeMinuteDefault:I = 0x0

.field public static daySubviewWidth:F = -1.0f

.field public static daysCount:I = 0x3c

.field public static enableGlucoseUnitPanel:Z = false

.field public static endDate:Ljava/util/Calendar; = null

.field public static endDateFinished:Ljava/util/Calendar; = null

.field public static eveningCalibrationHourDefaultLocal:I = 0x12

.field public static eveningCalibrationMinuteDefault:I = 0x0

.field public static kAppFWCompatibilityCheckWebserviceFunctionCall:Ljava/lang/String; = "http://tempuri.org/ITransferService/AppFWCompatibilityCheck"

.field public static kNumberOfDaysMax:I = 0x5a

.field public static kNumberOfDaysToFetch:I = 0x3

.field public static maxBloodGlucose:I = 0x258

.field public static minBloodGlucose:I = 0x14

.field public static morningCalibrationHourDefaultLocal:I = 0x8

.field public static morningCalibrationMinuteDefault:I = 0x0

.field public static nightStartTimeHourDefaultLocal:I = 0x14

.field public static nightStartTimeMinuteDefault:I = 0x0

.field public static final prefAcceptedEULAVersion:Ljava/lang/String; = "acceptedEULAVersion"

.field public static final prefAccountAccessToken:Ljava/lang/String; = "AccountAccessToken"

.field public static prefAccountAccessTokenTime:Ljava/lang/String; = "AccountAccessTokenDate"

.field public static final prefAccountDiagnosticDataLastSyncedOnDateTime:Ljava/lang/String; = "AccountDiagnosticDataLastSyncedOnDateTime"

.field public static final prefAccountEnableAutoSync:Ljava/lang/String; = "AccountEnableAutoSync"

.field public static final prefAccountFirstName:Ljava/lang/String; = "AccountFirstName"

.field public static final prefAccountIsLoggedIn:Ljava/lang/String; = "AccountIsLoggedIn"

.field public static final prefAccountLastName:Ljava/lang/String; = "AccountLastName"

.field public static final prefAccountLastSyncedOnDateTime:Ljava/lang/String; = "AccountLastSyncedOnDateTime"

.field public static final prefAccountLastSyncedStartDateTime:Ljava/lang/String; = "AccountLastSyncedStartDateTime"

.field public static prefAccountMemberList:Ljava/lang/String; = "AccountMemberList"

.field public static final prefAccountMigrationPasswordUpdated:Ljava/lang/String; = "AccountMigrationPasswordUpdated"

.field public static final prefAccountProfileImage:Ljava/lang/String; = "AccountProfileImage"

.field public static final prefAccountRefreshToken:Ljava/lang/String; = "AccountRefreshToken"

.field public static final prefAccountSyncDays:Ljava/lang/String; = "AccountSyncDays"

.field public static final prefAccountSyncInterval:Ljava/lang/String; = "AccountSyncInterval"

.field public static final prefAccountUserID:Ljava/lang/String; = "AccountUserID"

.field public static final prefAccountUserName:Ljava/lang/String; = "AccountUserName"

.field public static final prefAccountUserPassword:Ljava/lang/String; = "AccountUserPassword"

.field public static final prefAlarmHigh:Ljava/lang/String; = "glucoseAlarmHigh"

.field public static final prefAlarmHighEnabled:Ljava/lang/String; = "glucoseAlarmHighEnabled"

.field public static final prefAlarmLow:Ljava/lang/String; = "glucoseAlarmLow"

.field public static final prefAlgorithmParameterFormatVersion:Ljava/lang/String; = "prefAlgorithmParameterFormatVersion"

.field public static final prefAppUpdateLastCheckedDateTime:Ljava/lang/String; = "AppUpdateLastCheckedDateTime"

.field public static final prefCalibrationDateTime:Ljava/lang/String; = "calibrationDateTime"

.field public static final prefClinicalMode:Ljava/lang/String; = "ClinicalMode"

.field public static final prefClinicalModeDuration:Ljava/lang/String; = "ClinicalModeDuration"

.field public static final prefClinicalModeStartTime:Ljava/lang/String; = "ClinicalModeStartTime"

.field public static final prefCommunicationProtocolVersion:Ljava/lang/String; = "prefCommunicationProtocolVersion"

.field public static final prefCurrentCalibrationPhase:Ljava/lang/String; = "CurrentCalibrationPhase"

.field public static final prefDayStartTimeHour:Ljava/lang/String; = "DayStartTimeHour"

.field public static final prefDayStartTimeMinute:Ljava/lang/String; = "DayStartTimeMinute"

.field public static final prefDelayBLEDisconnectionAlarm:Ljava/lang/String; = "DelayBLEDisconnectionAlarm"

.field public static final prefEEP24MSP:Ljava/lang/String; = "EEP24MSP"

.field public static final prefEveningCalHour:Ljava/lang/String; = "EveningCalHour"

.field public static final prefEveningCalLocalHour:Ljava/lang/String; = "EveningCalLocalHour"

.field public static final prefEveningCalLocalMinute:Ljava/lang/String; = "EveningCalLocalMinute"

.field public static final prefEveningCalMinute:Ljava/lang/String; = "EveningCalMinute"

.field public static final prefFirstRun:Ljava/lang/String; = "firstRun"

.field public static final prefFirstRunForCompatibility:Ljava/lang/String; = "firstRunForCompatibility"

.field public static final prefGlucoseUnit:Ljava/lang/String; = "currentGlucoseUnit"

.field public static final prefHighGlucoseAlarmRepeatIntervalDayTime:Ljava/lang/String; = "HighGlucoseAlarmRepeatIntervalDayTime"

.field public static final prefHighGlucoseAlarmRepeatIntervalNightTime:Ljava/lang/String; = "HighGlucoseAlarmRepeatIntervalNightTime"

.field public static final prefHysteresisPercent:Ljava/lang/String; = "HysteresisPercent"

.field public static final prefHysteresisPredictivePercent:Ljava/lang/String; = "HysteresisPredictivePercent"

.field public static final prefHysteresisPredictiveValue:Ljava/lang/String; = "HysteresisPredictiveValue"

.field public static final prefHysteresisValue:Ljava/lang/String; = "HysteresisValue"

.field public static final prefIsDosingIntroCompleted:Ljava/lang/String; = "isDosingIntroCompleted"

.field public static final prefIsEulaAccepted:Ljava/lang/String; = "isEulaAccepted"

.field public static final prefIsGlucoseStale:Ljava/lang/String; = "IsGlucoseStale"

.field public static final prefKeepAliveAlertActive:Ljava/lang/String; = "KeepAliveAlertActive"

.field public static final prefLastGlucoseSyncedMaxRecordTimestamp:Ljava/lang/String; = "LastGlucoseSyncedMaxRecordTimestamp"

.field public static final prefLastReadTransmitterDatetimeTimestamp:Ljava/lang/String; = "LastReadTransmitterDatetimeTimestamp"

.field public static final prefLastSyncingMillis:Ljava/lang/String; = "last_syncing_gmt_millis"

.field public static final prefLowGlucoseAlarmRepeatIntervalDayTime:Ljava/lang/String; = "LowGlucoseAlarmRepeatIntervalDayTime"

.field public static final prefLowGlucoseAlarmRepeatIntervalNightTime:Ljava/lang/String; = "LowGlucoseAlarmRepeatIntervalNightTime"

.field public static final prefMEPSavedDriftMetric:Ljava/lang/String; = "MEPSavedDriftMetric"

.field public static final prefMEPSavedLowRefMetric:Ljava/lang/String; = "MEPSavedLowRefMetric"

.field public static final prefMEPSavedRefChannelMetric:Ljava/lang/String; = "MEPSavedRefChannelMetric"

.field public static final prefMEPSavedSpike:Ljava/lang/String; = "MEPSavedSpike"

.field public static final prefMEPSavedValue:Ljava/lang/String; = "MEPSavedValue"

.field public static final prefMaxCalibrationThreshold:Ljava/lang/String; = "MaxCalibrationThreshold"

.field public static final prefMaxSyncedAlertRecord:Ljava/lang/String; = "MaxSyncedAlertRecord"

.field public static final prefMaxSyncedBloodGlucoseRecord:Ljava/lang/String; = "MaxSyncedBloodGlucoseRecord"

.field public static final prefMaxSyncedSensorRecord:Ljava/lang/String; = "MaxSyncedSensorRecord"

.field public static final prefMemberListLastFetchedOnDateTime:Ljava/lang/String; = "MemberListLastFetchedOnDateTime"

.field public static final prefMinCalibrationThreshold:Ljava/lang/String; = "MinCalibrationThreshold"

.field public static final prefMorningCalHour:Ljava/lang/String; = "MorningCalHour"

.field public static final prefMorningCalLocalHour:Ljava/lang/String; = "MorningCalLocalHour"

.field public static final prefMorningCalLocalMinute:Ljava/lang/String; = "MorningCalLocalMinute"

.field public static final prefMorningCalMinute:Ljava/lang/String; = "MorningCalMinute"

.field public static final prefNightStartTimeHour:Ljava/lang/String; = "NightStartTimeHour"

.field public static final prefNightStartTimeMinute:Ljava/lang/String; = "NightStartTimeMinute"

.field public static final prefPredictiveAlertsActivated:Ljava/lang/String; = "predictiveAlertsActivated"

.field public static final prefPredictiveHighAlertsActivated:Ljava/lang/String; = "predictiveHighAlertsActivated"

.field public static final prefPredictiveLowAlertsActivated:Ljava/lang/String; = "predictiveLowAlertsActivated"

.field public static final prefPredictiveMinutes:Ljava/lang/String; = "predictiveMinutes"

.field public static final prefPredictiveRisingMinutes:Ljava/lang/String; = "predictiveRisingMinutes"

.field public static final prefRateAlertsActivated:Ljava/lang/String; = "rateAlertsActivated"

.field public static final prefRateFallingAlertsActivated:Ljava/lang/String; = "rateFallingAlertsActivated"

.field public static final prefRateRisingAlertsActivated:Ljava/lang/String; = "rateRisingAlertsActivated"

.field public static final prefRateRisingValue:Ljava/lang/String; = "rateAlertRisingValue"

.field public static final prefRateValue:Ljava/lang/String; = "rateAlertValue"

.field public static final prefSamplingInterval:Ljava/lang/String; = "prefSamplingInterval"

.field public static final prefSensorGlucoseAlertStatus:Ljava/lang/String; = "SensorGlucoseAlertStatus"

.field public static final prefSensorId:Ljava/lang/String; = "SensorId"

.field public static final prefSensorInsertionDateTime:Ljava/lang/String; = "SensorInsertionDateTime"

.field public static final prefSupportForDelayBLEDisconnectionAlarm:Ljava/lang/String; = "SupportForDelayBLEDisconnectionAlarm"

.field public static final prefSupportForHighGluAlarmPredRateHighLowSettings:Ljava/lang/String; = "supportForHighGluAlarmPredRateHighLowSettings"

.field public static final prefTargetHigh:Ljava/lang/String; = "glucoseTargetHigh"

.field public static final prefTargetLow:Ljava/lang/String; = "glucoseTargetLow"

.field public static final prefTransmitterAddress:Ljava/lang/String; = "TransmitterAddress"

.field public static final prefTransmitterBatteryLevel:Ljava/lang/String; = "TransmitterBatterylevel"

.field public static final prefTransmitterBatteryVoltage:Ljava/lang/String; = "TransmitterBatteryVoltage"

.field public static final prefTransmitterCalibrationStartDate:Ljava/lang/String; = "CalibrationStartDate"

.field public static final prefTransmitterCalibrationsMadeInThisPhase:Ljava/lang/String; = "CalibrationsMadeInThisPhase"

.field public static final prefTransmitterConnectedTime:Ljava/lang/String; = "TransmitterConnectedTime"

.field public static final prefTransmitterFirmwareVersion:Ljava/lang/String; = "FirmwareVersion"

.field public static final prefTransmitterLastCalibration:Ljava/lang/String; = "LastCalibration"

.field public static final prefTransmitterModelNumber:Ljava/lang/String; = "ModelNumber"

.field public static final prefTransmitterName:Ljava/lang/String; = "TransmitterName"

.field public static final prefTransmitterSerialNumber:Ljava/lang/String; = "TransmitterSerialNumber"

.field public static final prefTransmitterTime:Ljava/lang/String; = "TransmitterTime"

.field public static final prefTransmitterVersionExtensionNumber:Ljava/lang/String; = "ExtensionNumber"

.field public static final prefUnlinkedSensorId:Ljava/lang/String; = "UnlinkedSensorId"

.field public static final prefVibrationMode:Ljava/lang/String; = "VibrationMode"

.field public static final prefalertRecordRangeFrom:Ljava/lang/String; = "AlertRecordRangeFrom"

.field public static final prefalertRecordRangeTo:Ljava/lang/String; = "AlertRecordRangeTo"

.field public static final prefbloodGlucoseRecordRangeFrom:Ljava/lang/String; = "BloodGlucoseRecordRangeFrom"

.field public static final prefbloodGlucoseRecordRangeTo:Ljava/lang/String; = "BloodGlucoseRecordRangeTo"

.field public static final prefsensorGlucoseRecordRangeFrom:Ljava/lang/String; = "SensorGlucoseRecordRangeFrom"

.field public static final prefsensorGlucoseRecordRangeTo:Ljava/lang/String; = "SensorGlucoseRecordRangeTo"

.field public static final pushNotificationDateTimeLength:I = 0x4

.field public static final pushNotificationFWBound:Ljava/lang/String; = "5.12"

.field public static screenHeight:I = 0x0

.field public static screenWidth:I = 0x0

.field public static showToast:Z = false

.field public static startDate:Ljava/util/Calendar; = null

.field public static threeDaysAgo:Ljava/util/Calendar; = null

.field public static transmitterName:Ljava/lang/String; = null

.field public static transmitterNameContainer:Ljava/lang/String; = null

.field public static unknownString:Ljava/lang/String; = "N/A"

.field public static unknownTime:Ljava/lang/String; = "-"

.field public static final unlinkedSensorValue:J = 0xffffffffL

.field public static webserviceFunction:Ljava/lang/String; = "http://tempuri.org/ITransferService/FetchCalibrationDataWithChecksum"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 101
    sget v0, Lcom/senseonics/util/Utils;->DAYS_TO_FETCH_FOR_SYNC:I

    mul-int/lit8 v0, v0, 0xf

    sput v0, Lcom/senseonics/util/Utils;->NO_OF_EVENTS_TO_SYNC:I

    .line 102
    sget v0, Lcom/senseonics/util/Utils;->DAYS_TO_FETCH_FOR_SYNC:I

    mul-int/lit8 v0, v0, 0x14

    sput v0, Lcom/senseonics/util/Utils;->NO_OF_ALARMS_TO_SYNC:I

    .line 118
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/senseonics/util/Utils;->AUTOMATIC_SYNC_ON_PUSH_INTERVAL:J

    .line 233
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sput-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CopyAssetsFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 1573
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File name => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1577
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1578
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 1580
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 1581
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1582
    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1583
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1585
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1586
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "tag"

    .line 1589
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static areArraysEqual([I[I)Z
    .locals 4

    .line 1132
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 1135
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1136
    aget v1, p0, v0

    aget v3, p1, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static calculateEndDateFinished()Ljava/util/Calendar;
    .locals 5

    .line 518
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 519
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method private static checkIfDosingIntroCompleted(Landroid/content/Context;)Z
    .locals 2

    .line 1736
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "isDosingIntroCompleted"

    .line 1737
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static checkIfEulaAccepted(Landroid/content/Context;)Z
    .locals 2

    .line 1714
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "isEulaAccepted"

    .line 1715
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static checkIfFirstRun(Landroid/content/Context;)Z
    .locals 2

    .line 1690
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "firstRun"

    .line 1691
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static checkIfFirstRunForCompatibility(Landroid/content/Context;)Z
    .locals 2

    .line 1702
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "firstRunForCompatibility"

    .line 1703
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static checkIfInitialLaunch(Landroid/content/Context;)Z
    .locals 1

    .line 1745
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfEulaAccepted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1746
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1747
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1748
    invoke-static {p0}, Lcom/senseonics/util/Utils;->shouldShowDosingIntro(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static checkIfLoggedIn(Landroid/content/Context;)Z
    .locals 2

    .line 1752
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "AccountIsLoggedIn"

    .line 1753
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "AccountIsLoggedIn"

    .line 1756
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static convertHourFromGMTtoLocal(II)[I
    .locals 4

    .line 1762
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 1763
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 1764
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const-string p1, "GMT"

    .line 1765
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1766
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1769
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1770
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1771
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 1772
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v0, 0x2

    .line 1774
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p0, v0, p1

    return-object v0
.end method

.method public static convertHourFromLocaltoGMT(II)[I
    .locals 4

    .line 1779
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 1780
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 1781
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1782
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1783
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string p1, "GMT"

    .line 1786
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1787
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1788
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 1789
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v0, 0x2

    .line 1791
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p0, v0, p1

    return-object v0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1669
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1674
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1681
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1683
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1678
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1681
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1686
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1681
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 1683
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1685
    :goto_3
    throw v0
.end method

.method public static copyCalendar(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .line 555
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 556
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 557
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 1594
    new-array v0, v0, [B

    .line 1596
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 1597
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static countOccurrancesInString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1544
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 1548
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static extractCalendarFromDMSDateString(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3

    const-string v0, "."

    .line 693
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".000"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 697
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 699
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "GMT"

    .line 700
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 701
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static formatDMSDateString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 710
    sget-object v0, Lcom/senseonics/util/Utils;->NotAvailable:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v1, ""

    .line 712
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 713
    invoke-static {p0}, Lcom/senseonics/util/Utils;->extractCalendarFromDMSDateString(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 716
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/senseonics/util/Utils;->formatDateSimple(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static formatDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "MMM dd, yyyy"

    .line 646
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, " "

    return-object p0
.end method

.method public static formatDate(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 565
    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 566
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM dd, yyyy HH:mm"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 569
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 571
    :cond_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM dd, yyyy hh:mm a"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 574
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, " "

    return-object p0
.end method

.method public static formatDateISO8601(J)Ljava/lang/String;
    .locals 2

    .line 675
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 676
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 677
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 679
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateOnlyForTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 753
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 756
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, " "

    return-object p0
.end method

.method public static formatDateSimple(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 629
    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 630
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "MM/dd/yy, HH:mm"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 633
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 635
    :cond_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "MM/dd/yy, hh:mm a"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 638
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, " "

    return-object p0
.end method

.method public static formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "MMM dd, yyyy"

    .line 669
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, " "

    return-object p0
.end method

.method public static formatDate_TimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 583
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd, yyyy hh:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 586
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, " "

    return-object p0
.end method

.method public static formatGMTDateAndTimeString(J)Ljava/lang/String;
    .locals 1

    .line 685
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 686
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 687
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string p1, "GMT"

    .line 688
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 689
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTimeOnlyForTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 764
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 766
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, " "

    return-object p0
.end method

.method public static formatWeekDateTimeForTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 735
    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 736
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "EEEE, MMMM dd, HH:mm"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 739
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 741
    :cond_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "EEEE, MMMM dd, hh:mm a"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 744
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, " "

    return-object p0
.end method

.method public static formatWeekDateYearForTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 725
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE, MMMM dd, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 728
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, " "

    return-object p0
.end method

.method public static getAcceptedEULAVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1723
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "acceptedEULAVersion"

    const-string v1, ""

    .line 1724
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBatteryPercentForLevel(Lcom/senseonics/model/BATTERY_LEVEL;)I
    .locals 1

    .line 1084
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    invoke-virtual {p0}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x64

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5f

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x55

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x4b

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x41

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x37

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x2d

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x23

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x19

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_a
    const/4 v0, 0x5

    :goto_0
    :pswitch_b
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBatteryPercentStringForLevel(Lcom/senseonics/model/BATTERY_LEVEL;)Ljava/lang/String;
    .locals 2

    .line 1033
    sget-object v0, Lcom/senseonics/util/Utils;->NotAvailable:Ljava/lang/String;

    .line 1035
    sget-object v1, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    invoke-virtual {p0}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "100%"

    goto :goto_0

    :pswitch_1
    const-string v0, "95%"

    goto :goto_0

    :pswitch_2
    const-string v0, "85%"

    goto :goto_0

    :pswitch_3
    const-string v0, "75%"

    goto :goto_0

    :pswitch_4
    const-string v0, "65%"

    goto :goto_0

    :pswitch_5
    const-string v0, "55%"

    goto :goto_0

    :pswitch_6
    const-string v0, "45%"

    goto :goto_0

    :pswitch_7
    const-string v0, "35%"

    goto :goto_0

    :pswitch_8
    const-string v0, "25%"

    goto :goto_0

    :pswitch_9
    const-string v0, "10%"

    goto :goto_0

    :pswitch_a
    const-string v0, "5%"

    goto :goto_0

    :pswitch_b
    const-string v0, "0%"

    goto :goto_0

    .line 1037
    :pswitch_c
    sget-object v0, Lcom/senseonics/util/Utils;->NotAvailable:Ljava/lang/String;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCalendarForMonthDayYearFromString(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, ""

    .line 655
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 656
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 657
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .line 544
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 545
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x0

    const/16 v1, 0xb

    .line 546
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 547
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 548
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 549
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public static getEndDateFinished()Ljava/util/Calendar;
    .locals 1

    .line 535
    sget-object v0, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 536
    sget-object v0, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    return-object v0

    .line 538
    :cond_0
    invoke-static {}, Lcom/senseonics/util/Utils;->calculateEndDateFinished()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getEventImageResId(Lcom/senseonics/events/EventPoint;)I
    .locals 3

    .line 858
    invoke-virtual {p0}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    .line 859
    sget-object v1, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const v1, 0x7f080064

    const v2, 0x7f0800e6

    packed-switch v0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    .line 892
    :pswitch_0
    invoke-virtual {p0}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/senseonics/util/TransmitterMessageCode;->getIcon()I

    move-result p0

    return p0

    :pswitch_1
    const p0, 0x7f080065

    return p0

    :pswitch_2
    const p0, 0x7f080061

    return p0

    :pswitch_3
    const p0, 0x7f0800e9

    return p0

    :pswitch_4
    return v2

    :pswitch_5
    return v1

    :pswitch_6
    return v1

    :pswitch_7
    const p0, 0x7f0800e4

    return p0

    :pswitch_8
    const p0, 0x7f0800ea

    return p0

    :pswitch_9
    const p0, 0x7f0800ec

    return p0

    :pswitch_a
    const p0, 0x7f0800ee

    return p0

    :pswitch_b
    return v2

    :pswitch_c
    const p0, 0x7f0800e3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;
    .locals 1

    .line 785
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f0f0023

    packed-switch p1, :pswitch_data_0

    const-string p0, " "

    return-object p0

    :pswitch_0
    const p1, 0x7f0f01d2

    .line 814
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f0f01c8

    .line 811
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f0f006e

    .line 808
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f0f0073

    .line 806
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f0f0068

    .line 804
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 802
    :pswitch_5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 799
    :pswitch_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const p1, 0x7f0f00f1

    .line 797
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const p1, 0x7f0f010d

    .line 795
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    const p1, 0x7f0f0130

    .line 793
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    const p1, 0x7f0f0161

    .line 791
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    const p1, 0x7f0f0105

    .line 789
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    const p1, 0x7f0f006a

    .line 787
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getEventNameNotTranslated(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;
    .locals 0

    .line 822
    sget-object p0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    const-string p0, " "

    return-object p0

    :pswitch_0
    const-string p0, "Rate Alerts"

    return-object p0

    :pswitch_1
    const-string p0, "Predictive Alerts"

    return-object p0

    :pswitch_2
    const-string p0, "Calibration Expired"

    return-object p0

    :pswitch_3
    const-string p0, "Calibration Past Due"

    return-object p0

    :pswitch_4
    const-string p0, "Calibrate Now"

    return-object p0

    :pswitch_5
    const-string p0, "Alarm"

    return-object p0

    :pswitch_6
    const-string p0, "Alert"

    return-object p0

    :pswitch_7
    const-string p0, "Exercise"

    return-object p0

    :pswitch_8
    const-string p0, "Health"

    return-object p0

    :pswitch_9
    const-string p0, "Insulin"

    return-object p0

    :pswitch_a
    const-string p0, "Meal"

    return-object p0

    :pswitch_b
    const-string p0, "Glucose"

    return-object p0

    :pswitch_c
    const-string p0, "Calibration"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getGMTCalendarFrom([I[I)Ljava/util/Calendar;
    .locals 8

    .line 442
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "GMT"

    .line 443
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v1, 0xd

    const/4 v2, 0x0

    .line 444
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 445
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 447
    aget v3, p0, v2

    const/4 v4, 0x1

    .line 448
    aget v5, p0, v4

    const/4 v6, 0x2

    .line 449
    aget p0, p0, v6

    .line 450
    aget v2, p1, v2

    .line 451
    aget v7, p1, v4

    .line 452
    aget p1, p1, v6

    .line 454
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v5, v4

    .line 455
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 456
    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    .line 457
    invoke-virtual {v0, p0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 458
    invoke-virtual {v0, p0, v7}, Ljava/util/Calendar;->set(II)V

    .line 459
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public static getGlucoseLevelFloatValue(I)F
    .locals 2

    .line 945
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_0

    int-to-float p0, p0

    return p0

    :cond_0
    int-to-float p0, p0

    .line 948
    invoke-static {p0}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p0

    return p0
.end method

.method public static getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 955
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)Ljava/lang/String;

    move-result-object p0

    .line 957
    invoke-static {p1}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object p1

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlucoseLevelValue(F)Ljava/lang/String;
    .locals 4

    .line 924
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 925
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 927
    :cond_0
    invoke-static {p0}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p0

    .line 928
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlucoseLevelValue(I)Ljava/lang/String;
    .locals 4

    .line 913
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_0

    .line 914
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-float p0, p0

    .line 916
    invoke-static {p0}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p0

    .line 917
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlucoseLevelValueNoDecs(F)Ljava/lang/String;
    .locals 4

    .line 934
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 935
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.0f"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 937
    :cond_0
    invoke-static {p0}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p0

    .line 938
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 899
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlucoseUnitString(Landroid/content/Context;Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)Ljava/lang/String;
    .locals 1

    .line 905
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p1, v0, :cond_0

    const p1, 0x7f0f0169

    .line 906
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f0f0170

    .line 908
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHour24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 594
    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 595
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "H"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 597
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 599
    :cond_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "ha"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 601
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, " "

    return-object p0
.end method

.method public static getImageForBatteryLevel(Lcom/senseonics/model/BATTERY_LEVEL;)I
    .locals 1

    .line 986
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    invoke-virtual {p0}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    goto :goto_0

    :pswitch_0
    const p0, 0x7f0800d0

    goto :goto_0

    :pswitch_1
    const p0, 0x7f0800d9

    goto :goto_0

    :pswitch_2
    const p0, 0x7f0800d8

    goto :goto_0

    :pswitch_3
    const p0, 0x7f0800d7

    goto :goto_0

    :pswitch_4
    const p0, 0x7f0800d6

    goto :goto_0

    :pswitch_5
    const p0, 0x7f0800d5

    goto :goto_0

    :pswitch_6
    const p0, 0x7f0800d3

    goto :goto_0

    :pswitch_7
    const p0, 0x7f0800d2

    goto :goto_0

    :pswitch_8
    const p0, 0x7f0800d1

    goto :goto_0

    :pswitch_9
    const p0, 0x7f0800cf

    goto :goto_0

    :pswitch_a
    const p0, 0x7f0800d4

    goto :goto_0

    :pswitch_b
    const p0, 0x7f0800da

    goto :goto_0

    :pswitch_c
    const p0, 0x7f0800ce

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getImageForSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;)I
    .locals 1

    .line 964
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$SIGNAL_STRENGTH:[I

    invoke-virtual {p0}, Lcom/senseonics/model/SIGNAL_STRENGTH;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const p0, 0x7f08016b

    return p0

    :pswitch_1
    const p0, 0x7f08016c

    return p0

    :pswitch_2
    const p0, 0x7f08016d

    return p0

    :pswitch_3
    const p0, 0x7f08016a

    return p0

    :pswitch_4
    const p0, 0x7f080169

    return p0

    :pswitch_5
    const p0, 0x7f080168

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getItemPosition(Ljava/util/ArrayList;F)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;F)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1225
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1226
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Item;

    invoke-virtual {v1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1227
    invoke-static {v1}, Lcom/senseonics/util/Utils;->isFloat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1228
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Item;

    invoke-virtual {v1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    mul-float v2, v2, p1

    float-to-int v2, v2

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getItemPosition(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1207
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1208
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Item;

    invoke-virtual {v1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1209
    invoke-static {v1}, Lcom/senseonics/util/Utils;->isFloat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1210
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Item;

    invoke-virtual {v1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1217
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1218
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Item;

    invoke-virtual {v1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getLatestFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 1606
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1608
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v1

    const-string v2, "ntlm"

    new-instance v3, Lcom/senseonics/util/NTLMSchemeFactory;

    invoke-direct {v3}, Lcom/senseonics/util/NTLMSchemeFactory;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 1609
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    new-instance v2, Lorg/apache/http/auth/AuthScope;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/apache/http/auth/NTCredentials;

    sget-object v4, Lcom/senseonics/util/Utils;->INTRANET_UN:Ljava/lang/String;

    sget-object v5, Lcom/senseonics/util/Utils;->INTRANET_PW:Ljava/lang/String;

    const-string v6, ""

    const-string v7, ""

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 1616
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    const/4 p1, 0x0

    .line 1622
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1623
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1626
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1628
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1629
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Senseonics/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1631
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v2, "Files Dir"

    .line 1635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1637
    invoke-static {v0}, Lcom/senseonics/util/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 1638
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_2

    :catch_1
    move-object p1, p0

    goto :goto_3

    :catch_2
    move-object p1, p0

    goto :goto_4

    :cond_1
    move-object p0, p1

    :goto_1
    return-object p0

    :catch_3
    move-exception p0

    .line 1647
    :goto_2
    :try_start_3
    sget-object p2, Lcom/senseonics/util/Utils$MLCheckResult;->ServerError:Lcom/senseonics/util/Utils$MLCheckResult;

    .line 1648
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move-object p0, p2

    goto :goto_5

    .line 1645
    :catch_4
    :goto_3
    sget-object p0, Lcom/senseonics/util/Utils$MLCheckResult;->Timeout:Lcom/senseonics/util/Utils$MLCheckResult;

    goto :goto_5

    .line 1643
    :catch_5
    :goto_4
    sget-object p0, Lcom/senseonics/util/Utils$MLCheckResult;->Timeout:Lcom/senseonics/util/Utils$MLCheckResult;

    goto :goto_5

    :catch_6
    move-object p0, p1

    :catch_7
    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    .line 1650
    :goto_5
    sget-object p2, Lcom/senseonics/util/Utils$MLCheckResult;->None:Lcom/senseonics/util/Utils$MLCheckResult;

    if-eq p0, p2, :cond_2

    const-string p0, "-1"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    return-object p0

    :cond_2
    return-object p1

    :catch_8
    const-string p0, "-1"

    return-object p0
.end method

.method public static getLocalTimeInMillisAdjustedToGMT()J
    .locals 5

    .line 428
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public static getSensorGlucoseAlertRecordTypeID(Lcom/senseonics/util/Utils$EVENT_TYPE;III)I
    .locals 2

    .line 1460
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v1, -0x1

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, v0, :cond_6

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 1462
    :cond_2
    :goto_0
    invoke-static {}, Lcom/senseonics/util/Utils$ALERT_TYPE;->values()[Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v0

    aget-object p2, v0, p2

    .line 1464
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne p2, v0, :cond_3

    .line 1465
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1468
    :cond_3
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, v0, :cond_4

    sget-object v0, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne p2, v0, :cond_4

    .line 1469
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1472
    :cond_4
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, v0, :cond_5

    sget-object v0, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne p2, v0, :cond_5

    .line 1473
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1476
    :cond_5
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, v0, :cond_6

    sget-object v0, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne p2, v0, :cond_6

    .line 1477
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1484
    :cond_6
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_7

    .line 1485
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->FALLING_RATE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1488
    :cond_7
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_8

    .line 1489
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->RISING_RATE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1492
    :cond_8
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_9

    .line 1493
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_LOW_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1496
    :cond_9
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_a

    .line 1497
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_HIGH_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1500
    :cond_a
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_b

    invoke-static {p1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p2

    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationNowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p2, v0, :cond_b

    .line 1501
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOW_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1504
    :cond_b
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_c

    .line 1505
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOTIFICATION_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1508
    :cond_c
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_d

    .line 1509
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1512
    :cond_d
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_e

    .line 1513
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_EXPIRED_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1516
    :cond_e
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_11

    if-eq p3, v1, :cond_f

    return v1

    .line 1521
    :cond_f
    invoke-static {p1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    .line 1523
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_10

    sget-object p2, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p2, :cond_10

    .line 1525
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_LOW_GLUCOSE_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1528
    :cond_10
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_11

    sget-object p0, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p0, :cond_11

    .line 1530
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_HIGH_GLUCOSE_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    :cond_11
    return v1
.end method

.method public static getSettings(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 1255
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, -0x1

    .line 1257
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1281
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1283
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getSettingsFloatValueForKey(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 2

    .line 1295
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1296
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getSettingsForDefault(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    .line 1249
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1251
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x0

    .line 1314
    :try_start_0
    sget-object v2, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1316
    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide v0
.end method

.method public static getSettingsForString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1261
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    .line 1263
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingsForStringWithDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1267
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1269
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingsIntValueForKey(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    .line 1300
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1301
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStartDate()Ljava/util/Calendar;
    .locals 7

    .line 524
    sget-object v0, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 525
    sget-object v0, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    return-object v0

    .line 527
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sget v3, Lcom/senseonics/util/Utils;->kNumberOfDaysMax:I

    int-to-long v3, v3

    sget-wide v5, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    mul-long v3, v3, v5

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v1, "DMS"

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get default start date:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 4

    .line 1806
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1808
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getTextColorForConnection(Landroid/content/Context;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f06001e

    goto :goto_0

    :cond_0
    const p1, 0x7f060065

    .line 1800
    :goto_0
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 612
    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 613
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 615
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 617
    :cond_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "hh:mm a"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 619
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, " "

    return-object p0
.end method

.method public static getTimeZoneOffset(Ljava/util/Calendar;)J
    .locals 4

    .line 421
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    .line 422
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p0

    .line 423
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-long v0, p0

    .line 424
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->HOUR:J

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public static hasNewEULA(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "EU-2018-07"

    const-string v1, ""

    .line 1728
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EU-2018-07"

    invoke-static {p0}, Lcom/senseonics/util/Utils;->getAcceptedEULAVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static haveNetworkConnection(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 774
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 775
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 777
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static initDates(J)V
    .locals 6

    const-string v0, "getEarliest"

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current milli:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "getEarliest"

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "earliest GMT timestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 480
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 481
    invoke-static {v0}, Lcom/senseonics/util/Utils;->sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 483
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    .line 484
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    .line 485
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/senseonics/util/Utils;->threeDaysAgo:Ljava/util/Calendar;

    .line 487
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 488
    sget v1, Lcom/senseonics/util/Utils;->kNumberOfDaysToFetch:I

    neg-int v1, v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 489
    invoke-static {v0}, Lcom/senseonics/util/Utils;->sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 492
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 493
    sget v4, Lcom/senseonics/util/Utils;->kNumberOfDaysMax:I

    neg-int v4, v4

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 494
    invoke-static {v3}, Lcom/senseonics/util/Utils;->sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    .line 495
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v5, p0, v0

    if-lez v5, :cond_0

    .line 498
    sget-object p0, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_0
    cmp-long v5, p0, v3

    if-gez v5, :cond_1

    .line 500
    sget-object p0, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 502
    :cond_1
    sget-object v3, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    invoke-virtual {v3, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 506
    :goto_0
    sget-object p0, Lcom/senseonics/util/Utils;->threeDaysAgo:Ljava/util/Calendar;

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 509
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcom/senseonics/util/Utils;->sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    sput-object p0, Lcom/senseonics/util/Utils;->endDate:Ljava/util/Calendar;

    .line 510
    sget-object p0, Lcom/senseonics/util/Utils;->endDate:Ljava/util/Calendar;

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 512
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    sput-object p0, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    .line 513
    sget-object p0, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    sget-object p1, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public static isFloat(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "."

    .line 434
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidSensorID(J)Z
    .locals 2

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeAlwaysShownToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1396
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static makeToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1390
    sget-boolean v0, Lcom/senseonics/util/Utils;->showToast:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1391
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static printLongLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1448
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    if-gt v0, v1, :cond_1

    mul-int/lit16 v1, v0, 0x3e8

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v2, v0, 0x3e8

    .line 1451
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1452
    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static replaceTransmitterNameFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 1375
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "(%@)"

    .line 1377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p1, "(%@)"

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/senseonics/util/Utils;->NotAvailable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceUnknownErrorCodeString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const-string p0, "%d"

    .line 1384
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .line 464
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 465
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x0

    const/16 v1, 0xe

    .line 466
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 467
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 468
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    .line 469
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public static saveAcceptedEULAVersion(Landroid/content/Context;)V
    .locals 2

    const-string v0, "acceptedEULAVersion"

    const-string v1, "EU-2018-07"

    .line 1719
    invoke-static {p0, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveFirstRunForCompatibility(Landroid/content/Context;)V
    .locals 2

    const-string v0, "firstRunForCompatibility"

    const/4 v1, 0x0

    .line 1698
    invoke-static {p0, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static saveIsDosingIntroCompleted(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "isDosingIntroCompleted"

    .line 1732
    invoke-static {p0, v0, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static saveIsEulaAccepted(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "isEulaAccepted"

    .line 1710
    invoke-static {p0, v0, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static saveSettings(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 2

    .line 1287
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1289
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1290
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1291
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveSettings(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1241
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1243
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1244
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1245
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveSettings(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .line 1305
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1307
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1308
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1309
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1323
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1325
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1326
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1327
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 1273
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1275
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1276
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1277
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setScreenWidthandHeight(Landroid/app/Activity;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1560
    :cond_0
    sget v0, Lcom/senseonics/util/Utils;->screenHeight:I

    if-eqz v0, :cond_1

    sget v0, Lcom/senseonics/util/Utils;->screenWidth:I

    if-eqz v0, :cond_1

    return-void

    .line 1565
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1566
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1567
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lcom/senseonics/util/Utils;->screenWidth:I

    .line 1568
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/senseonics/util/Utils;->screenHeight:I

    return-void
.end method

.method public static shouldShowDosingIntro(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static showCalibrationConfirmationPage(Landroid/content/Context;ILandroid/text/Spanned;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 4

    .line 1334
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1000b8

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1335
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b005a

    const/4 v3, 0x0

    .line 1336
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902b6

    .line 1339
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1340
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f09029c

    .line 1343
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1344
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090091

    .line 1347
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1348
    new-instance p2, Lcom/senseonics/util/Utils$1;

    invoke-direct {p2, v0}, Lcom/senseonics/util/Utils$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901f1

    .line 1356
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f0241

    .line 1357
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1358
    new-instance p0, Lcom/senseonics/util/Utils$2;

    invoke-direct {p0, p3, v0}, Lcom/senseonics/util/Utils$2;-><init>(Landroid/view/View$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1367
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1368
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public static showEventDetails(Landroid/app/Fragment;Lcom/senseonics/events/EventPoint;)V
    .locals 4

    .line 1145
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    .line 1148
    sget-object v1, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1184
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/NotificationEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1179
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/NotificationEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1171
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/AlertEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1156
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/ExerciseEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1165
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/HealthEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1162
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/InsulinEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1159
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/MealEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1153
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/GlucoseEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1150
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/CalibrationEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    if-eqz v0, :cond_0

    .line 1191
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "edit"

    const/4 v3, 0x1

    .line 1192
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "eventPoint"

    .line 1193
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v2, 0x5

    .line 1197
    sget v3, Lcom/senseonics/util/Utils;->ADD_EDIT_EVENT_MAX_DAYS_AGO:I

    neg-int v3, v3

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    const-string v2, "startdate"

    .line 1198
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "enddate"

    .line 1200
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/senseonics/util/Utils;->sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1201
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1202
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static turnOffClinicalModeIfNeeded(Landroid/content/Context;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Z)V
    .locals 10

    if-eqz p2, :cond_1

    .line 1401
    sget-object p2, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p2, "ClinicalModeStartTime"

    .line 1404
    invoke-interface {p0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "ClinicalModeDuration"

    .line 1405
    invoke-interface {p0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "ClinicalMode"

    .line 1406
    invoke-interface {p0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "ClinicalMode"

    .line 1407
    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const-string p2, "ClinicalModeStartTime"

    const-wide/16 v1, -0x1

    .line 1413
    invoke-interface {p0, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1415
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 1416
    invoke-static {p2}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const-string v5, "ClinicalModeDuration"

    .line 1420
    invoke-interface {p0, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    add-long v5, v3, v1

    .line 1425
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const-string p0, "Clinical"

    .line 1427
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last saved start: "

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ; last saved duration: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " | duration expired at: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ; NOW: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p0, v5, v7

    if-gtz p0, :cond_0

    .line 1434
    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteClinicalModeRequest(Z)V

    const-string p0, "Clinical"

    const-string p1, "Should TURN OFF"

    .line 1435
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Clinical"

    .line 1437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Still ON: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v7

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " left"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
