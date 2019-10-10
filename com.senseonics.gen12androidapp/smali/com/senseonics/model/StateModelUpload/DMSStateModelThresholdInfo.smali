.class public Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;
.super Ljava/lang/Object;
.source "DMSStateModelThresholdInfo.java"


# instance fields
.field private AlarmHigh:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GlucoseAlarmHighThreshold"
    .end annotation
.end field

.field private AlarmLow:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GlucoseAlarmLowThreshold"
    .end annotation
.end field

.field private AlertHigh:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GlucoseAlertHighThreshold"
    .end annotation
.end field

.field private AlertLow:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GlucoseAlertLowThreshold"
    .end annotation
.end field

.field private DoNotDisturbFlag:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DoNotDisturbFlag"
    .end annotation
.end field

.field private GlucoseUnit:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GlucoseUnitOfMeasureID"
    .end annotation
.end field

.field private HighAlertFlag:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HighAlertFlag"
    .end annotation
.end field

.field private HighGlucoseRepeatIntervalDayTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HighGlucoseRepeatIntervalDayTime"
    .end annotation
.end field

.field private HighGlucoseRepeatIntervalNightTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HighGlucoseRepeatIntervalNightTime"
    .end annotation
.end field

.field private LowGlucoseRepeatIntervalDayTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LowGlucoseRepeatIntervalDayTime"
    .end annotation
.end field

.field private LowGlucoseRepeatIntervalNightTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LowGlucoseRepeatIntervalNightTime"
    .end annotation
.end field

.field private PredictiveAlertEnabled:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PredectiveFlag"
    .end annotation
.end field

.field private PredictiveHighFlag:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PredectiveHighFlag"
    .end annotation
.end field

.field private PredictiveHighMins:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PredectiveHighMins"
    .end annotation
.end field

.field private PredictiveLowFlag:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PredectiveLowFlag"
    .end annotation
.end field

.field private PredictiveLowMins:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PredectiveLowMins"
    .end annotation
.end field

.field private PredictiveMins:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PredectiveMins"
    .end annotation
.end field

.field private RateAlertEnabled:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RateFlag"
    .end annotation
.end field

.field private RateFallingFlag:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RateFallingFlag"
    .end annotation
.end field

.field private RateOfChangeFalling:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RateOfChangeFalling"
    .end annotation
.end field

.field private RateOfChangeRising:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RateOfChangeRising"
    .end annotation
.end field

.field private RateRisingFlag:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RateRisingFlag"
    .end annotation
.end field

.field private RateSlope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RateOfChange"
    .end annotation
.end field

.field private TargetHigh:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GlucoseHighThreshold"
    .end annotation
.end field

.field private TargetLow:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GlucoseLowThreshold"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    move-object v0, p0

    .line 83
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v1, p7

    .line 84
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->AlarmHigh:Ljava/lang/Integer;

    move-object v1, p6

    .line 85
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->AlarmLow:Ljava/lang/Integer;

    move-object v1, p5

    .line 86
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->AlertHigh:Ljava/lang/Integer;

    move-object v1, p4

    .line 87
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->AlertLow:Ljava/lang/Integer;

    move-object v1, p1

    .line 88
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->GlucoseUnit:Ljava/lang/Integer;

    move-object v1, p8

    .line 89
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->PredictiveAlertEnabled:Ljava/lang/Integer;

    move-object v1, p10

    .line 90
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->PredictiveMins:Ljava/lang/Integer;

    move-object v1, p9

    .line 91
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->RateAlertEnabled:Ljava/lang/Integer;

    move-object v1, p11

    .line 92
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->RateSlope:Ljava/lang/String;

    move-object v1, p3

    .line 93
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->TargetHigh:Ljava/lang/Integer;

    move-object v1, p2

    .line 94
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->TargetLow:Ljava/lang/Integer;

    move-object v1, p12

    .line 96
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->HighAlertFlag:Ljava/lang/Integer;

    move-object v1, p13

    .line 97
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->PredictiveHighFlag:Ljava/lang/Integer;

    move-object/from16 v1, p14

    .line 98
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->PredictiveLowFlag:Ljava/lang/Integer;

    move-object/from16 v1, p15

    .line 99
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->PredictiveHighMins:Ljava/lang/Integer;

    move-object/from16 v1, p16

    .line 100
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->PredictiveLowMins:Ljava/lang/Integer;

    move-object/from16 v1, p17

    .line 101
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->RateFallingFlag:Ljava/lang/Integer;

    move-object/from16 v1, p18

    .line 102
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->RateRisingFlag:Ljava/lang/Integer;

    move-object/from16 v1, p19

    .line 103
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->RateOfChangeFalling:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 104
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->RateOfChangeRising:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 105
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->LowGlucoseRepeatIntervalDayTime:Ljava/lang/Integer;

    move-object/from16 v1, p22

    .line 106
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->HighGlucoseRepeatIntervalDayTime:Ljava/lang/Integer;

    move-object/from16 v1, p23

    .line 107
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->LowGlucoseRepeatIntervalNightTime:Ljava/lang/Integer;

    move-object/from16 v1, p24

    .line 108
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->HighGlucoseRepeatIntervalNightTime:Ljava/lang/Integer;

    move-object/from16 v1, p25

    .line 109
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;->DoNotDisturbFlag:Ljava/lang/Integer;

    return-void
.end method
