.class public Lcom/senseonics/gen12androidapp/MessageCoder;
.super Ljava/lang/Object;
.source "MessageCoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageCodeForGlucoseLevelAlarmFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 290
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 287
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public messageCodeForGlucoseLevelAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 306
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 302
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public messageCodeForPredictiveAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 22
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 18
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1
.end method

.method public messageCodeForRateAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 82
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 78
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public messageCodeForSensorCalibrationFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 210
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationExpiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 206
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationGracePeriodAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 228
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationNowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 224
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationSuspiciousAlert:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 220
    :cond_2
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationFailedAlert:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 214
    :cond_3
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationRequiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public messageCodeForSensorHardwareAndAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 248
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 244
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorErrorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 273
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm4:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 269
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm3:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 265
    :cond_2
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm2:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 261
    :cond_3
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm1:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 257
    :cond_4
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm0:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 253
    :cond_5
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorStability:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public messageCodeForSensorReadAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 127
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 123
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 147
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->ReaderTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 143
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorLowTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 139
    :cond_2
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 135
    :cond_3
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->MEPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 131
    :cond_4
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->HighAmbientLightAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public messageCodeForSensorReplacementFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 167
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon1Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 163
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 191
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon7Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 187
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon6Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 183
    :cond_2
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon5Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 179
    :cond_3
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon4Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 175
    :cond_4
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon3Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 171
    :cond_5
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon2Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public messageCodeForTransmitterBatteryAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 102
    :pswitch_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->VeryLowBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 98
    :pswitch_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->EmptyBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 107
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->LowBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public messageCodeForTransmitterStatusAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorOnHoldAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    .line 60
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAgedOutAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    .line 57
    :cond_2
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->VibrationCurrentAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 50
    :cond_4
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->InvalidClockAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    .line 46
    :cond_5
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    .line 39
    :cond_6
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_1
    return-object p1
.end method
