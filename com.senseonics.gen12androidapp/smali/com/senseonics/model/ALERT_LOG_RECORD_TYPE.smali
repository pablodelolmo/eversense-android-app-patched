.class public enum Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;
.super Ljava/lang/Enum;
.source "ALERT_LOG_RECORD_TYPE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum FALLING_RATE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum FALLING_RATE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum HIGH_GLUCOSE_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum HIGH_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum HIGH_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum HIGH_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum LOW_GLUCOSE_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum LOW_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum LOW_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum LOW_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum OUT_OF_RANGE_HIGH_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum OUT_OF_RANGE_HIGH_GLUCOSE_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum OUT_OF_RANGE_LOW_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum OUT_OF_RANGE_LOW_GLUCOSE_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum PREDICTIVE_HIGH_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum PREDICTIVE_HIGH_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum PREDICTIVE_LOW_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum PREDICTIVE_LOW_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum RISING_RATE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum RISING_RATE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_EXPIRED_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_EXPIRED_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_NOTIFICATION_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_NOTIFICATION_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_NOW_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_NOW_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;


# instance fields
.field private typeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 12
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$1;

    const-string v1, "LOW_GLUCOSE_ALARM_ASSERTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 19
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$2;

    const-string v1, "HIGH_GLUCOSE_ALARM_ASSERTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 26
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$3;

    const-string v1, "LOW_GLUCOSE_ALERT_ASSERTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 33
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$4;

    const-string v1, "HIGH_GLUCOSE_ALERT_ASSERTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 40
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$5;

    const-string v1, "FALLING_RATE_ALERT_ASSERTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->FALLING_RATE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 48
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$6;

    const-string v1, "RISING_RATE_ALERT_ASSERTED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$6;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->RISING_RATE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 56
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$7;

    const-string v1, "PREDICTIVE_LOW_GLUCOSE_ALERT_ASSERTED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_LOW_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 64
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$8;

    const-string v1, "PREDICTIVE_HIGH_GLUCOSE_ALERT_ASSERTED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$8;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_HIGH_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 72
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$9;

    const-string v1, "SENSOR_CALIBRATION_NOW_ALARM_ASSERTED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$9;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOW_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 78
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$10;

    const-string v1, "SENSOR_CALIBRATION_NOTIFICATION_ASSERTED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$10;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOTIFICATION_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 85
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$11;

    const-string v1, "SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_ASSERTED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$11;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 92
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$12;

    const-string v1, "SENSOR_CALIBRATION_EXPIRED_ALARM_ASSERTED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$12;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_EXPIRED_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 99
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$13;

    const-string v1, "OUT_OF_RANGE_LOW_GLUCOSE_ASSERTED"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$13;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_LOW_GLUCOSE_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 107
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$14;

    const-string v1, "OUT_OF_RANGE_HIGH_GLUCOSE_ASSERTED"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$14;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_HIGH_GLUCOSE_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 117
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v1, "LOW_GLUCOSE_ALARM_CLEARED"

    const/16 v15, 0xe

    const/16 v14, 0xf0

    invoke-direct {v0, v1, v15, v14}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 118
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v1, "HIGH_GLUCOSE_ALARM_CLEARED"

    const/16 v14, 0xf

    const/16 v15, 0xf1

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 119
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v1, "LOW_GLUCOSE_ALERT_CLEARED"

    const/16 v14, 0x10

    const/16 v15, 0xf2

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 120
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v1, "HIGH_GLUCOSE_ALERT_CLEARED"

    const/16 v14, 0x11

    const/16 v15, 0xf3

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 121
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v1, "FALLING_RATE_ALERT_CLEARED"

    const/16 v14, 0x12

    const/16 v15, 0xf4

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->FALLING_RATE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 122
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v1, "RISING_RATE_ALERT_CLEARED"

    const/16 v14, 0x13

    const/16 v15, 0xf5

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->RISING_RATE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 123
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v1, "PREDICTIVE_LOW_GLUCOSE_ALERT_CLEARED"

    const/16 v14, 0x14

    const/16 v15, 0xf6

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_LOW_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 124
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v1, "PREDICTIVE_HIGH_GLUCOSE_ALERT_CLEARED"

    const/16 v14, 0x15

    const/16 v15, 0xf7

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_HIGH_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 125
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v1, "SENSOR_CALIBRATION_NOW_ALARM_CLEARED"

    const/16 v14, 0x16

    const/16 v15, 0xf8

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOW_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 126
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v1, "SENSOR_CALIBRATION_NOTIFICATION_CLEARED"

    const/16 v14, 0x17

    const/16 v15, 0xf9

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOTIFICATION_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 127
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v1, "SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_CLEARED"

    const/16 v14, 0x18

    const/16 v15, 0xfa

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 128
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v1, "SENSOR_CALIBRATION_EXPIRED_ALARM_CLEARED"

    const/16 v14, 0x19

    const/16 v15, 0xfb

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_EXPIRED_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 129
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v1, "OUT_OF_RANGE_LOW_GLUCOSE_ALARM_CLEARED"

    const/16 v14, 0x1a

    const/16 v15, 0xfc

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_LOW_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 130
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v1, "OUT_OF_RANGE_HIGH_GLUCOSE_ALARM_CLEARED"

    const/16 v14, 0x1b

    const/16 v15, 0xfd

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_HIGH_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v0, 0x1c

    .line 11
    new-array v0, v0, [Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->FALLING_RATE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->RISING_RATE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_LOW_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_HIGH_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    aput-object v1, v0, v9

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOW_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    aput-object v1, v0, v10

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOTIFICATION_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    aput-object v1, v0, v11

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    aput-object v1, v0, v12

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_EXPIRED_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    aput-object v1, v0, v13

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_LOW_GLUCOSE_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_HIGH_GLUCOSE_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->FALLING_RATE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->RISING_RATE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_LOW_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_HIGH_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOW_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOTIFICATION_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_EXPIRED_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_LOW_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_HIGH_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->$VALUES:[Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput p3, p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->typeCode:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IFIIZ)V
    .locals 0

    .line 11
    invoke-static/range {p0 .. p8}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->saveAlert(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IFIIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;ILjava/util/Calendar;Z)V
    .locals 0

    .line 11
    invoke-static/range {p0 .. p5}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->saveNotification(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;ILjava/util/Calendar;Z)V

    return-void
.end method

.method public static findBy(I)Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;
    .locals 5

    .line 176
    invoke-static {}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->values()[Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 177
    iget v4, v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->typeCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Sensor Glucose Alert Log Record Type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getGlucoseValue(I)I
    .locals 1

    .line 189
    sget v0, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MIN:I

    if-lt p0, v0, :cond_0

    sget v0, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MAX:I

    if-gt p0, v0, :cond_0

    return p0

    .line 192
    :cond_0
    sget p0, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    return p0
.end method

.method private static saveAlert(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IFIIZ)V
    .locals 6

    .line 145
    invoke-static {p4}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getGlucoseValue(I)I

    move-result v3

    .line 146
    new-instance p4, Lcom/senseonics/events/AlertEventPoint;

    sget-object v5, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->SENSOR_GLUCOSE:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;Ljava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    int-to-long p1, p7

    .line 148
    invoke-virtual {p4, p1, p2}, Lcom/senseonics/events/AlertEventPoint;->setRecordNumber(J)V

    const/4 p1, 0x0

    .line 150
    invoke-virtual {p4, p1}, Lcom/senseonics/events/AlertEventPoint;->setRateValue(F)V

    const/4 p1, 0x0

    .line 151
    invoke-virtual {p4, p1}, Lcom/senseonics/events/AlertEventPoint;->setPredictiveMinutes(I)V

    .line 152
    invoke-virtual {p4, p8}, Lcom/senseonics/events/AlertEventPoint;->setEventHidden(Z)V

    const/4 p1, 0x1

    .line 153
    invoke-virtual {p0, p4, p1}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    return-void
.end method

.method private static saveNotification(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;ILjava/util/Calendar;Z)V
    .locals 2

    .line 159
    invoke-static {p3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getGlucoseValue(I)I

    move-result p3

    .line 160
    new-instance v0, Lcom/senseonics/events/EventPoint;

    .line 161
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    invoke-direct {v0, p4, p3, v1}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 162
    invoke-virtual {v0, p2}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    const-wide/16 p2, -0x1

    .line 164
    invoke-virtual {v0, p2, p3}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 165
    invoke-virtual {v0, p5}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    .line 167
    sget-object p2, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p2, :cond_0

    .line 168
    sget p1, Lcom/senseonics/util/Utils;->currentUnknownErrorCode:I

    invoke-virtual {v0, p1}, Lcom/senseonics/events/EventPoint;->setUnknownErrorCode(I)V

    :cond_0
    const/4 p1, 0x1

    .line 171
    invoke-virtual {p0, v0, p1}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;
    .locals 1

    .line 11
    const-class v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;
    .locals 1

    .line 11
    sget-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->$VALUES:[Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    return-object v0
.end method


# virtual methods
.method public getTypeCode()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->typeCode:I

    return v0
.end method

.method public save(Lcom/senseonics/db/DatabaseManager;ILjava/util/Calendar;III)V
    .locals 0

    return-void
.end method
