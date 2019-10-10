.class public Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;
.super Ljava/lang/Object;
.source "ReadSensorGlucoseAlertAndStatusParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# instance fields
.field private messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/MessageCoder;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const/16 v3, 0xb

    move-object/from16 v4, p1

    .line 34
    invoke-static {v4, v2, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v3

    .line 36
    invoke-virtual {v1, v3}, Lcom/senseonics/model/TransmitterStateModel;->setSensorGlucoseAlertStatus([I)V

    const/4 v4, 0x0

    .line 38
    aget v4, v3, v4

    .line 39
    aget v5, v3, v2

    const/4 v6, 0x2

    .line 40
    aget v6, v3, v6

    const/4 v7, 0x3

    .line 41
    aget v7, v3, v7

    const/4 v8, 0x4

    .line 42
    aget v8, v3, v8

    const/4 v9, 0x5

    .line 43
    aget v9, v3, v9

    const/4 v10, 0x6

    .line 44
    aget v10, v3, v10

    const/4 v11, 0x7

    .line 45
    aget v11, v3, v11

    const/16 v12, 0x8

    .line 46
    aget v12, v3, v12

    const/16 v13, 0x9

    .line 47
    aget v3, v3, v13

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    if-nez v10, :cond_0

    if-nez v11, :cond_0

    if-nez v12, :cond_0

    if-nez v3, :cond_0

    .line 59
    const-class v2, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "read alert: NO alarm active"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    return-void

    .line 66
    :cond_0
    sget-object v13, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    .line 68
    const-class v14, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEFORE read alert: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_1

    .line 71
    iget-object v2, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v12}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterStatusAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 73
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-virtual {v13}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v12

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v13

    :cond_1
    if-eqz v7, :cond_2

    .line 78
    iget-object v2, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 79
    invoke-virtual {v2, v7}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForPredictiveAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 81
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-virtual {v13}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v13

    :cond_2
    if-eqz v6, :cond_3

    .line 86
    iget-object v2, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 87
    invoke-virtual {v2, v6}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForRateAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 89
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-virtual {v13}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v13

    :cond_3
    if-eqz v3, :cond_4

    .line 94
    iget-object v2, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 95
    invoke-virtual {v2, v3}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterBatteryAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 97
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-virtual {v13}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v13

    :cond_4
    if-eqz v9, :cond_5

    .line 102
    iget-object v2, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 103
    invoke-virtual {v2, v9}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReadAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 105
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-virtual {v13}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v13

    :cond_5
    if-eqz v10, :cond_6

    .line 110
    iget-object v2, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 111
    invoke-virtual {v2, v10}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReplacementFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 113
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-virtual {v13}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v13

    :cond_6
    if-eqz v11, :cond_7

    .line 118
    iget-object v2, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 119
    invoke-virtual {v2, v11}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorCalibrationFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 121
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-virtual {v13}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v13

    :cond_7
    if-eqz v8, :cond_8

    .line 126
    iget-object v2, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 127
    invoke-virtual {v2, v8}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorHardwareAndAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 129
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-virtual {v13}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v13

    :cond_8
    if-eqz v4, :cond_9

    .line 134
    iget-object v2, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 135
    invoke-virtual {v2, v4}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForGlucoseLevelAlarmFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 137
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-virtual {v13}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v13

    :cond_9
    if-eqz v5, :cond_a

    .line 142
    iget-object v2, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 143
    invoke-virtual {v2, v5}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForGlucoseLevelAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 145
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-virtual {v13}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v13

    :cond_a
    if-eqz v10, :cond_b

    .line 151
    iget-object v2, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v10}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReplacementFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon7Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v2, v3, :cond_b

    .line 152
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 153
    invoke-virtual {v13}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v3

    if-lt v3, v2, :cond_b

    .line 154
    sget-object v13, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon7Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 158
    :cond_b
    invoke-virtual {v1, v13}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    return-void
.end method

.method public check([I)Z
    .locals 0

    .line 29
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadSensorGlucoseAlertsAndStatusResponseCorrect([I)Z

    move-result p1

    return p1
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/16 v0, 0x90

    return v0
.end method
