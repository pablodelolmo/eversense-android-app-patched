.class synthetic Lcom/senseonics/fragments/CalibrateFragment$10;
.super Ljava/lang/Object;
.source "CalibrateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/CalibrateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 521
    invoke-static {}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->values()[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    :try_start_0
    sget-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->READY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->NOT_ENOUGH_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->GLUCOSE_RATE_TOO_HIGH:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->TOO_SOON:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->NO_SENSOR_LINKED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->UNSUPPORTED_MODE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->WAITING_POST_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->LED_DISCONNECT_DETECTED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->REASON_UNKNOWN:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
