.class public enum Lcom/senseonics/util/TransmitterMessageCode;
.super Ljava/lang/Enum;
.source "TransmitterMessageCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/TransmitterMessageCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum CalibrationExpiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum CalibrationFailedAlert:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum CalibrationGracePeriodAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum CalibrationNowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum CalibrationRequiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum CalibrationSuspiciousAlert:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum EDRAlarm0:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum EDRAlarm1:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum EDRAlarm2:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum EDRAlarm3:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum EDRAlarm4:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum EmptyBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum HighAmbientLightAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum InvalidClockAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum LowBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum MEPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field private static final NOTIFICATION_ID_CALIBRATION:I

.field private static final NOTIFICATION_ID_DATA_UNAVAILABLE:I

.field public static final NOTIFICATION_ID_MEMBER_REMOVED:I

.field public static final NOTIFICATION_ID_TEMP_PROFILE_TURNED_OFF:I

.field public static final enum NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum ReaderTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum Reserved:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum Reserved2:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum Reserved3:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorAgedOutAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorErrorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorLowTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorOnHoldAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorRetiringSoon1Alarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorRetiringSoon2Alarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorRetiringSoon3Alarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorRetiringSoon4Alarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorRetiringSoon5Alarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorRetiringSoon6Alarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorRetiringSoon7Alarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorStability:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SensorTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum TransmitterDisconnected:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum TransmitterGlucoseStale:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum TransmitterKeepAliveNotReceived:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum TransmitterReconnected:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum VeryLowBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field public static final enum VibrationCurrentAlarm:Lcom/senseonics/util/TransmitterMessageCode;

.field private static lookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/senseonics/util/TransmitterMessageCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backgroundImage:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private canBlindGlucose:Z

.field private codeID:I

.field private eventType:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field private help:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private icon:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private isCritical:Z

.field private message:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private rightButtonText:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private title:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private titleEN:Ljava/lang/String;

.field private type:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private whiteIcon:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 22
    new-instance v17, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v2, "CriticalFaultAlarm"

    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v11, "Transmitter Error"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0x7f080193

    const v7, 0x7f080194

    const v8, 0x7f0800c6

    const v9, 0x7f0f0023

    const v10, 0x7f0f026b

    const/4 v12, 0x1

    const v13, 0x7f0f026a

    const v14, 0x7f0f0269

    const v15, 0x7f0f008a

    const/16 v16, 0x1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v17, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 37
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "SensorRetiredAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Sensor Replacement"

    const/16 v20, 0x1

    const/16 v22, 0x1

    const v23, 0x7f080193

    const v24, 0x7f080194

    const v25, 0x7f0800c6

    const v26, 0x7f0f0023

    const v27, 0x7f0f0208

    const/16 v29, 0x1

    const v30, 0x7f0f0207

    const v31, 0x7f0f0206

    const/16 v32, -0x1

    const/16 v33, 0x1

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 52
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "EmptyBatteryAlarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Battery Empty"

    const/4 v4, 0x2

    const/4 v6, 0x2

    const v7, 0x7f080193

    const v8, 0x7f080078

    const v9, 0x7f0800bc

    const v10, 0x7f0f0023

    const v11, 0x7f0f00d9

    const/4 v13, 0x1

    const v14, 0x7f0f00d8

    const v15, 0x7f0f00d7

    const/16 v16, -0x1

    const/16 v17, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->EmptyBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 67
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "SensorTemperatureAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "High Sensor Temperature"

    const/16 v20, 0x3

    const/16 v22, 0x3

    const v27, 0x7f0f01fa

    const v30, 0x7f0f01f9

    const v31, 0x7f0f0200

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 82
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "SensorLowTemperatureAlarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Low Sensor Temperature"

    const/4 v4, 0x4

    const/4 v6, 0x4

    const v8, 0x7f080194

    const v9, 0x7f0800c6

    const v11, 0x7f0f0202

    const v14, 0x7f0f0201

    const v15, 0x7f0f0200

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorLowTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 97
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "ReaderTemperatureAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "High Transmitter Temperature"

    const/16 v20, 0x5

    const/16 v22, 0x5

    const v27, 0x7f0f026e

    const v30, 0x7f0f026d

    const v31, 0x7f0f026c

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->ReaderTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 112
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "SensorAwolAlarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "No Sensor Detected"

    const/4 v4, 0x6

    const/4 v6, 0x6

    const v11, 0x7f0f018c

    const v14, 0x7f0f018a

    const v15, 0x7f0f018a

    const v16, 0x7f0f01b6

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 127
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "SensorErrorAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Sensor Hardware Error"

    const/16 v20, 0x7

    const/16 v22, 0x7

    const v27, 0x7f0f01f8

    const v30, 0x7f0f01f7

    const v31, 0x7f0f01f6

    const v32, 0x7f0f008a

    const/16 v33, 0x0

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorErrorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 142
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "InvalidSensorAlarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "New Sensor Detected"

    const/16 v4, 0x8

    const/16 v6, 0x8

    const v7, 0x7f08007c

    const v8, 0x7f08007d

    const v10, 0x7f0f0198

    const v11, 0x7f0f0181

    const v14, 0x7f0f0180

    const v15, 0x7f0f017f

    const v16, 0x7f0f0146

    const/16 v17, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 157
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "HighAmbientLightAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "High Ambient Light"

    const/16 v20, 0x9

    const/16 v22, 0x9

    const v27, 0x7f0f0117

    const v30, 0x7f0f0116

    const v31, 0x7f0f0115

    const/16 v32, -0x1

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighAmbientLightAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 172
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "Reserved"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Unknown Code: %d"

    const/16 v4, 0xa

    const/16 v6, 0xa

    const v7, 0x7f080193

    const v8, 0x7f0800a6

    const v9, 0x7f0800c2

    const v10, 0x7f0f027a

    const v11, 0x7f0f027d

    const/4 v13, 0x0

    const v14, 0x7f0f027c

    const v15, 0x7f0f027f

    const/16 v16, -0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->Reserved:Lcom/senseonics/util/TransmitterMessageCode;

    .line 187
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode$1;

    const-string v19, "CalibrationRequiredAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Calibrate Now"

    const/16 v20, 0xb

    const/16 v22, 0xb

    const v23, 0x7f08007c

    const v24, 0x7f0800e6

    const v25, 0x7f0800bf

    const v26, 0x7f0f0198

    const v27, 0x7f0f0068

    const/16 v29, 0x0

    const v30, 0x7f0f0067

    const v31, 0x7f0f0066

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode$1;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationRequiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 207
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "SeriouslyLowAlarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Out of Range Low Glucose"

    const/16 v4, 0xc

    const/16 v6, 0xc

    const v8, 0x7f080064

    const v9, 0x7f0800b9

    const v10, 0x7f0f0023

    const v11, 0x7f0f01a7

    const/4 v13, 0x1

    const v14, 0x7f0f01a6

    const v15, 0x7f0f01a5

    const/16 v17, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 222
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "SeriouslyHighAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Out of Range High Glucose"

    const/16 v20, 0xd

    const/16 v22, 0xd

    const v23, 0x7f080193

    const v24, 0x7f080064

    const v25, 0x7f0800b9

    const v26, 0x7f0f0023

    const v27, 0x7f0f01a4

    const/16 v29, 0x1

    const v30, 0x7f0f01a3

    const v31, 0x7f0f01a2

    const/16 v33, 0x1

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 237
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "LowGlucoseAlarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Low Glucose"

    .line 247
    invoke-static {}, Lcom/senseonics/util/TransmitterMessageCode;->getDescriptionIDForLowGlucoseAlarm()I

    move-result v14

    const/16 v4, 0xe

    const/16 v6, 0xe

    const v11, 0x7f0f0158

    const/4 v13, 0x0

    const v15, 0x7f0f0155

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 252
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "HighGlucoseAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "High Glucose"

    .line 262
    invoke-static {}, Lcom/senseonics/util/TransmitterMessageCode;->getDescriptionIDForHighGlucoseAlarm()I

    move-result v30

    const/16 v20, 0xf

    const/16 v22, 0xf

    const v27, 0x7f0f011b

    const/16 v29, 0x0

    const v31, 0x7f0f0118

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 267
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "LowGlucoseAlert"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Low Glucose"

    const/16 v4, 0x10

    const/16 v6, 0x10

    const v11, 0x7f0f015b

    const v14, 0x7f0f015a

    const v15, 0x7f0f0159

    const/16 v17, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    .line 282
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "HighGlucoseAlert"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "High Glucose"

    const/16 v20, 0x11

    const/16 v22, 0x11

    const v27, 0x7f0f011e

    const v30, 0x7f0f011d

    const v31, 0x7f0f011c

    const/16 v33, 0x0

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    .line 297
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "PredictiveLowAlarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Predicted Low Glucose"

    .line 307
    invoke-static {}, Lcom/senseonics/util/TransmitterMessageCode;->getDescriptionIDForPredictiveLowAlarm()I

    move-result v14

    const/16 v4, 0x12

    const/16 v6, 0x12

    const v8, 0x7f080061

    const v9, 0x7f0800b8

    const v11, 0x7f0f01c7

    const v15, 0x7f0f01c4

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 312
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "PredictiveHighAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Predicted High Glucose"

    .line 322
    invoke-static {}, Lcom/senseonics/util/TransmitterMessageCode;->getDescriptionIDForPredictiveHighAlarm()I

    move-result v30

    const/16 v20, 0x13

    const/16 v22, 0x13

    const v24, 0x7f080065

    const v25, 0x7f0800ba

    const v27, 0x7f0f01c3

    const v31, 0x7f0f01c0

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 327
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "RateFallingAlarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Rate Falling"

    sget-object v2, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 337
    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getDescriptionIDForRateFallingAlarm(Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)I

    move-result v14

    const/16 v4, 0x14

    const/16 v6, 0x14

    const v11, 0x7f0f01d9

    const v15, 0x7f0f01d6

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 342
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "RateRisingAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Rate Rising"

    sget-object v2, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 352
    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getDescriptionIDForRateRisingAlarm(Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)I

    move-result v30

    const/16 v20, 0x15

    const/16 v22, 0x15

    const v27, 0x7f0f01e1

    const v31, 0x7f0f01de

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 357
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode$2;

    const-string v3, "CalibrationGracePeriodAlarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Calibration Past Due"

    const/16 v4, 0x16

    const/16 v6, 0x16

    const v8, 0x7f0800e9

    const v9, 0x7f0800bf

    const v11, 0x7f0f0073

    const/4 v13, 0x1

    const v14, 0x7f0f0072

    const v15, 0x7f0f0071

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode$2;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationGracePeriodAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 377
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode$3;

    const-string v19, "CalibrationExpiredAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Calibration Expired"

    const/16 v20, 0x17

    const/16 v22, 0x17

    const v24, 0x7f0800e9

    const v25, 0x7f0800bf

    const v27, 0x7f0f006e

    const/16 v29, 0x1

    const v30, 0x7f0f006d

    const v31, 0x7f0f006c

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode$3;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationExpiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 397
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "SensorRetiringSoon1Alarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Sensor Replacement"

    const/16 v4, 0x18

    const/16 v6, 0x18

    const v7, 0x7f08007c

    const v8, 0x7f08007d

    const v9, 0x7f0800c6

    const v10, 0x7f0f0198

    const v11, 0x7f0f0210

    const/4 v13, 0x0

    const v14, 0x7f0f020f

    const v15, 0x7f0f020e

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon1Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 412
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "SensorRetiringSoon2Alarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Sensor Replacement"

    const/16 v20, 0x19

    const/16 v22, 0x19

    const v23, 0x7f08007c

    const v24, 0x7f08007d

    const v25, 0x7f0800c6

    const v26, 0x7f0f0198

    const v27, 0x7f0f0212

    const/16 v29, 0x0

    const v30, 0x7f0f0211

    const v31, 0x7f0f020e

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon2Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 427
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "SensorRetiringSoon3Alarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Sensor Replacement"

    const/16 v4, 0x1a

    const/16 v6, 0x1a

    const v11, 0x7f0f0216

    const v14, 0x7f0f0215

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon3Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 442
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "SensorRetiringSoon4Alarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Sensor Replacement"

    const/16 v20, 0x1b

    const/16 v22, 0x1b

    const v27, 0x7f0f0218

    const v30, 0x7f0f0217

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon4Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 457
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "SensorRetiringSoon5Alarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Sensor Replacement"

    const/16 v4, 0x1c

    const/16 v6, 0x1c

    const v11, 0x7f0f020d

    const v14, 0x7f0f020c

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon5Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 472
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "SensorRetiringSoon6Alarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Sensor Replacement"

    const/16 v20, 0x1d

    const/16 v22, 0x1d

    const v27, 0x7f0f0214

    const v30, 0x7f0f0213

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon6Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 487
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "SensorRetiringSoon7Alarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Sensor Replacement"

    const/16 v4, 0x1e

    const/16 v6, 0x1e

    const v7, 0x7f080193

    const v8, 0x7f080194

    const v10, 0x7f0f0023

    const v11, 0x7f0f020a

    const/4 v13, 0x1

    const v14, 0x7f0f0209

    const v15, 0x7f0f020b

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon7Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 502
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "VeryLowBatteryAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Charge Transmitter"

    .line 515
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isVeryLowBatteryAlarmCritical()Z

    move-result v33

    const/16 v20, 0x1f

    const/16 v22, 0x1f

    const v23, 0x7f080193

    const v24, 0x7f080077

    const v25, 0x7f0800bd

    const v26, 0x7f0f0023

    const v27, 0x7f0f0289

    const v30, 0x7f0f0288

    const v31, 0x7f0f0287

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->VeryLowBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 517
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "LowBatteryAlarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Charge Transmitter"

    const/16 v4, 0x20

    const/16 v6, 0x20

    const v7, 0x7f08007c

    const v8, 0x7f080074

    const v9, 0x7f0800be

    const v10, 0x7f0f0198

    const v11, 0x7f0f0154

    const/4 v13, 0x0

    const v14, 0x7f0f0153

    const v15, 0x7f0f0152

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 532
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "InvalidClockAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Invalid Transmitter Time"

    const/16 v20, 0x21

    const/16 v22, 0x21

    const v23, 0x7f08007c

    const v24, 0x7f08007d

    const v25, 0x7f0800c6

    const v26, 0x7f0f0198

    const v27, 0x7f0f01bf

    const v30, 0x7f0f01be

    const v31, 0x7f0f01bd

    const/16 v33, 0x0

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->InvalidClockAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 547
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "SensorStability"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Sensor Check"

    const/16 v4, 0x22

    const/16 v6, 0x22

    const v7, 0x7f080193

    const v8, 0x7f080194

    const v9, 0x7f0800c6

    const v10, 0x7f0f0023

    const v11, 0x7f0f01fd

    const/4 v13, 0x1

    const v14, 0x7f0f01fc

    const v15, 0x7f0f01fb

    const v16, 0x7f0f0065

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorStability:Lcom/senseonics/util/TransmitterMessageCode;

    .line 562
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "TransmitterDisconnected"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Transmitter Disconnected"

    const/16 v20, 0x23

    const/16 v22, 0x23

    const v23, 0x7f080193

    const v24, 0x7f080194

    const v26, 0x7f0f0023

    const v27, 0x7f0f0267

    const v30, 0x7f0f0266

    const v31, 0x7f0f0266

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterDisconnected:Lcom/senseonics/util/TransmitterMessageCode;

    .line 577
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "VibrationCurrentAlarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Vibration Motor"

    const/16 v4, 0x24

    const/16 v6, 0x24

    const v11, 0x7f0f028c

    const/4 v13, 0x0

    const v14, 0x7f0f028b

    const v15, 0x7f0f028a

    const/16 v16, -0x1

    const/16 v17, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->VibrationCurrentAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 592
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "SensorAgedOutAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Sensor Replacement"

    const/16 v20, 0x25

    const/16 v22, 0x25

    const v27, 0x7f0f0218

    const v30, 0x7f0f0219

    const v31, 0x7f0f021a

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAgedOutAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 607
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "SensorOnHoldAlarm"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Sensor Suspend"

    const/16 v4, 0x26

    const/16 v6, 0x26

    const v11, 0x7f0f0205

    const/4 v13, 0x1

    const v14, 0x7f0f0204

    const v15, 0x7f0f0203

    const/16 v17, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorOnHoldAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 622
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "MEPAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Sensor Replacement"

    const/16 v20, 0x27

    const/16 v22, 0x27

    const v27, 0x7f0f0208

    const/16 v29, 0x1

    const v30, 0x7f0f0207

    const v31, 0x7f0f0206

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->MEPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 637
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "EDRAlarm0"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Sensor Status"

    const/16 v4, 0x28

    const/16 v6, 0x28

    const v11, 0x7f0f021f

    const/4 v13, 0x0

    const v14, 0x7f0f021b

    const v15, 0x7f0f021b

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm0:Lcom/senseonics/util/TransmitterMessageCode;

    .line 652
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "EDRAlarm1"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Sensor Status"

    const/16 v20, 0x29

    const/16 v22, 0x29

    const v27, 0x7f0f021f

    const/16 v29, 0x0

    const v30, 0x7f0f021c

    const v31, 0x7f0f021c

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm1:Lcom/senseonics/util/TransmitterMessageCode;

    .line 667
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "EDRAlarm2"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Sensor Status"

    const/16 v4, 0x2a

    const/16 v6, 0x2a

    const v7, 0x7f08007c

    const v8, 0x7f08007d

    const v10, 0x7f0f0198

    const v14, 0x7f0f021d

    const v15, 0x7f0f021d

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm2:Lcom/senseonics/util/TransmitterMessageCode;

    .line 682
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "EDRAlarm3"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Sensor Status"

    const/16 v20, 0x2b

    const/16 v22, 0x2b

    const v23, 0x7f08007c

    const v24, 0x7f08007d

    const v26, 0x7f0f0198

    const v30, 0x7f0f021e

    const v31, 0x7f0f021e

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm3:Lcom/senseonics/util/TransmitterMessageCode;

    .line 697
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "EDRAlarm4"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Estimated Days Remaining"

    const/16 v4, 0x2c

    const/16 v6, 0x2c

    const v7, 0x7f080193

    const v8, 0x7f0800e0

    const v9, 0x7f0800c3

    const v10, 0x7f0f0023

    const v11, 0x7f0f00dc

    const v14, 0x7f0f00db

    const v15, 0x7f0f00ad

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm4:Lcom/senseonics/util/TransmitterMessageCode;

    .line 712
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "Reserved2"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Unknown Code: %d"

    const/16 v20, 0x2d

    const/16 v22, 0x2d

    const v23, 0x7f080193

    const v24, 0x7f0800a6

    const v25, 0x7f0800c2

    const v26, 0x7f0f027a

    const v27, 0x7f0f027d

    const v30, 0x7f0f027c

    const v31, 0x7f0f027f

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->Reserved2:Lcom/senseonics/util/TransmitterMessageCode;

    .line 727
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "Reserved3"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Unknown Code: %d"

    const/16 v4, 0x2e

    const/16 v6, 0x2e

    const v8, 0x7f0800a6

    const v9, 0x7f0800c2

    const v10, 0x7f0f027a

    const v11, 0x7f0f027d

    const v14, 0x7f0f027c

    const v15, 0x7f0f027f

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->Reserved3:Lcom/senseonics/util/TransmitterMessageCode;

    .line 742
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode$4;

    const-string v19, "CalibrationFailedAlert"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Calibrate Again"

    const/16 v20, 0x2f

    const/16 v22, 0x2f

    const v23, 0x7f08007c

    const v24, 0x7f0800e6

    const v25, 0x7f0800bf

    const v26, 0x7f0f0198

    const v27, 0x7f0f0070

    const v30, 0x7f0f006f

    const/16 v31, -0x1

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode$4;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationFailedAlert:Lcom/senseonics/util/TransmitterMessageCode;

    .line 762
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode$5;

    const-string v3, "CalibrationSuspiciousAlert"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "New Calibration Needed"

    const/16 v4, 0x30

    const/16 v6, 0x30

    const v7, 0x7f08007c

    const v8, 0x7f0800e6

    const v9, 0x7f0800bf

    const v10, 0x7f0f0198

    const v11, 0x7f0f0076

    const v14, 0x7f0f0075

    const/4 v15, -0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode$5;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationSuspiciousAlert:Lcom/senseonics/util/TransmitterMessageCode;

    .line 782
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode$6;

    const-string v19, "CalibrationNowAlarm"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Calibrate Now"

    const/16 v20, 0x31

    const/16 v22, 0x31

    const v23, 0x7f080193

    const v24, 0x7f0800e9

    const v26, 0x7f0f0023

    const v27, 0x7f0f0068

    const v30, 0x7f0f0074

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode$6;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationNowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 806
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "TransmitterReconnected"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Transmitter Connected"

    const/16 v4, 0x32

    const/16 v6, 0x3e9

    const v7, 0x7f080193

    const v8, 0x7f080194

    const v9, 0x7f0800c6

    const v10, 0x7f0f0023

    const v11, 0x7f0f0264

    const v14, 0x7f0f0263

    const v15, 0x7f0f0263

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterReconnected:Lcom/senseonics/util/TransmitterMessageCode;

    .line 821
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode$7;

    const-string v19, "TransmitterKeepAliveNotReceived"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Data Unavailable"

    const/16 v20, 0x33

    const/16 v22, 0x3ea

    const v24, 0x7f080194

    const v25, 0x7f0800c6

    const v27, 0x7f0f009d

    const/16 v29, 0x1

    const v30, 0x7f0f009c

    const v31, 0x7f0f009b

    const/16 v33, 0x1

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode$7;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterKeepAliveNotReceived:Lcom/senseonics/util/TransmitterMessageCode;

    .line 841
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode$8;

    const-string v3, "TransmitterGlucoseStale"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Data Unavailable"

    const/16 v4, 0x34

    const/16 v6, 0x3eb

    const v11, 0x7f0f009d

    const/4 v13, 0x1

    const v14, 0x7f0f009c

    const v15, 0x7f0f009b

    const/16 v17, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode$8;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterGlucoseStale:Lcom/senseonics/util/TransmitterMessageCode;

    .line 862
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v19, "NoAlarmActive"

    sget-object v21, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v28, "Unknown Code: %d"

    const/16 v20, 0x35

    const/16 v22, 0x4e20

    const v24, 0x7f0800a6

    const v25, 0x7f0800c2

    const v26, 0x7f0f027a

    const v27, 0x7f0f027d

    const/16 v29, 0x0

    const v30, 0x7f0f027c

    const v31, 0x7f0f027f

    const/16 v33, 0x0

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v33}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    .line 877
    new-instance v1, Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "NumberOfMessages"

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "Unknown Code: %d"

    const/16 v4, 0x36

    const/16 v6, 0x7530

    const v8, 0x7f0800a6

    const v9, 0x7f0800c2

    const v10, 0x7f0f027a

    const v11, 0x7f0f027d

    const/4 v13, 0x0

    const v14, 0x7f0f027c

    const v15, 0x7f0f027f

    const/16 v17, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v1, 0x37

    .line 21
    new-array v1, v1, [Lcom/senseonics/util/TransmitterMessageCode;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->EmptyBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorLowTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v6, 0x4

    aput-object v2, v1, v6

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->ReaderTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v6, 0x5

    aput-object v2, v1, v6

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v6, 0x6

    aput-object v2, v1, v6

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorErrorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v6, 0x7

    aput-object v2, v1, v6

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v6, 0x8

    aput-object v2, v1, v6

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->HighAmbientLightAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v6, 0x9

    aput-object v2, v1, v6

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->Reserved:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v6, 0xa

    aput-object v2, v1, v6

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationRequiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v6, 0xb

    aput-object v2, v1, v6

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v7, 0xc

    aput-object v2, v1, v7

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0xd

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0xe

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0xf

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x10

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x11

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x12

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x13

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x14

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x15

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationGracePeriodAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x16

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationExpiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x17

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon1Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x18

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon2Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x19

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon3Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x1a

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon4Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x1b

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon5Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x1c

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon6Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x1d

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon7Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x1e

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->VeryLowBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x1f

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->LowBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x20

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->InvalidClockAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x21

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorStability:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x22

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterDisconnected:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x23

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->VibrationCurrentAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x24

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAgedOutAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x25

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorOnHoldAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x26

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->MEPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x27

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm0:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x28

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm1:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x29

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm2:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x2a

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm3:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x2b

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm4:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x2c

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->Reserved2:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x2d

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->Reserved3:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x2e

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationFailedAlert:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x2f

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationSuspiciousAlert:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x30

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationNowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x31

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterReconnected:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x32

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterKeepAliveNotReceived:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x33

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterGlucoseStale:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x34

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x35

    aput-object v2, v1, v8

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v8, 0x36

    aput-object v2, v1, v8

    sput-object v1, Lcom/senseonics/util/TransmitterMessageCode;->$VALUES:[Lcom/senseonics/util/TransmitterMessageCode;

    .line 956
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v1

    add-int/2addr v1, v4

    sput v1, Lcom/senseonics/util/TransmitterMessageCode;->NOTIFICATION_ID_CALIBRATION:I

    .line 957
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v1

    add-int/2addr v1, v5

    sput v1, Lcom/senseonics/util/TransmitterMessageCode;->NOTIFICATION_ID_DATA_UNAVAILABLE:I

    .line 960
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v1

    add-int/2addr v1, v6

    sput v1, Lcom/senseonics/util/TransmitterMessageCode;->NOTIFICATION_ID_TEMP_PROFILE_TURNED_OFF:I

    .line 961
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v1

    add-int/2addr v1, v7

    sput v1, Lcom/senseonics/util/TransmitterMessageCode;->NOTIFICATION_ID_MEMBER_REMOVED:I

    .line 965
    :try_start_0
    invoke-static {}, Lcom/senseonics/util/TransmitterMessageCode;->values()[Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 966
    new-instance v2, Landroid/util/SparseArray;

    array-length v4, v1

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v2, Lcom/senseonics/util/TransmitterMessageCode;->lookup:Landroid/util/SparseArray;

    .line 968
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 969
    sget-object v5, Lcom/senseonics/util/TransmitterMessageCode;->lookup:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "Error"

    .line 972
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception initializing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V
    .locals 0
    .param p3    # Lcom/senseonics/util/Utils$EVENT_TYPE;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p11    # Z
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p12    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/util/Utils$EVENT_TYPE;",
            "IIIIII",
            "Ljava/lang/String;",
            "ZIIIZ)V"
        }
    .end annotation

    .line 931
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 932
    iput-object p3, p0, Lcom/senseonics/util/TransmitterMessageCode;->eventType:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 933
    iput p4, p0, Lcom/senseonics/util/TransmitterMessageCode;->codeID:I

    .line 934
    iput p5, p0, Lcom/senseonics/util/TransmitterMessageCode;->backgroundImage:I

    .line 935
    iput p6, p0, Lcom/senseonics/util/TransmitterMessageCode;->icon:I

    .line 936
    iput p7, p0, Lcom/senseonics/util/TransmitterMessageCode;->whiteIcon:I

    .line 937
    iput p8, p0, Lcom/senseonics/util/TransmitterMessageCode;->type:I

    .line 938
    iput p9, p0, Lcom/senseonics/util/TransmitterMessageCode;->title:I

    .line 939
    iput-object p10, p0, Lcom/senseonics/util/TransmitterMessageCode;->titleEN:Ljava/lang/String;

    .line 940
    iput-boolean p11, p0, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose:Z

    .line 941
    iput p12, p0, Lcom/senseonics/util/TransmitterMessageCode;->message:I

    .line 942
    iput p13, p0, Lcom/senseonics/util/TransmitterMessageCode;->help:I

    .line 943
    iput p14, p0, Lcom/senseonics/util/TransmitterMessageCode;->rightButtonText:I

    .line 944
    iput-boolean p15, p0, Lcom/senseonics/util/TransmitterMessageCode;->isCritical:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZLcom/senseonics/util/TransmitterMessageCode$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p15}, Lcom/senseonics/util/TransmitterMessageCode;-><init>(Ljava/lang/String;ILcom/senseonics/util/Utils$EVENT_TYPE;IIIIIILjava/lang/String;ZIIIZ)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .line 21
    sget v0, Lcom/senseonics/util/TransmitterMessageCode;->NOTIFICATION_ID_CALIBRATION:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 21
    sget v0, Lcom/senseonics/util/TransmitterMessageCode;->NOTIFICATION_ID_DATA_UNAVAILABLE:I

    return v0
.end method

.method public static fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    .line 977
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->lookup:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/TransmitterMessageCode;

    return-object p0
.end method

.method public static getAlarmEventText(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;II)Ljava/lang/String;
    .locals 1

    .line 1216
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$ALERT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$ALERT_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 1223
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getMessage()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "%d"

    .line 1224
    invoke-static {p0, p2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1218
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getMessage()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%d"

    .line 1219
    invoke-static {p0, p3}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAlarmEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;
    .locals 1

    .line 1191
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$ALERT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$ALERT_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p0, " "

    return-object p0

    .line 1193
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1196
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAlarmEventTitleNotTranslated(Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;
    .locals 1

    .line 1202
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$ALERT_TYPE:[I

    invoke-virtual {p0}, Lcom/senseonics/util/Utils$ALERT_TYPE;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, " "

    return-object p0

    .line 1204
    :pswitch_0
    sget-object p0, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p0}, Lcom/senseonics/util/TransmitterMessageCode;->getTitleEN()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1207
    :pswitch_1
    sget-object p0, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p0}, Lcom/senseonics/util/TransmitterMessageCode;->getTitleEN()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAlertEventText(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;II)Ljava/lang/String;
    .locals 1

    .line 1172
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$ALERT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$ALERT_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 1180
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getMessage()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "%d"

    .line 1181
    invoke-static {p0, p2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1174
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getMessage()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%d"

    .line 1175
    invoke-static {p0, p3}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAlertEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;
    .locals 1

    .line 1147
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$ALERT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$ALERT_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p0, " "

    return-object p0

    .line 1152
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1149
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAlertEventTitleNotTranslated(Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;
    .locals 1

    .line 1158
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$ALERT_TYPE:[I

    invoke-virtual {p0}, Lcom/senseonics/util/Utils$ALERT_TYPE;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, " "

    return-object p0

    .line 1163
    :pswitch_0
    sget-object p0, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p0}, Lcom/senseonics/util/TransmitterMessageCode;->getTitleEN()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1160
    :pswitch_1
    sget-object p0, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p0}, Lcom/senseonics/util/TransmitterMessageCode;->getTitleEN()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDescriptionIDForHighGlucoseAlarm()I
    .locals 1

    const v0, 0x7f0f0119

    return v0
.end method

.method private static getDescriptionIDForLowGlucoseAlarm()I
    .locals 1

    const v0, 0x7f0f0156

    return v0
.end method

.method private static getDescriptionIDForPredictiveHighAlarm()I
    .locals 1

    const v0, 0x7f0f01c1

    return v0
.end method

.method private static getDescriptionIDForPredictiveLowAlarm()I
    .locals 1

    const v0, 0x7f0f01c5

    return v0
.end method

.method private static getDescriptionIDForRateFallingAlarm(Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)I
    .locals 1

    .line 1084
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p0, v0, :cond_0

    const p0, 0x7f0f01d4

    goto :goto_0

    :cond_0
    const p0, 0x7f0f01d7

    :goto_0
    return p0
.end method

.method private static getDescriptionIDForRateRisingAlarm(Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)I
    .locals 1

    .line 1096
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p0, v0, :cond_0

    const p0, 0x7f0f01dc

    goto :goto_0

    :cond_0
    const p0, 0x7f0f01df

    :goto_0
    return p0
.end method

.method public static getHelpString(Landroid/content/Context;Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;
    .locals 4

    .line 1104
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getHelp()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_9

    .line 1109
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v1

    .line 1108
    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->replaceTransmitterNameFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 1113
    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MAX:I

    goto :goto_0

    .line 1114
    :cond_0
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_1

    .line 1115
    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MIN:I

    goto :goto_0

    .line 1116
    :cond_1
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_2

    .line 1117
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v1

    goto :goto_0

    .line 1118
    :cond_2
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_3

    .line 1119
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v1

    goto :goto_0

    .line 1120
    :cond_3
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_4

    .line 1121
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlertThreshold()I

    move-result v1

    goto :goto_0

    .line 1122
    :cond_4
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_5

    .line 1123
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlertThreshold()I

    move-result v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    const-string v3, "%value%"

    .line 1127
    invoke-static {p0, v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 1126
    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%predictiveMins%"

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v3, :cond_6

    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveFallingRateAlertMinuteInterval()I

    move-result v3

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveRisingRateAlertMinuteInterval()I

    move-result v3

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1132
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v0, :cond_7

    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result p1

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertRisingThreshold()F

    move-result p1

    .line 1133
    :goto_2
    sget-object p2, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-ne p2, v0, :cond_8

    .line 1134
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "%.1f %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v2

    const-string p1, "mg/dL/min"

    aput-object p1, v3, v1

    invoke-static {p2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 1136
    :cond_8
    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    .line 1137
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "%.2f %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v2

    const-string p1, "mmol/L/min"

    aput-object p1, v3, v1

    invoke-static {p2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string p2, "%rate%"

    .line 1140
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    return-object v1
.end method

.method public static getPredictiveAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1260
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p0, " "

    return-object p0

    .line 1269
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 1271
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getMessage()I

    move-result p1

    .line 1270
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%d"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1272
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1269
    invoke-static {p0, p3}, Lcom/senseonics/util/Utils;->replaceTransmitterNameFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1262
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 1264
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getMessage()I

    move-result p1

    .line 1263
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%d"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1265
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1262
    invoke-static {p0, p3}, Lcom/senseonics/util/Utils;->replaceTransmitterNameFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPredictiveAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;
    .locals 1

    .line 1234
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p0, " "

    return-object p0

    .line 1239
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1236
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPredictiveAlertTitleNotTranslated(Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;
    .locals 1

    .line 1247
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p0}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, " "

    return-object p0

    .line 1252
    :pswitch_0
    sget-object p0, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p0}, Lcom/senseonics/util/TransmitterMessageCode;->getTitleEN()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1249
    :pswitch_1
    sget-object p0, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p0}, Lcom/senseonics/util/TransmitterMessageCode;->getTitleEN()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRateAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;FLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1308
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f0f0171

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f0f016a

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1310
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v4, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p1, v4, :cond_0

    .line 1311
    sget-object p1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 1313
    invoke-static {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getDescriptionIDForRateFallingAlarm(Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1312
    invoke-static {p1, p3}, Lcom/senseonics/util/Utils;->replaceTransmitterNameFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "%.1f"

    .line 1315
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%@"

    .line 1316
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1317
    :cond_0
    sget-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v4, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p1, v4, :cond_1

    .line 1318
    sget-object p1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 1320
    invoke-static {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getDescriptionIDForRateFallingAlarm(Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1319
    invoke-static {p1, p3}, Lcom/senseonics/util/Utils;->replaceTransmitterNameFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "%.2f"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v2, v2, [Ljava/lang/Object;

    .line 1325
    invoke-static {p2}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, v1

    .line 1324
    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1322
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%@"

    .line 1326
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1330
    :cond_1
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v4, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p1, v4, :cond_2

    .line 1331
    sget-object p1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 1333
    invoke-static {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getDescriptionIDForRateRisingAlarm(Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1332
    invoke-static {p1, p3}, Lcom/senseonics/util/Utils;->replaceTransmitterNameFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "%.1f"

    .line 1335
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%@"

    .line 1336
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1337
    :cond_2
    sget-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v3, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p1, v3, :cond_3

    .line 1338
    sget-object p1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 1340
    invoke-static {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getDescriptionIDForRateRisingAlarm(Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1339
    invoke-static {p1, p3}, Lcom/senseonics/util/Utils;->replaceTransmitterNameFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "%.2f"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v2, v2, [Ljava/lang/Object;

    .line 1345
    invoke-static {p2}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, v1

    .line 1344
    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1342
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%@"

    .line 1346
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const-string p0, " "

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getRateAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;
    .locals 1

    .line 1282
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p0, " "

    return-object p0

    .line 1287
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1284
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRateAlertTitleNotTranslated(Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;
    .locals 1

    .line 1295
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode$9;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p0}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, " "

    return-object p0

    .line 1300
    :pswitch_0
    sget-object p0, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p0}, Lcom/senseonics/util/TransmitterMessageCode;->getTitleEN()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1297
    :pswitch_1
    sget-object p0, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {p0}, Lcom/senseonics/util/TransmitterMessageCode;->getTitleEN()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    .line 21
    const-class v0, Lcom/senseonics/util/TransmitterMessageCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/TransmitterMessageCode;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    .line 21
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->$VALUES:[Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0}, [Lcom/senseonics/util/TransmitterMessageCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/TransmitterMessageCode;

    return-object v0
.end method


# virtual methods
.method public canBlindGlucose()Z
    .locals 1

    .line 1014
    iget-boolean v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose:Z

    return v0
.end method

.method public getBackgroundImage()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .line 986
    iget v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->backgroundImage:I

    return v0
.end method

.method public getCodeID()I
    .locals 1

    .line 981
    iget v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->codeID:I

    return v0
.end method

.method public getECString()Ljava/lang/String;
    .locals 2

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EC #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->eventType:Lcom/senseonics/util/Utils$EVENT_TYPE;

    return-object v0
.end method

.method public getHelp()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 1030
    iget v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->help:I

    return v0
.end method

.method public getIcon()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .line 991
    iget v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->icon:I

    return v0
.end method

.method public getMessage()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 1024
    iget v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->message:I

    return v0
.end method

.method public getRightButtonText()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 1035
    iget v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->rightButtonText:I

    return v0
.end method

.method public getSubtitle()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 1019
    iget-boolean v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f0189

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTitle()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 1006
    iget v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->title:I

    return v0
.end method

.method public getTitleEN()Ljava/lang/String;
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->titleEN:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 1001
    iget v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->type:I

    return v0
.end method

.method public getWhiteIcon()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .line 996
    iget v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->whiteIcon:I

    return v0
.end method

.method public isCritical()Z
    .locals 1

    .line 1039
    iget-boolean v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->isCritical:Z

    return v0
.end method

.method public notificationId()I
    .locals 1

    .line 952
    iget v0, p0, Lcom/senseonics/util/TransmitterMessageCode;->codeID:I

    return v0
.end method
