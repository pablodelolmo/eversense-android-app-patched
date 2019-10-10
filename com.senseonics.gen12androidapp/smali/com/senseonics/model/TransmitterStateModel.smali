.class public Lcom/senseonics/model/TransmitterStateModel;
.super Ljava/lang/Object;
.source "TransmitterStateModel.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static CALIBRATIONS_REQUIRED_BEFORE_GLUCOSE_IN_INITIALIZATION_PHASE:I = 0x2

.field private static CALIBRATIONS_REQUIRED_DURING_INITIALIZATION_PHASE:I = 0x4

.field private static final DEFAULT_CALIBRATION_MADE_THIS_PHASE:I = -0x1

.field static final DEFAULT_SAMPLING_INTERVAL:I

.field static final SAMPLING_INTERVAL_MULTIPLIER_FOR_CALIBRATION_DURATION:I = 0x3


# instance fields
.field private EEP24MSP:F

.field private MEPSavedDriftMetric:F

.field private MEPSavedLowRefMetric:F

.field private MEPSavedRefChannelMetric:F

.field private MEPSavedSpike:F

.field private MEPSavedValue:F

.field private alertRecordRange:Lcom/senseonics/util/Range;

.field private algorithmParameterFormatVersion:I

.field private batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

.field private batteryVoltage:F

.field private bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

.field private calibrationsMadeInThisPhase:I

.field private clinicalMode:Z

.field private communicationProtocolVersion:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

.field private currentCountdown:J

.field private currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

.field private dayStartTimeHour:I

.field private dayStartTimeMinute:I

.field private delayBLEDisconnectionAlarm:I

.field private doNotDisturbMode:Z

.field private eveningCalibrationLocalTimeHour:I

.field private eveningCalibrationLocalTimeMinute:I

.field private eveningCalibrationTimeHour:I

.field private eveningCalibrationTimeMinute:I

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private glucoseLevel:I

.field private glucoseTimestamp:Ljava/util/Calendar;

.field private glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field private highGlucoseAlarmRepeatIntervalDayTime:I

.field private highGlucoseAlarmRepeatIntervalNightTime:I

.field private highGlucoseAlarmThreshold:I

.field private highGlucoseAlarmsEnabled:Z

.field private highGlucoseAlertThreshold:I

.field private highGlucoseTarget:I

.field private hysteresisHighGlocosePercent:I

.field private hysteresisHighPredictiveGlocosePercent:I

.field private hysteresisLowGlucoseValueMgDl:I

.field private hysteresisLowPredictiveGlucoseValueMgDl:I

.field private isBluetoothEnabled:Z

.field private isGlucoseStale:Z

.field private keepAliveAlertActive:Z

.field private lastCalibrationDateAndTime:Ljava/util/Calendar;

.field private lastGlucoseSyncedMaxRecordTimestamp:J

.field private lastReadTransmitterDatetimeTimestamp:J

.field private latestCalibrationDateAndTime:J

.field private linkedSensorId:Ljava/lang/String;

.field private lowGlucoseAlarmRepeatIntervalDayTime:I

.field private lowGlucoseAlarmRepeatIntervalNightTime:I

.field private lowGlucoseAlarmThreshold:I

.field private lowGlucoseAlertThreshold:I

.field private lowGlucoseTarget:I

.field private maxCalibrationThreshold:I

.field private maxSyncedAlertRecord:I

.field private maxSyncedBloodGlucoseRecord:I

.field private maxSyncedSensorRecord:I

.field private minCalibrationThreshold:I

.field private minutesAfterNextCalibrationTime:I

.field private minutesBeforeNextCalibrationTime:I

.field private minutesRemainingUntilCalibrationAllowed:I

.field private morningCalibrationLocalTimeHour:I

.field private morningCalibrationLocalTimeMinute:I

.field private morningCalibrationTimeHour:I

.field private morningCalibrationTimeMinute:I

.field private mostRecentGlucoseRegisterValue:I

.field private nextScheduledCalibration:Ljava/util/Calendar;

.field private nightStartTimeHour:I

.field private nightStartTimeMinute:I

.field private placementModeInProgress:Z

.field private predictiveAlertsActivated:Z

.field private predictiveFallingRateAlertMinuteInterval:I

.field private predictiveHighAlertsActivated:Z

.field private predictiveLowAlertsActivated:Z

.field private predictiveRisingRateAlertMinuteInterval:I

.field private preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

.field private rateAlertFallingThreshold:F

.field private rateAlertRisingThreshold:F

.field private rateAlertsActivated:Z

.field private rateFallingAlertsActivated:Z

.field private rateRisingAlertsActivated:Z

.field private rawDataValue1:I

.field private rawDataValue2:I

.field private rawDataValue3:I

.field private rawDataValue4:I

.field private rawDataValue5:I

.field private rawDataValue6:I

.field private rawDataValue7:I

.field private rawDataValue8:I

.field private readyForCalibrationState:I

.field responseIdToParsedResponseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/senseonics/model/ParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private samplingIntervalInSeconds:I

.field private sensorGlucoseAlertStatus:[I

.field private sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

.field private sensorInsertionDateAndTime:Ljava/util/Calendar;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field private startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

.field private supportForDelayBLEDisconnectionAlarm:Z

.field private supportForHighGluAlarmPredRateHighLowSettings:Z

.field private transmitter:Lcom/senseonics/bluetoothle/Transmitter;

.field private transmitterAddress:Ljava/lang/String;

.field private transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field private transmitterModelNumber:Ljava/lang/String;

.field private transmitterName:Ljava/lang/String;

.field private transmitterSerialNumber:Ljava/lang/String;

.field private transmitterTime:J

.field private transmitterVersionExtensionNumber:Ljava/lang/String;

.field private transmitterVersionNumber:Ljava/lang/String;

.field private unLinkedSensorId:Ljava/lang/String;

.field private vibrateMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/senseonics/model/TransmitterStateModel;->DEFAULT_SAMPLING_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/model/DefaultedHashMap;Landroid/content/SharedPreferences;Landroid/content/Context;Lcom/senseonics/util/PreferenceObjectSaverRetriver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/senseonics/model/DefaultedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/senseonics/model/ParsedResponse;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/Context;",
            "Lcom/senseonics/util/PreferenceObjectSaverRetriver;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    iput-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 123
    sget-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    iput-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    .line 223
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    .line 224
    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->responseIdToParsedResponseMap:Ljava/util/Map;

    .line 225
    iput-object p3, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 226
    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    .line 227
    iput-object p5, p0, Lcom/senseonics/model/TransmitterStateModel;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    .line 228
    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 230
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled:Z

    const/4 p2, 0x0

    .line 233
    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    .line 234
    sget-object p4, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const-string p4, "TransmitterAddress"

    .line 235
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    const-string p4, "TransmitterName"

    .line 236
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    const-string p4, "TransmitterSerialNumber"

    .line 237
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    const-string p4, "ModelNumber"

    .line 238
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterModelNumber:Ljava/lang/String;

    const-string p4, "FirmwareVersion"

    .line 239
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionNumber:Ljava/lang/String;

    const-string p4, "ExtensionNumber"

    .line 240
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionExtensionNumber:Ljava/lang/String;

    const-string p4, "TransmitterTime"

    const-wide/16 v1, 0x0

    .line 241
    invoke-interface {p3, p4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterTime:J

    .line 242
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    .line 243
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    .line 244
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getlatestCalibrationDateAndTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/senseonics/model/TransmitterStateModel;->latestCalibrationDateAndTime:J

    .line 246
    sget-object p4, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->REASON_UNKNOWN:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {p4}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->getId()I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->readyForCalibrationState:I

    .line 247
    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    .line 248
    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesBeforeNextCalibrationTime:I

    .line 249
    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesAfterNextCalibrationTime:I

    .line 250
    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesRemainingUntilCalibrationAllowed:I

    const-string p4, "MinCalibrationThreshold"

    const/16 v3, 0x28

    .line 251
    invoke-interface {p3, p4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->minCalibrationThreshold:I

    const-string p4, "MaxCalibrationThreshold"

    const/16 v3, 0x190

    .line 252
    invoke-interface {p3, p4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->maxCalibrationThreshold:I

    .line 255
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    const-string p4, "SensorId"

    .line 256
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->linkedSensorId:Ljava/lang/String;

    const-string p4, "UnlinkedSensorId"

    .line 257
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->unLinkedSensorId:Ljava/lang/String;

    .line 259
    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTimestamp:Ljava/util/Calendar;

    .line 260
    sget p4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    const p4, 0xffff

    .line 261
    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseRegisterValue:I

    .line 262
    sget-object p4, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 263
    sget-object p4, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string p4, "TransmitterBatteryVoltage"

    const/4 v3, 0x0

    .line 264
    invoke-interface {p3, p4, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryVoltage:F

    const-string p4, "TransmitterBatterylevel"

    .line 265
    sget-object v3, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v3}, Lcom/senseonics/model/BATTERY_LEVEL;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, p4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/senseonics/model/BATTERY_LEVEL;->valueOf(Ljava/lang/String;)Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 266
    sget-object p4, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    .line 267
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->placementModeInProgress:Z

    .line 268
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->clinicalMode:Z

    const-string p4, "CurrentCalibrationPhase"

    .line 269
    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v3}, Lcom/senseonics/util/Utils$CAL_PHASE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, p4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/senseonics/util/Utils$CAL_PHASE;->valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

    const-string p4, "CalibrationsMadeInThisPhase"

    .line 270
    invoke-interface {p3, p4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    const-string p4, "prefSamplingInterval"

    .line 272
    sget v3, Lcom/senseonics/model/TransmitterStateModel;->DEFAULT_SAMPLING_INTERVAL:I

    invoke-interface {p3, p4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    const-string p4, "prefAlgorithmParameterFormatVersion"

    .line 273
    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->algorithmParameterFormatVersion:I

    const-string p4, "prefCommunicationProtocolVersion"

    .line 274
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion:Ljava/lang/String;

    .line 276
    iput-wide v1, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    const-string p2, "glucoseTargetHigh"

    const/16 p4, 0x8c

    .line 279
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    const-string p2, "glucoseTargetLow"

    const/16 p4, 0x50

    .line 280
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    const-string p2, "glucoseAlarmHigh"

    const/16 p4, 0xc8

    .line 281
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    const-string p2, "glucoseAlarmLow"

    const/16 p4, 0x46

    .line 282
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    const/16 p2, 0x127

    .line 283
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlertThreshold:I

    const/16 p2, 0x3c

    .line 284
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlertThreshold:I

    const-string p2, "predictiveAlertsActivated"

    .line 286
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveAlertsActivated:Z

    const-string p2, "predictiveLowAlertsActivated"

    .line 287
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveLowAlertsActivated:Z

    const-string p2, "predictiveHighAlertsActivated"

    .line 288
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveHighAlertsActivated:Z

    const-string p2, "predictiveMinutes"

    const/16 p4, 0x14

    .line 289
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveFallingRateAlertMinuteInterval:I

    const-string p2, "predictiveRisingMinutes"

    .line 290
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveRisingRateAlertMinuteInterval:I

    const-string p2, "rateAlertValue"

    const/high16 p4, 0x40200000    # 2.5f

    .line 291
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertFallingThreshold:F

    const-string p2, "rateAlertRisingValue"

    .line 292
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertRisingThreshold:F

    const-string p2, "rateAlertsActivated"

    .line 293
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertsActivated:Z

    const-string p2, "rateFallingAlertsActivated"

    .line 294
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rateFallingAlertsActivated:Z

    const-string p2, "rateRisingAlertsActivated"

    .line 295
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rateRisingAlertsActivated:Z

    const-string p2, "supportForHighGluAlarmPredRateHighLowSettings"

    const/4 p4, 0x1

    .line 296
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForHighGluAlarmPredRateHighLowSettings:Z

    const-string p2, "HysteresisPercent"

    .line 298
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighGlocosePercent:I

    const-string p2, "HysteresisValue"

    .line 299
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowGlucoseValueMgDl:I

    const-string p2, "HysteresisPredictivePercent"

    .line 301
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighPredictiveGlocosePercent:I

    const-string p2, "HysteresisPredictiveValue"

    .line 302
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowPredictiveGlucoseValueMgDl:I

    const-string p2, "DelayBLEDisconnectionAlarm"

    const/16 v3, 0xb4

    .line 304
    invoke-interface {p3, p2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->delayBLEDisconnectionAlarm:I

    const-string p2, "SupportForDelayBLEDisconnectionAlarm"

    .line 305
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForDelayBLEDisconnectionAlarm:Z

    const-string p2, "VibrationMode"

    .line 307
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->vibrateMode:Z

    .line 309
    sget p2, Lcom/senseonics/util/Utils;->morningCalibrationHourDefaultLocal:I

    sget v3, Lcom/senseonics/util/Utils;->morningCalibrationMinuteDefault:I

    invoke-static {p2, v3}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object p2

    const-string v3, "MorningCalHour"

    .line 310
    aget v4, p2, p1

    invoke-interface {p3, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeHour:I

    const-string v3, "MorningCalMinute"

    .line 311
    aget p2, p2, p4

    invoke-interface {p3, v3, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeMinute:I

    .line 313
    sget p2, Lcom/senseonics/util/Utils;->eveningCalibrationHourDefaultLocal:I

    sget v3, Lcom/senseonics/util/Utils;->eveningCalibrationMinuteDefault:I

    invoke-static {p2, v3}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object p2

    const-string v3, "EveningCalHour"

    .line 314
    aget v4, p2, p1

    invoke-interface {p3, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeHour:I

    const-string v3, "EveningCalMinute"

    .line 315
    aget p2, p2, p4

    invoke-interface {p3, v3, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeMinute:I

    const-string p2, "MorningCalLocalHour"

    .line 318
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeHour:I

    const-string p2, "MorningCalLocalMinute"

    .line 319
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeMinute:I

    const-string p2, "EveningCalLocalHour"

    .line 320
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeHour:I

    const-string p2, "EveningCalLocalMinute"

    .line 321
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeMinute:I

    const-string p2, "MEPSavedValue"

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 324
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    const-string p2, "NewRegisters"

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: MEPSavedValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "MEPSavedRefChannelMetric"

    .line 326
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    const-string p2, "NewRegisters"

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: MEPSavedRefChannelMetric:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "MEPSavedDriftMetric"

    .line 328
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    const-string p2, "NewRegisters"

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: MEPSavedDriftMetric:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "MEPSavedLowRefMetric"

    .line 330
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    const-string p2, "NewRegisters"

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: MEPSavedLowRefMetric:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "MEPSavedSpike"

    .line 332
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    const-string p2, "NewRegisters"

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model init: MEPSavedSpike:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "EEP24MSP"

    const/high16 v0, 0x3f800000    # 1.0f

    .line 334
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    const-string p2, "NewRegisters"

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model init: EEP24MSP:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "LowGlucoseAlarmRepeatIntervalDayTime"

    const/16 v0, 0xf

    .line 338
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    const-string p2, "NewRegisters"

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: Day Low:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "HighGlucoseAlarmRepeatIntervalDayTime"

    const/16 v3, 0x1e

    .line 341
    invoke-interface {p3, p2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    const-string p2, "NewRegisters"

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Model init: Day High:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "LowGlucoseAlarmRepeatIntervalNightTime"

    .line 344
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    const-string p2, "NewRegisters"

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: Night Low:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "HighGlucoseAlarmRepeatIntervalNightTime"

    .line 347
    invoke-interface {p3, p2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    const-string p2, "NewRegisters"

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model init: Night High:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget p2, Lcom/senseonics/util/Utils;->dayStartTimeHourDefaultLocal:I

    sget v0, Lcom/senseonics/util/Utils;->dayStartTimeMinuteDefault:I

    invoke-static {p2, v0}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object p2

    const-string v0, "DayStartTimeHour"

    .line 351
    aget v3, p2, p1

    invoke-interface {p3, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    const-string v0, "DayStartTimeMinute"

    .line 352
    aget p2, p2, p4

    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    const-string p2, "NewRegisters"

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model init: dayStartTimeHour:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "NewRegisters"

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model init: dayStartTimeMinute:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget p2, Lcom/senseonics/util/Utils;->nightStartTimeHourDefaultLocal:I

    sget v0, Lcom/senseonics/util/Utils;->nightStartTimeMinuteDefault:I

    invoke-static {p2, v0}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object p2

    const-string v0, "NightStartTimeHour"

    .line 357
    aget v3, p2, p1

    invoke-interface {p3, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    const-string v0, "NightStartTimeMinute"

    .line 358
    aget p2, p2, p4

    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    const-string p2, "NewRegisters"

    .line 359
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model init: nightStartTimeHour:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "NewRegisters"

    .line 360
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model init: nightStartTimeMinute:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "LastGlucoseSyncedMaxRecordTimestamp"

    .line 362
    invoke-interface {p3, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/senseonics/model/TransmitterStateModel;->lastGlucoseSyncedMaxRecordTimestamp:J

    .line 364
    new-instance p2, Lcom/senseonics/util/Range;

    const-string p4, "SensorGlucoseRecordRangeFrom"

    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    const-string v0, "SensorGlucoseRecordRangeTo"

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p2, p4, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

    .line 365
    new-instance p2, Lcom/senseonics/util/Range;

    const-string p4, "AlertRecordRangeFrom"

    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    const-string v0, "AlertRecordRangeTo"

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p2, p4, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->alertRecordRange:Lcom/senseonics/util/Range;

    .line 366
    new-instance p2, Lcom/senseonics/util/Range;

    const-string p4, "BloodGlucoseRecordRangeFrom"

    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    const-string v0, "BloodGlucoseRecordRangeTo"

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p2, p4, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

    const-string p2, "MaxSyncedSensorRecord"

    .line 368
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedSensorRecord:I

    const-string p2, "MaxSyncedAlertRecord"

    .line 369
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedAlertRecord:I

    const-string p2, "MaxSyncedBloodGlucoseRecord"

    .line 370
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedBloodGlucoseRecord:I

    .line 373
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue1:I

    .line 374
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue2:I

    .line 375
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue3:I

    .line 376
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue4:I

    .line 377
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue5:I

    .line 378
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue6:I

    .line 379
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue7:I

    .line 380
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue8:I

    const-string p2, "LastReadTransmitterDatetimeTimestamp"

    .line 382
    invoke-interface {p3, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lastReadTransmitterDatetimeTimestamp:J

    const-string p2, "KeepAliveAlertActive"

    .line 384
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->keepAliveAlertActive:Z

    const-string p2, "IsGlucoseStale"

    .line 385
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseStale:Z

    const-string p1, "SensorGlucoseAlertStatus"

    .line 386
    invoke-virtual {p5, p1}, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->getSensorGlucoseAlertStatus(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseAlertStatus:[I

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/model/TransmitterStateModel;)Landroid/os/CountDownTimer;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/senseonics/model/TransmitterStateModel;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/senseonics/model/TransmitterStateModel;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/senseonics/model/TransmitterStateModel;)Lde/greenrobot/event/EventBus;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method

.method private fireChangeEvent()V
    .locals 2

    .line 1992
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/model/ModelChangedEvent;

    invoke-direct {v1, p0}, Lcom/senseonics/model/ModelChangedEvent;-><init>(Lcom/senseonics/model/TransmitterStateModel;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method private fireGlucoseSettingsChangedEvent()V
    .locals 2

    .line 2001
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/GlucoseSettingsChangedEvent;

    invoke-direct {v1}, Lcom/senseonics/events/GlucoseSettingsChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private fireMessageCodeChangedEvent()V
    .locals 2

    .line 2005
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/MessageCodeChangedEvent;

    invoke-direct {v1}, Lcom/senseonics/events/MessageCodeChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method private fireRefreshGraphEvent()V
    .locals 2

    .line 1997
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedRefreshGraphEvent;

    invoke-direct {v1}, Lcom/senseonics/events/ModelChangedRefreshGraphEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method private getTransmitterVersionExtensionNumber()Ljava/lang/String;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionExtensionNumber:Ljava/lang/String;

    return-object v0
.end method

.method private getTransmitterVersionNumber()Ljava/lang/String;
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionNumber:Ljava/lang/String;

    return-object v0
.end method

.method private updateTransmitterAddressInPreference()V
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TransmitterAddress"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TransmitterAddress"

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method private updateTransmitterNameInPreference()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TransmitterName"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TransmitterName"

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method


# virtual methods
.method public adjustLastReadDateTimeWhenSendingReadCommand()V
    .locals 7

    .line 390
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getLastReadTransmitterDatetimeTimestamp()J

    move-result-wide v0

    .line 391
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 397
    invoke-virtual {p0, v4, v5}, Lcom/senseonics/model/TransmitterStateModel;->setLastReadTransmitterDatetimeTimestamp(J)V

    goto :goto_0

    .line 400
    :cond_0
    sget v4, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    mul-int/lit8 v4, v4, 0x5

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 402
    invoke-virtual {p0, v2, v3}, Lcom/senseonics/model/TransmitterStateModel;->setLastReadTransmitterDatetimeTimestamp(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public canCurrentAppAlertCodeBeReasonForBlinded()Z
    .locals 1

    .line 1978
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v0

    return v0
.end method

.method public canCurrentMessageCodeBeReasonForBlinded()Z
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v0

    return v0
.end method

.method public cancelOngoingCalibration()V
    .locals 4

    .line 634
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "calibrationDateTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 635
    iput-wide v2, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    .line 636
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 639
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public checkIfNonGlucoseShowingPhase()Z
    .locals 3

    .line 1168
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 1169
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v0

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public couldWriteTransmitterDateTime()Z
    .locals 4

    .line 1023
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    const-string v1, "TimeChange"

    .line 1024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldWriteTransmitterDateTime state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->noCalEventInSpecificTimeRange()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "TimeChange"

    .line 1033
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldWriteTransmitterDateTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public couldWriteTransmitterDateTimeWhenStateSync()Z
    .locals 4

    .line 1042
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    const-string v1, "TimeChange"

    .line 1043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldWriteTransmitterDateTimeWhenStateSync state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->noCalEventInSpecificTimeRange()Z

    move-result v0

    const-string v1, "TimeChange"

    .line 1049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldWriteTransmitterDateTimeWhenStateSync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public fireReadyForCalibrationChangedEvent()V
    .locals 2

    .line 2009
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/model/ReadyForCalibrationChangedEvent;

    invoke-direct {v1}, Lcom/senseonics/model/ReadyForCalibrationChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getAlertRecordRange()Lcom/senseonics/util/Range;
    .locals 3

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model alertRecordRange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->alertRecordRange:Lcom/senseonics/util/Range;

    invoke-virtual {v2}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->alertRecordRange:Lcom/senseonics/util/Range;

    return-object v0
.end method

.method public getAlgorithmParameterFormatVersion()I
    .locals 1

    .line 1311
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->algorithmParameterFormatVersion:I

    return v0
.end method

.method public getBackgroundColorForGlucose(I)I
    .locals 1

    .line 2084
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 2086
    :cond_0
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f060048

    return p1

    :cond_2
    :goto_0
    const p1, 0x7f060051

    return p1

    :cond_3
    :goto_1
    const p1, 0x7f06004d

    return p1
.end method

.method public getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

    return-object v0
.end method

.method public getBatteryLife()Ljava/lang/String;
    .locals 1

    .line 1120
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getBatteryPercentStringForLevel(Lcom/senseonics/model/BATTERY_LEVEL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryVoltage()F
    .locals 1

    .line 1099
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryVoltage:F

    return v0
.end method

.method public getBloodGlucoseRecordRange()Lcom/senseonics/util/Range;
    .locals 3

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model bloodGlucoseRecordRange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

    invoke-virtual {v2}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

    return-object v0
.end method

.method public getCalibrationDuration()I
    .locals 2

    .line 1337
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    div-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getCalibrationsMadeInThisPhase()I
    .locals 1

    .line 1276
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    return v0
.end method

.method public getCalibrationsRemaining()I
    .locals 2

    .line 1280
    sget v0, Lcom/senseonics/model/TransmitterStateModel;->CALIBRATIONS_REQUIRED_DURING_INITIALIZATION_PHASE:I

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCommunicationProtocolVersion()F
    .locals 1

    .line 1322
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1324
    :try_start_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;
    .locals 2

    .line 1965
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    .line 1967
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getKeepAliveAlertActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1968
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterKeepAliveNotReceived:Lcom/senseonics/util/TransmitterMessageCode;

    .line 1970
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsGlucoseStale()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1971
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterGlucoseStale:Lcom/senseonics/util/TransmitterMessageCode;

    :cond_1
    return-object v0
.end method

.method public getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

    return-object v0
.end method

.method public getCurrentCountdown()J
    .locals 2

    .line 1284
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    return-wide v0
.end method

.method public getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    return-object v0
.end method

.method public getCurrentPhase()Ljava/lang/String;
    .locals 2

    .line 1229
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1242
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v1, 0x7f0f0184

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1235
    :pswitch_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v1, 0x7f0f012c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1233
    :pswitch_1
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v1, 0x7f0f0098

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1231
    :pswitch_2
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v1, 0x7f0f0290

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentPhaseNotTranslated()Ljava/lang/String;
    .locals 2

    .line 1247
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "Not Available"

    return-object v0

    :pswitch_0
    const-string v0, "Dropout"

    return-object v0

    :pswitch_1
    const-string v0, "Debug/Test"

    return-object v0

    :pswitch_2
    const-string v0, "Unknown"

    return-object v0

    :pswitch_3
    const-string v0, "Suspicious Fingerstick"

    return-object v0

    :pswitch_4
    const-string v0, "Initialization"

    return-object v0

    :pswitch_5
    const-string v0, "Daily Calibration"

    return-object v0

    :pswitch_6
    const-string v0, "Warm Up"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;
    .locals 5

    const/4 v0, 0x2

    .line 2017
    new-array v1, v0, [I

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    aget v3, p1, v0

    aput v3, v1, v2

    .line 2018
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v1

    .line 2019
    new-array v0, v0, [I

    const/4 v3, 0x3

    aget v3, p1, v3

    aput v3, v0, v4

    const/4 v3, 0x4

    aget p1, p1, v3

    aput p1, v0, v2

    .line 2020
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object p1

    .line 2022
    invoke-static {v1, p1}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getDayStartTimeHour()I
    .locals 1

    .line 1820
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    return v0
.end method

.method public getDayStartTimeMinute()I
    .locals 1

    .line 1830
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    return v0
.end method

.method public getDelayBLEDisconnectionAlarm()I
    .locals 1

    .line 1379
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->delayBLEDisconnectionAlarm:I

    return v0
.end method

.method public getEEP24MSP()F
    .locals 1

    .line 1809
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    return v0
.end method

.method public getEveningCalibrationLocalTimeHour()I
    .locals 1

    .line 1740
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeHour:I

    return v0
.end method

.method public getEveningCalibrationLocalTimeMinute()I
    .locals 1

    .line 1749
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeMinute:I

    return v0
.end method

.method public getEveningCalibrationTimeHour()I
    .locals 1

    .line 1706
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeHour:I

    return v0
.end method

.method public getEveningCalibrationTimeMinute()I
    .locals 1

    .line 1717
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeMinute:I

    return v0
.end method

.method public getFormattedTransmitterVersionNumber()Ljava/lang/String;
    .locals 4

    .line 794
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterVersionExtensionNumber()Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "."

    .line 799
    invoke-static {v1, v2}, Lcom/senseonics/util/Utils;->countOccurrancesInString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^0+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getGlucoseLevel()I
    .locals 1

    .line 1143
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    return v0
.end method

.method public getGlucoseLevelAlertText(I)I
    .locals 1

    .line 2049
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-le p1, v0, :cond_0

    const p1, 0x7f0f00ff

    return p1

    .line 2051
    :cond_0
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    if-ge p1, v0, :cond_1

    const p1, 0x7f0f0103

    return p1

    .line 2053
    :cond_1
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    if-le p1, v0, :cond_2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-gt p1, v0, :cond_2

    const p1, 0x7f0f0100

    return p1

    .line 2056
    :cond_2
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-ge p1, v0, :cond_3

    const p1, 0x7f0f0104

    return p1

    .line 2059
    :cond_3
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    if-gt p1, v0, :cond_4

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-lt p1, v0, :cond_4

    const p1, 0x7f0f010a

    return p1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public getGlucoseTimestamp()J
    .locals 2

    .line 1129
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTimestamp:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTimestamp:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

    return-object v0
.end method

.method public getHighGlucoseAlarmRepeatIntervalDayTime()I
    .locals 1

    .line 1860
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    return v0
.end method

.method public getHighGlucoseAlarmRepeatIntervalNightTime()I
    .locals 1

    .line 1871
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    return v0
.end method

.method public getHighGlucoseAlarmThreshold()I
    .locals 1

    .line 1507
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    return v0
.end method

.method public getHighGlucoseAlertThreshold()I
    .locals 1

    .line 1511
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlertThreshold:I

    return v0
.end method

.method public getHighGlucoseTarget()I
    .locals 1

    .line 1461
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    return v0
.end method

.method public getHoursLeftForWarmupPhase()I
    .locals 4

    .line 1355
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v0, v1, :cond_0

    .line 1356
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1358
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1359
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xa

    const/16 v2, 0x18

    .line 1360
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1361
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1362
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 1364
    div-long/2addr v2, v0

    const-wide/16 v0, 0x3c

    div-long/2addr v2, v0

    long-to-int v0, v2

    div-int/lit8 v0, v0, 0x3c

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHysteresisHighGlocosePercent()I
    .locals 1

    .line 499
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighGlocosePercent:I

    return v0
.end method

.method public getHysteresisHighPredictiveGlocosePercent()I
    .locals 1

    .line 517
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighPredictiveGlocosePercent:I

    return v0
.end method

.method public getHysteresisLowGlucoseValueMgDl()I
    .locals 1

    .line 508
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowGlucoseValueMgDl:I

    return v0
.end method

.method public getHysteresisLowPredictiveGlucoseValueMgDl()I
    .locals 1

    .line 526
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowPredictiveGlucoseValueMgDl:I

    return v0
.end method

.method public getIsGlucoseStale()Z
    .locals 1

    .line 1955
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseStale:Z

    return v0
.end method

.method public getKeepAliveAlertActive()Z
    .locals 1

    .line 1945
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->keepAliveAlertActive:Z

    return v0
.end method

.method public getLastGlucoseSyncedMaxRecordTimestamp()J
    .locals 2

    .line 420
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lastGlucoseSyncedMaxRecordTimestamp:J

    return-wide v0
.end method

.method public getLastReadTransmitterDatetimeTimestamp()J
    .locals 2

    .line 411
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lastReadTransmitterDatetimeTimestamp:J

    return-wide v0
.end method

.method public getLinkedSensorId()Ljava/lang/String;
    .locals 1

    .line 1426
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->linkedSensorId:Ljava/lang/String;

    return-object v0
.end method

.method public getLowGlucoseAlarmRepeatIntervalDayTime()I
    .locals 1

    .line 1881
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    return v0
.end method

.method public getLowGlucoseAlarmRepeatIntervalNightTime()I
    .locals 1

    .line 1892
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    return v0
.end method

.method public getLowGlucoseAlarmThreshold()I
    .locals 1

    .line 1538
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    return v0
.end method

.method public getLowGlucoseAlertThreshold()I
    .locals 1

    .line 1515
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlertThreshold:I

    return v0
.end method

.method public getLowGlucoseTarget()I
    .locals 1

    .line 1484
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    return v0
.end method

.method public getMEPSavedDriftMetric()F
    .locals 1

    .line 1779
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    return v0
.end method

.method public getMEPSavedLowRefMetric()F
    .locals 1

    .line 1789
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    return v0
.end method

.method public getMEPSavedRefChannelMetric()F
    .locals 1

    .line 1769
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    return v0
.end method

.method public getMEPSavedSpike()F
    .locals 1

    .line 1799
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    return v0
.end method

.method public getMEPSavedValue()F
    .locals 1

    .line 1759
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    return v0
.end method

.method public getMaxCalibrationThreshold()I
    .locals 1

    .line 986
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->maxCalibrationThreshold:I

    return v0
.end method

.method public getMaxGlucoseRecordsToSync()I
    .locals 2

    .line 1348
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInSeconds()I

    move-result v0

    const/16 v1, 0xe10

    div-int/2addr v1, v0

    .line 1349
    sget v0, Lcom/senseonics/util/Utils;->DAYS_TO_FETCH_FOR_SYNC:I

    mul-int/lit8 v0, v0, 0x18

    mul-int v0, v0, v1

    return v0
.end method

.method public getMaxSyncedAlertRecord()I
    .locals 1

    .line 472
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedAlertRecord:I

    return v0
.end method

.method public getMaxSyncedBloodGlucoseRecord()I
    .locals 1

    .line 482
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedBloodGlucoseRecord:I

    return v0
.end method

.method public getMaxSyncedSensorRecord()I
    .locals 1

    .line 462
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedSensorRecord:I

    return v0
.end method

.method public getMinCalibrationThreshold()I
    .locals 1

    .line 977
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minCalibrationThreshold:I

    return v0
.end method

.method public getMinutesAfterNextCalibrationTime()I
    .locals 1

    .line 961
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesAfterNextCalibrationTime:I

    return v0
.end method

.method public getMinutesBeforeNextCalibrationTime()I
    .locals 1

    .line 953
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesBeforeNextCalibrationTime:I

    return v0
.end method

.method public getMinutesRemainingUntilCalibrationAllowed()I
    .locals 1

    .line 969
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesRemainingUntilCalibrationAllowed:I

    return v0
.end method

.method public getMorningCalibrationLocalTimeHour()I
    .locals 1

    .line 1722
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeHour:I

    return v0
.end method

.method public getMorningCalibrationLocalTimeMinute()I
    .locals 1

    .line 1731
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeMinute:I

    return v0
.end method

.method public getMorningCalibrationTimeHour()I
    .locals 1

    .line 1684
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeHour:I

    return v0
.end method

.method public getMorningCalibrationTimeMinute()I
    .locals 1

    .line 1695
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeMinute:I

    return v0
.end method

.method public getMostRecentGlucoseRegisterValue()I
    .locals 1

    .line 1151
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseRegisterValue:I

    return v0
.end method

.method public getNextScheduledCalibration()Ljava/util/Calendar;
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    return-object v0
.end method

.method public getNightStartTimeHour()I
    .locals 1

    .line 1840
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    return v0
.end method

.method public getNightStartTimeMinute()I
    .locals 1

    .line 1850
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    return v0
.end method

.method public getNotificationIconForGlucose(I)I
    .locals 2

    .line 2075
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    const v1, 0x7f080064

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 2077
    :cond_0
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f080191

    return p1

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method public getPredictiveFallingRateAlertMinuteInterval()I
    .locals 1

    .line 1593
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveFallingRateAlertMinuteInterval:I

    return v0
.end method

.method public getPredictiveRisingRateAlertMinuteInterval()I
    .locals 1

    .line 1604
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveRisingRateAlertMinuteInterval:I

    return v0
.end method

.method public getRateAlertFallingThreshold()F
    .locals 1

    .line 1615
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertFallingThreshold:F

    return v0
.end method

.method public getRateAlertRisingThreshold()F
    .locals 1

    .line 1626
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertRisingThreshold:F

    return v0
.end method

.method public getRawDataValues()[I
    .locals 3

    const-string v0, "RawValue"

    .line 1903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue5:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue6:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue7:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue8:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 1904
    new-array v0, v0, [I

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue4:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue5:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue6:I

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue7:I

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue8:I

    const/4 v2, 0x7

    aput v1, v0, v2

    return-object v0
.end method

.method public getReadyForCalibrationState()Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;
    .locals 1

    .line 918
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->readyForCalibrationState:I

    invoke-static {v0}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    move-result-object v0

    return-object v0
.end method

.method public getSamplingIntervalInMinutes()I
    .locals 2

    .line 1301
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    div-int/lit8 v0, v0, 0x3c

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getSamplingIntervalInSeconds()I
    .locals 1

    .line 1292
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    return v0
.end method

.method public getSensorGlucoseAlertStatus()[I
    .locals 1

    .line 1982
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseAlertStatus:[I

    return-object v0
.end method

.method public getSensorGlucoseRecordRange()Lcom/senseonics/util/Range;
    .locals 3

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model sensorGlucoseRecordRange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

    invoke-virtual {v2}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

    return-object v0
.end method

.method public getSensorInsertionDateAndTime()Ljava/util/Calendar;
    .locals 4

    .line 672
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SensorInsertionDateTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 677
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 678
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v2

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

    return-object v0
.end method

.method public getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;
    .locals 4

    .line 837
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "CalibrationStartDate"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 842
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 843
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v2

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getTextColorForGlucose(I)I
    .locals 1

    .line 2068
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f06004a

    return p1

    :cond_1
    :goto_0
    const p1, 0x7f060050

    return p1
.end method

.method public getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    return-object v0
.end method

.method public getTransmitterAddress()Ljava/lang/String;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object v0
.end method

.method public getTransmitterModelNumber()Ljava/lang/String;
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterModelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterName()Ljava/lang/String;
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterSerialNumber()Ljava/lang/String;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterTime()J
    .locals 2

    .line 828
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterTime:J

    return-wide v0
.end method

.method public getUnLinkedSensorId()Ljava/lang/String;
    .locals 1

    .line 1437
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->unLinkedSensorId:Ljava/lang/String;

    return-object v0
.end method

.method public getlastCalibrationDateAndTime()Ljava/util/Calendar;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 889
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "LastCalibration"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 894
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 895
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v2

    .line 900
    :cond_1
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getlatestCalibrationDateAndTimeInMillis()J
    .locals 5

    .line 906
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->latestCalibrationDateAndTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "calibrationDateTime"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    return-wide v0

    .line 914
    :cond_1
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->latestCalibrationDateAndTime:J

    return-wide v0
.end method

.method public hasSupportForDelayBLEDisconnectionAlarm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasSupportForHighGluAlarmPredRateHighLowSettings()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .line 726
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled:Z

    return v0
.end method

.method public isClinicalMode()Z
    .locals 1

    .line 1212
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->clinicalMode:Z

    return v0
.end method

.method public isFormattedTransmitterVersionXL()Z
    .locals 3

    .line 778
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 782
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 784
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 785
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlucoseLevelWithinRange()Z
    .locals 2

    .line 1164
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MIN:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MAX:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHighGlucoseAlarmsEnabled()Z
    .locals 1

    .line 1549
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmsEnabled:Z

    return v0
.end method

.method public isPlacementModeInProgress()Z
    .locals 1

    .line 1200
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->placementModeInProgress:Z

    return v0
.end method

.method public isPredictiveAlertsActivated()Z
    .locals 1

    .line 1560
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveAlertsActivated:Z

    return v0
.end method

.method public isPredictiveHighAlertsActivated()Z
    .locals 1

    .line 1582
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveHighAlertsActivated:Z

    return v0
.end method

.method public isPredictiveLowAlertsActivated()Z
    .locals 1

    .line 1571
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveLowAlertsActivated:Z

    return v0
.end method

.method public isRateAlertsActivated()Z
    .locals 1

    .line 1637
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertsActivated:Z

    return v0
.end method

.method public isRateFallingAlertsActivated()Z
    .locals 1

    .line 1648
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateFallingAlertsActivated:Z

    return v0
.end method

.method public isRateRisingAlertsActivated()Z
    .locals 1

    .line 1659
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateRisingAlertsActivated:Z

    return v0
.end method

.method public isTransmitterConnected()Z
    .locals 2

    .line 2013
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidDate(Ljava/util/Calendar;)Z
    .locals 5

    .line 2026
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "GMT"

    .line 2027
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2028
    sget v1, Lcom/senseonics/util/Utils;->kNumberOfDaysToFetch:I

    neg-int v1, v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 2033
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "GMT"

    .line 2034
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2039
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isVibrateMode()Z
    .locals 1

    .line 1402
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->vibrateMode:Z

    return v0
.end method

.method public noCalEventInSpecificTimeRange()Z
    .locals 9

    .line 997
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getlatestCalibrationDateAndTimeInMillis()J

    move-result-wide v0

    const-string v2, "GMT"

    .line 999
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 1000
    invoke-static {v2}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v3

    const/16 v5, 0x10

    .line 1001
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    .line 1002
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    sub-long/2addr v7, v5

    const-string v2, "TimeChange"

    .line 1005
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentTimestamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TimeChange"

    .line 1006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timestampCalib:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TimeChange"

    .line 1007
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calibMinsInMillis:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v4, 0x249f00

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TimeChange"

    .line 1008
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "diff:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v0

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v7, v4

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "TimeChange"

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noCalEventInSpecificTimeRange?:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;)V
    .locals 0

    .line 643
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;->isBluetoothEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled:Z

    .line 644
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 8

    .line 565
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    const-string v1, "statusbar"

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with old state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 570
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/Transmitter;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "statusbar"

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skipping disconnect from another tx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 573
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v1

    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    .line 574
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/Transmitter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 575
    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 578
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 579
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterAddress(Ljava/lang/String;)V

    .line 580
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/Transmitter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterName(Ljava/lang/String;)V

    .line 584
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    .line 586
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq p1, v0, :cond_3

    .line 587
    sget p1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    .line 588
    sget-object p1, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 589
    sget-object p1, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

    :cond_3
    const-string p1, "GMT"

    .line 592
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 593
    invoke-static {p1}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v0

    const/16 v2, 0x10

    .line 594
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    .line 595
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sub-long/2addr v4, v2

    .line 596
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationDuration()I

    move-result p1

    int-to-long v0, p1

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long v0, v0, v2

    .line 598
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "calibrationDateTime"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_4

    .line 599
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "calibrationDateTime"

    invoke-interface {p1, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    goto :goto_2

    :cond_4
    move-wide v6, v2

    :goto_2
    const/4 p1, 0x0

    sub-long/2addr v4, v6

    cmp-long p1, v4, v0

    if-gtz p1, :cond_5

    cmp-long p1, v4, v2

    if-ltz p1, :cond_5

    sub-long/2addr v0, v4

    .line 604
    iput-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    goto :goto_3

    .line 606
    :cond_5
    iput-wide v2, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    .line 608
    :goto_3
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 609
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_6

    .line 610
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->startCountDownTimer(J)V

    :cond_6
    return-void
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;)V
    .locals 5

    .line 535
    const-class v0, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-static {v2}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->responseIdToParsedResponseMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/model/ParsedResponse;

    .line 538
    instance-of v1, v0, Lcom/senseonics/model/NoOpParsedResponse;

    if-eqz v1, :cond_0

    .line 539
    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseId ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") was not handled. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v3

    invoke-static {v3}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsed response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/senseonics/model/ParsedResponse;->check([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lcom/senseonics/model/ParsedResponse;->apply([ILcom/senseonics/model/TransmitterStateModel;)V

    :cond_1
    return-void
.end method

.method public onEvent(Lcom/senseonics/events/CalibrationCountdownEvent;)V
    .locals 2

    const-string v0, "statusBar"

    .line 648
    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationCountdownEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 650
    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationCountdownEvent;->getCurrentCountdownMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    .line 651
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/senseonics/events/RegisterNotFoundEvent;)V
    .locals 2

    .line 656
    invoke-virtual {p1}, Lcom/senseonics/events/RegisterNotFoundEvent;->getRequestData()[I

    move-result-object p1

    .line 658
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmEnabled:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setSupportForHighGluAlarmPredRateHighLowSettings(Z)V

    goto :goto_0

    .line 661
    :cond_0
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->delayBLEDisconnectAlarmAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xb4

    .line 662
    invoke-virtual {p0, p1}, Lcom/senseonics/model/TransmitterStateModel;->setDelayBLEDisconnectionAlarm(I)V

    .line 663
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setSupportForDelayBLEDisconnectionAlarm(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetSyncRecordNumbersIfNeeded()V
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " preparesync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--- resetSyncRecordNumbersIfNeeded ---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 493
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedSensorRecord(I)V

    .line 494
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedAlertRecord(I)V

    .line 495
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedBloodGlucoseRecord(I)V

    return-void
.end method

.method public setAlertRecordRange(Lcom/senseonics/util/Range;)V
    .locals 3

    .line 445
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->alertRecordRange:Lcom/senseonics/util/Range;

    .line 446
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AlertRecordRangeFrom"

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 447
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AlertRecordRangeTo"

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getTo()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAlgorithmParameterFormatVersion(I)V
    .locals 3

    const-string v0, "Algo format version"

    .line 1315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model set:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->algorithmParameterFormatVersion:I

    .line 1317
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefAlgorithmParameterFormatVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBatteryLevel(Lcom/senseonics/model/BATTERY_LEVEL;)V
    .locals 3

    .line 1113
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 1114
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TransmitterBatterylevel"

    invoke-virtual {p1}, Lcom/senseonics/model/BATTERY_LEVEL;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1115
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedBatteryLevelEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedBatteryLevelEvent;-><init>(Lcom/senseonics/model/BATTERY_LEVEL;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1116
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setBatteryVoltage(F)V
    .locals 2

    .line 1103
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryVoltage:F

    .line 1104
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TransmitterBatteryVoltage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1105
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/BatteryVoltageEvent;

    invoke-direct {v0}, Lcom/senseonics/events/BatteryVoltageEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setBloodGlucoseRecordRange(Lcom/senseonics/util/Range;)V
    .locals 3

    .line 456
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

    .line 457
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BloodGlucoseRecordRangeFrom"

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 458
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BloodGlucoseRecordRangeTo"

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getTo()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCalibrationPhaseStartDateOnly([I)V
    .locals 5

    const/4 v0, 0x0

    .line 867
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 868
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    .line 869
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "CalibrationStartDate"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 871
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 873
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :cond_1
    const-string v4, "GMT"

    .line 876
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 877
    aget v4, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 878
    aget v4, p1, v3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 879
    aget p1, p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 880
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 881
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 882
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 883
    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public setCalibrationsMadeInThisPhase(I)V
    .locals 2

    .line 1269
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    .line 1270
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CalibrationsMadeInThisPhase"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1271
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1272
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedCalibrationsMadeInThisPhaseEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedCalibrationsMadeInThisPhaseEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setClinicalMode(Z)V
    .locals 2

    .line 1204
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->clinicalMode:Z

    .line 1206
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ClinicalMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1207
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1208
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedClinicalModeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedClinicalModeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setCommunicationProtocolVersion(Ljava/lang/String;)V
    .locals 2

    .line 1332
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion:Ljava/lang/String;

    .line 1333
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefCommunicationProtocolVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCurrentCalibrationPhase(Lcom/senseonics/util/Utils$CAL_PHASE;)V
    .locals 3

    .line 1220
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

    .line 1221
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurrentCalibrationPhase"

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$CAL_PHASE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1222
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1223
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedCurrentCalibrationPhaseEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedCurrentCalibrationPhaseEvent;-><init>(Lcom/senseonics/util/Utils$CAL_PHASE;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setCurrentCountdown(J)V
    .locals 0

    .line 1288
    iput-wide p1, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    return-void
.end method

.method public setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 0

    .line 1176
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    .line 1178
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1179
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireMessageCodeChangedEvent()V

    return-void
.end method

.method public setDayStartTimeHour(I)V
    .locals 2

    .line 1824
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    .line 1825
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DayStartTimeHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "NewRegisters"

    .line 1826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Day Start Time Hour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDayStartTimeMinute(I)V
    .locals 2

    .line 1834
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    .line 1835
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DayStartTimeMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "NewRegisters"

    .line 1836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Day Start Time Minute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDelayBLEDisconnectionAlarm(I)V
    .locals 2

    .line 1371
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->delayBLEDisconnectionAlarm:I

    .line 1372
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DelayBLEDisconnectionAlarm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1373
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1374
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedDelayBLEDisconnectionEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedDelayBLEDisconnectionEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setDoNotDisturbMode(Z)V
    .locals 2

    .line 1413
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->doNotDisturbMode:Z

    .line 1414
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1415
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedDoNotDisturbModeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedDoNotDisturbModeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setEEP24MSP(F)V
    .locals 2

    .line 1813
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    .line 1814
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EEP24MSP"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "NewRegisters"

    .line 1815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EEP24 MSP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEveningCalibrationLocalTimeHour(I)V
    .locals 2

    .line 1744
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeHour:I

    .line 1745
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EveningCalLocalHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEveningCalibrationLocalTimeMinute(I)V
    .locals 2

    .line 1753
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeMinute:I

    .line 1754
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EveningCalLocalMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEveningCalibrationTimeHour(I)V
    .locals 2

    .line 1699
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeHour:I

    .line 1700
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EveningCalHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1701
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1702
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setEveningCalibrationTimeMinute(I)V
    .locals 2

    .line 1710
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeMinute:I

    .line 1711
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EveningCalMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1712
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1713
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setGlucoseLevel(I)V
    .locals 3

    const-string v0, "#3640"

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGlucoseLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    .line 1138
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1139
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    return-void
.end method

.method public setGlucoseTimestamp(Ljava/util/Calendar;)V
    .locals 0

    .line 1124
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTimestamp:Ljava/util/Calendar;

    return-void
.end method

.method public setGlucoseTrendDirection(Lcom/senseonics/util/Utils$ARROW_TYPE;)V
    .locals 0

    .line 1155
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 1156
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setHighGlucoseAlarmRepeatIntervalDayTime(I)V
    .locals 3

    .line 1864
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    .line 1865
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HighGlucoseAlarmRepeatIntervalDayTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "NewRegisters"

    .line 1866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "High Day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedHighGlucoseAlarmRepeatIntervalDayTimeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedHighGlucoseAlarmRepeatIntervalDayTimeEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setHighGlucoseAlarmRepeatIntervalNightTime(I)V
    .locals 2

    .line 1875
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    .line 1876
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HighGlucoseAlarmRepeatIntervalNightTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "NewRegisters"

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "High Night:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHighGlucoseAlarmThreshold(I)V
    .locals 4

    .line 1488
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "#3640_2"

    .line 1489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHighGlucoseAlarmThreshold shouldRefreshGraph?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    .line 1492
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "glucoseAlarmHigh"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1495
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/ModelChangedHighAlarmThresholdEvent;

    invoke-direct {v2, p1}, Lcom/senseonics/events/ModelChangedHighAlarmThresholdEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1497
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    if-eqz v0, :cond_1

    .line 1500
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    .line 1503
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setHighGlucoseAlarmsEnabled(Z)V
    .locals 2

    .line 1542
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmsEnabled:Z

    .line 1543
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "glucoseAlarmHighEnabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1544
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1545
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setHighGlucoseTarget(I)V
    .locals 4

    .line 1442
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "#3640_2"

    .line 1443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHighGlucoseTarget shouldRefreshGraph?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    .line 1446
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "glucoseTargetHigh"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1449
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/ModelChangedHighTargetThresholdEvent;

    invoke-direct {v2, p1}, Lcom/senseonics/events/ModelChangedHighTargetThresholdEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1451
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    if-eqz v0, :cond_1

    .line 1454
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    .line 1457
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setHysteresisHighGlocosePercent(I)V
    .locals 2

    .line 503
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighGlocosePercent:I

    .line 504
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HysteresisPercent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHysteresisHighPredictiveGlocosePercent(I)V
    .locals 2

    .line 521
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighPredictiveGlocosePercent:I

    .line 522
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HysteresisPredictivePercent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHysteresisLowGlucoseValueMgDl(I)V
    .locals 2

    .line 512
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowGlucoseValueMgDl:I

    .line 513
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HysteresisValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHysteresisLowPredictiveGlucoseValueMgDl(I)V
    .locals 2

    .line 530
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowPredictiveGlucoseValueMgDl:I

    .line 531
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HysteresisPredictiveValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsBluetoothEnabled(Z)V
    .locals 0

    .line 730
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled:Z

    return-void
.end method

.method public setIsGlucoseStale(Z)V
    .locals 2

    .line 1959
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseStale:Z

    .line 1960
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IsGlucoseStale"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1961
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setKeepAliveAlertActive(Z)V
    .locals 2

    .line 1949
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->keepAliveAlertActive:Z

    .line 1950
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KeepAliveAlertActive"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1951
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setLastCalibrationDateAndTime(Ljava/util/Calendar;)V
    .locals 4

    .line 1055
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    if-nez p1, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastCalibration"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastCalibration"

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1065
    :goto_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedLastCalibrationDateTimeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedLastCalibrationDateTimeEvent;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1066
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setLastGlucoseSyncedMaxRecordTimestamp(J)V
    .locals 2

    .line 424
    iput-wide p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastGlucoseSyncedMaxRecordTimestamp:J

    .line 425
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastGlucoseSyncedMaxRecordTimestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastReadTransmitterDatetimeTimestamp(J)V
    .locals 2

    .line 415
    iput-wide p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastReadTransmitterDatetimeTimestamp:J

    .line 416
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastReadTransmitterDatetimeTimestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setLinkedSensorId(Ljava/lang/String;)V
    .locals 2

    .line 1419
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->linkedSensorId:Ljava/lang/String;

    .line 1420
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SensorId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1421
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1422
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->linkedSensorId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setLowGlucoseAlarmRepeatIntervalDayTime(I)V
    .locals 3

    .line 1885
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    .line 1886
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LowGlucoseAlarmRepeatIntervalDayTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "NewRegisters"

    .line 1887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Low Day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedLowGlucoseAlarmRepeatIntervalDayTimeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedLowGlucoseAlarmRepeatIntervalDayTimeEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setLowGlucoseAlarmRepeatIntervalNightTime(I)V
    .locals 2

    .line 1896
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    .line 1897
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LowGlucoseAlarmRepeatIntervalNightTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "NewRegisters"

    .line 1898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Low Night:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLowGlucoseAlarmThreshold(I)V
    .locals 4

    .line 1519
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "#3640_2"

    .line 1520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLowGlucoseAlarmThreshold shouldRefreshGraph?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    .line 1523
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "glucoseAlarmLow"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1526
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/ModelChangedLowAlarmThresholdEvent;

    invoke-direct {v2, p1}, Lcom/senseonics/events/ModelChangedLowAlarmThresholdEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1528
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    if-eqz v0, :cond_1

    .line 1531
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    .line 1534
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setLowGlucoseTarget(I)V
    .locals 4

    .line 1465
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "#3640_2"

    .line 1466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLowGlucoseTarget shouldRefreshGraph?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    .line 1469
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "glucoseTargetLow"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1472
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/ModelChangedLowTargetThresholdEvent;

    invoke-direct {v2, p1}, Lcom/senseonics/events/ModelChangedLowTargetThresholdEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1474
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    if-eqz v0, :cond_1

    .line 1477
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    .line 1480
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setMEPSavedDriftMetric(F)V
    .locals 2

    .line 1783
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    .line 1784
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedDriftMetric"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "NewRegisters"

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEP Saved Drift Metric:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMEPSavedLowRefMetric(F)V
    .locals 2

    .line 1793
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    .line 1794
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedLowRefMetric"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "NewRegisters"

    .line 1795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEP Saved Low Ref Metric:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMEPSavedRefChannelMetric(F)V
    .locals 2

    .line 1773
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    .line 1774
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedRefChannelMetric"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "NewRegisters"

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEP Saved Ref Channel Metric:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMEPSavedSpike(F)V
    .locals 2

    .line 1803
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    .line 1804
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedSpike"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "NewRegisters"

    .line 1805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEP Saved Spike:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMEPSavedValue(F)V
    .locals 2

    .line 1763
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    .line 1764
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "NewRegisters"

    .line 1765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEP Saved Value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMaxCalibrationThreshold(I)V
    .locals 2

    .line 990
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->maxCalibrationThreshold:I

    .line 991
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MaxCalibrationThreshold"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMaxSyncedAlertRecord(I)V
    .locals 3

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** setMaxSyncedAlertRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedAlertRecord:I

    .line 478
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MaxSyncedAlertRecord"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMaxSyncedBloodGlucoseRecord(I)V
    .locals 3

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** setMaxSyncedBloodGlucoseRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedBloodGlucoseRecord:I

    .line 488
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MaxSyncedBloodGlucoseRecord"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMaxSyncedSensorRecord(I)V
    .locals 3

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** setMaxSyncedSensorRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedSensorRecord:I

    .line 468
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MaxSyncedSensorRecord"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMinCalibrationThreshold(I)V
    .locals 2

    .line 981
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->minCalibrationThreshold:I

    .line 982
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MinCalibrationThreshold"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMinutesAfterNextCalibrationTime(I)V
    .locals 0

    .line 965
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesAfterNextCalibrationTime:I

    return-void
.end method

.method public setMinutesBeforeNextCalibrationTime(I)V
    .locals 0

    .line 957
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesBeforeNextCalibrationTime:I

    return-void
.end method

.method public setMinutesRemainingUntilCalibrationAllowed(I)V
    .locals 0

    .line 973
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesRemainingUntilCalibrationAllowed:I

    return-void
.end method

.method public setMorningCalibrationLocalTimeHour(I)V
    .locals 2

    .line 1726
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeHour:I

    .line 1727
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MorningCalLocalHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMorningCalibrationLocalTimeMinute(I)V
    .locals 2

    .line 1735
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeMinute:I

    .line 1736
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MorningCalLocalMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMorningCalibrationTimeHour(I)V
    .locals 2

    .line 1677
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeHour:I

    .line 1678
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MorningCalHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1679
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1680
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setMorningCalibrationTimeMinute(I)V
    .locals 2

    .line 1688
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeMinute:I

    .line 1689
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MorningCalMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1690
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1691
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setMostRecentGlucoseRegisterValue(I)V
    .locals 0

    .line 1147
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseRegisterValue:I

    return-void
.end method

.method public setNextScheduledCalibration(Ljava/util/Calendar;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    return-void
.end method

.method public setNextScheduledCalibrationDateOnly([I)V
    .locals 5

    const/4 v0, 0x0

    .line 934
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 935
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    goto :goto_0

    .line 937
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 939
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :cond_1
    const-string v4, "GMT"

    .line 941
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 942
    aget v4, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 943
    aget v4, p1, v3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 944
    aget p1, p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 945
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 946
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 947
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 948
    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public setNightStartTimeHour(I)V
    .locals 2

    .line 1844
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    .line 1845
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NightStartTimeHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "NewRegisters"

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Night Start Time Hour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNightStartTimeMinute(I)V
    .locals 2

    .line 1854
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    .line 1855
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NightStartTimeMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "NewRegisters"

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Night Start Time Minute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPlacementModeInProgress(Z)V
    .locals 1

    .line 1191
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->placementModeInProgress:Z

    .line 1192
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->placementModeInProgress:Z

    .line 1194
    iget-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->placementModeInProgress:Z

    if-eq v0, p1, :cond_0

    .line 1195
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    :cond_0
    return-void
.end method

.method public setPredictiveAlertsActivated(Z)V
    .locals 2

    .line 1553
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveAlertsActivated:Z

    .line 1554
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1555
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1556
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setPredictiveFallingRateAlertMinuteInterval(I)V
    .locals 2

    .line 1586
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveFallingRateAlertMinuteInterval:I

    .line 1587
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveMinutes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1588
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1589
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setPredictiveHighAlertsActivated(Z)V
    .locals 2

    .line 1575
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveHighAlertsActivated:Z

    .line 1576
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveHighAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1577
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1578
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setPredictiveLowAlertsActivated(Z)V
    .locals 2

    .line 1564
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveLowAlertsActivated:Z

    .line 1565
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveLowAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1566
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1567
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setPredictiveRisingRateAlertMinuteInterval(I)V
    .locals 2

    .line 1597
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveRisingRateAlertMinuteInterval:I

    .line 1598
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveRisingMinutes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1599
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1600
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateAlertFallingThreshold(F)V
    .locals 2

    .line 1608
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertFallingThreshold:F

    .line 1609
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateAlertValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1610
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1611
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateAlertRisingThreshold(F)V
    .locals 2

    .line 1619
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertRisingThreshold:F

    .line 1620
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateAlertRisingValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1621
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1622
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateAlertsActivated(Z)V
    .locals 2

    .line 1630
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertsActivated:Z

    .line 1631
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1632
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1633
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateFallingAlertsActivated(Z)V
    .locals 2

    .line 1641
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateFallingAlertsActivated:Z

    .line 1642
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateFallingAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1643
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1644
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateRisingAlertsActivated(Z)V
    .locals 2

    .line 1652
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateRisingAlertsActivated:Z

    .line 1653
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateRisingAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1654
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1655
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;I)V
    .locals 1

    .line 1909
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1939
    :pswitch_0
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue8:I

    goto :goto_0

    .line 1935
    :pswitch_1
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue7:I

    goto :goto_0

    .line 1931
    :pswitch_2
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue6:I

    goto :goto_0

    .line 1927
    :pswitch_3
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue5:I

    goto :goto_0

    .line 1923
    :pswitch_4
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue4:I

    goto :goto_0

    .line 1919
    :pswitch_5
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue3:I

    goto :goto_0

    .line 1915
    :pswitch_6
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue2:I

    goto :goto_0

    .line 1911
    :pswitch_7
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue1:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public setReadyForCalibrationState(I)V
    .locals 0

    .line 922
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->readyForCalibrationState:I

    return-void
.end method

.method public setSamplingIntervalInSeconds(I)V
    .locals 2

    .line 1296
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    .line 1297
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefSamplingInterval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSensorGlucoseAlertStatus([I)V
    .locals 2

    .line 1986
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseAlertStatus:[I

    .line 1987
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    const-string v1, "SensorGlucoseAlertStatus"

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->saveSensorGlucoseAlertStatus(Ljava/lang/String;[I)V

    return-void
.end method

.method public setSensorGlucoseRecordRange(Lcom/senseonics/util/Range;)V
    .locals 3

    .line 434
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

    .line 435
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SensorGlucoseRecordRangeFrom"

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 436
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SensorGlucoseRecordRangeTo"

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getTo()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSensorInsertionDateAndTime(Ljava/util/Calendar;)V
    .locals 4

    .line 688
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    if-nez p1, :cond_0

    .line 691
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "SensorInsertionDateTime"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SensorInsertionDateTime"

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    const-string p1, "Insertion Debug"

    const-string v0, "fire change event"

    .line 697
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 699
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedSensorInsertDateTimeEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedSensorInsertDateTimeEvent;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setSensorInsertionDateOnly([I)V
    .locals 5

    const/4 v0, 0x0

    .line 703
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 704
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    .line 705
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "SensorInsertionDateTime"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 709
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :cond_1
    const-string v4, "GMT"

    .line 712
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 713
    aget v4, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 714
    aget v4, p1, v3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 715
    aget p1, p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 716
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 717
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 718
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const-string p1, "Insertion Debug"

    const-string v0, "set date only"

    .line 720
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public setSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 1095
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setStartCalibrationPhaseDateAndTime(Ljava/util/Calendar;)V
    .locals 3

    .line 853
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    if-nez p1, :cond_0

    .line 856
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "CalibrationStartDate"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 859
    :cond_0
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "CalibrationStartDate"

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 862
    :goto_0
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedStartPhaseCalibrationDateTimeEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedStartPhaseCalibrationDateTimeEvent;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 863
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setSupportForDelayBLEDisconnectionAlarm(Z)V
    .locals 2

    .line 1387
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForDelayBLEDisconnectionAlarm:Z

    .line 1388
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SupportForDelayBLEDisconnectionAlarm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1389
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1390
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/SupportDisconnectMinuteSettingEvent;

    invoke-direct {v0}, Lcom/senseonics/events/SupportDisconnectMinuteSettingEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setSupportForHighGluAlarmPredRateHighLowSettings(Z)V
    .locals 2

    .line 1663
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForHighGluAlarmPredRateHighLowSettings:Z

    .line 1664
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "supportForHighGluAlarmPredRateHighLowSettings"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1665
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1666
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/SupportForHighGluAlarmPredRateHighLowSettingsEvent;

    invoke-direct {v0}, Lcom/senseonics/events/SupportForHighGluAlarmPredRateHighLowSettingsEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setTransmitterAddress(Ljava/lang/String;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    .line 752
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->updateTransmitterAddressInPreference()V

    return-void
.end method

.method public setTransmitterConnectionState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-void
.end method

.method public setTransmitterModelNumber(Ljava/lang/String;)V
    .locals 3

    .line 771
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterModelNumber:Ljava/lang/String;

    .line 772
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ModelNumber"

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterModelNumber:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 773
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedTransmitterModelNoEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedTransmitterModelNoEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 774
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setTransmitterName(Ljava/lang/String;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    .line 743
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->updateTransmitterNameInPreference()V

    return-void
.end method

.method public setTransmitterSerialNumber(Ljava/lang/String;)V
    .locals 2

    .line 760
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    .line 761
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "TransmitterSerialNumber"

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 762
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedTransmitterSerialNumberEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedTransmitterSerialNumberEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 763
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setTransmitterTime(J)V
    .locals 2

    .line 832
    iput-wide p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterTime:J

    .line 833
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "TransmitterTime"

    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterTime:J

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTransmitterVersionExtensionNumber(Ljava/lang/String;)V
    .locals 2

    .line 823
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionExtensionNumber:Ljava/lang/String;

    .line 824
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ExtensionNumber"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTransmitterVersionNumber(Ljava/lang/String;)V
    .locals 3

    .line 816
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionNumber:Ljava/lang/String;

    .line 817
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FirmwareVersion"

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionNumber:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 818
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedTransmitterFirmwareVersionEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedTransmitterFirmwareVersionEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 819
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setUnLinkedSensorId(Ljava/lang/String;)V
    .locals 2

    .line 1430
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->unLinkedSensorId:Ljava/lang/String;

    .line 1431
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UnlinkedSensorId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1432
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1433
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedUnLinkedSensorIdEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->unLinkedSensorId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedUnLinkedSensorIdEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setVibrateMode(Z)V
    .locals 2

    .line 1406
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->vibrateMode:Z

    .line 1407
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "VibrationMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1408
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1409
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedVibrateModeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedVibrateModeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setlastCalibrationDateOnly([I)V
    .locals 5

    const/4 v0, 0x0

    .line 1070
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 1071
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    .line 1072
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "LastCalibration"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1074
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 1076
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :cond_1
    const-string v4, "GMT"

    .line 1078
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1079
    aget v4, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1080
    aget v4, p1, v3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 1081
    aget p1, p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 1082
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 1083
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 1084
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 1085
    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public startCountDownTimer(J)V
    .locals 2

    .line 615
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 616
    new-instance v1, Lcom/senseonics/model/TransmitterStateModel$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/senseonics/model/TransmitterStateModel$1;-><init>(Lcom/senseonics/model/TransmitterStateModel;J)V

    .line 630
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
