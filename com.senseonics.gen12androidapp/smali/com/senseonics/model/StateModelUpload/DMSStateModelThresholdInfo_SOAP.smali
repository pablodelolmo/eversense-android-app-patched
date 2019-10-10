.class public Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;
.super Ljava/lang/Object;
.source "DMSStateModelThresholdInfo_SOAP.java"


# instance fields
.field private AlarmHigh:I

.field private AlarmLow:I

.field private AlertHigh:I

.field private AlertLow:I

.field private DoNotDisturbFlag:Z

.field private GlucoseUnit:I

.field private HighAlertFlag:Z

.field private HighGlucoseRepeatIntervalDayTime:I

.field private HighGlucoseRepeatIntervalNightTime:I

.field private LowGlucoseRepeatIntervalDayTime:I

.field private LowGlucoseRepeatIntervalNightTime:I

.field private PredictiveAlertEnabled:Z

.field private PredictiveHighFlag:Z

.field private PredictiveHighMins:I

.field private PredictiveLowFlag:Z

.field private PredictiveLowMins:I

.field private PredictiveMins:I

.field private RateAlertEnabled:Z

.field private RateFallingFlag:Z

.field private RateOfChangeFalling:Ljava/lang/String;

.field private RateOfChangeRising:Ljava/lang/String;

.field private RateRisingFlag:Z

.field private RateSlope:Ljava/lang/String;

.field private TargetHigh:I

.field private TargetLow:I

.field private UserInfo:Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;


# direct methods
.method public constructor <init>(Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;IIIIIIIZZILjava/lang/String;ZZZIIZZLjava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 2

    move-object v0, p0

    .line 58
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move v1, p8

    .line 59
    iput v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->AlarmHigh:I

    move v1, p7

    .line 60
    iput v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->AlarmLow:I

    move v1, p6

    .line 61
    iput v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->AlertHigh:I

    move v1, p5

    .line 62
    iput v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->AlertLow:I

    move v1, p2

    .line 63
    iput v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->GlucoseUnit:I

    move v1, p9

    .line 64
    iput-boolean v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->PredictiveAlertEnabled:Z

    move v1, p11

    .line 65
    iput v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->PredictiveMins:I

    move v1, p10

    .line 66
    iput-boolean v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->RateAlertEnabled:Z

    move-object v1, p12

    .line 67
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->RateSlope:Ljava/lang/String;

    move v1, p4

    .line 68
    iput v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->TargetHigh:I

    move v1, p3

    .line 69
    iput v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->TargetLow:I

    move-object v1, p1

    .line 70
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->UserInfo:Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move v1, p13

    .line 71
    iput-boolean v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->HighAlertFlag:Z

    move/from16 v1, p14

    .line 72
    iput-boolean v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->PredictiveHighFlag:Z

    move/from16 v1, p15

    .line 73
    iput-boolean v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->PredictiveLowFlag:Z

    move/from16 v1, p16

    .line 74
    iput v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->PredictiveHighMins:I

    move/from16 v1, p17

    .line 75
    iput v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->PredictiveLowMins:I

    move/from16 v1, p18

    .line 76
    iput-boolean v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->RateFallingFlag:Z

    move/from16 v1, p19

    .line 77
    iput-boolean v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->RateRisingFlag:Z

    move-object/from16 v1, p20

    .line 78
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->RateOfChangeFalling:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 79
    iput-object v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->RateOfChangeRising:Ljava/lang/String;

    move/from16 v1, p22

    .line 80
    iput v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->LowGlucoseRepeatIntervalDayTime:I

    move/from16 v1, p23

    .line 81
    iput v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->HighGlucoseRepeatIntervalDayTime:I

    move/from16 v1, p24

    .line 82
    iput v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->LowGlucoseRepeatIntervalNightTime:I

    move/from16 v1, p25

    .line 83
    iput v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->HighGlucoseRepeatIntervalNightTime:I

    move/from16 v1, p26

    .line 84
    iput-boolean v1, v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->DoNotDisturbFlag:Z

    return-void
.end method


# virtual methods
.method public getAlarmHigh()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->AlarmHigh:I

    return v0
.end method

.method public getAlarmLow()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->AlarmLow:I

    return v0
.end method

.method public getAlertHigh()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->AlertHigh:I

    return v0
.end method

.method public getAlertLow()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->AlertLow:I

    return v0
.end method

.method public getGlucoseUnit()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->GlucoseUnit:I

    return v0
.end method

.method public getHighGlucoseRepeatIntervalDayTime()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->HighGlucoseRepeatIntervalDayTime:I

    return v0
.end method

.method public getHighGlucoseRepeatIntervalNightTime()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->HighGlucoseRepeatIntervalNightTime:I

    return v0
.end method

.method public getLowGlucoseRepeatIntervalDayTime()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->LowGlucoseRepeatIntervalDayTime:I

    return v0
.end method

.method public getLowGlucoseRepeatIntervalNightTime()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->LowGlucoseRepeatIntervalNightTime:I

    return v0
.end method

.method public getPredictiveHighMins()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->PredictiveHighMins:I

    return v0
.end method

.method public getPredictiveLowMins()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->PredictiveLowMins:I

    return v0
.end method

.method public getPredictiveMins()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->PredictiveMins:I

    return v0
.end method

.method public getRateOfChangeFalling()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->RateOfChangeFalling:Ljava/lang/String;

    return-object v0
.end method

.method public getRateOfChangeRising()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->RateOfChangeRising:Ljava/lang/String;

    return-object v0
.end method

.method public getRateSlope()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->RateSlope:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetHigh()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->TargetHigh:I

    return v0
.end method

.method public getTargetLow()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->TargetLow:I

    return v0
.end method

.method public getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->UserInfo:Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    return-object v0
.end method

.method public isDoNotDisturbFlag()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->DoNotDisturbFlag:Z

    return v0
.end method

.method public isHighAlertFlag()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->HighAlertFlag:Z

    return v0
.end method

.method public isPredictiveAlertEnabled()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->PredictiveAlertEnabled:Z

    return v0
.end method

.method public isPredictiveHighFlag()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->PredictiveHighFlag:Z

    return v0
.end method

.method public isPredictiveLowFlag()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->PredictiveLowFlag:Z

    return v0
.end method

.method public isRateAlertEnabled()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->RateAlertEnabled:Z

    return v0
.end method

.method public isRateFallingFlag()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->RateFallingFlag:Z

    return v0
.end method

.method public isRateRisingFlag()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->RateRisingFlag:Z

    return v0
.end method
