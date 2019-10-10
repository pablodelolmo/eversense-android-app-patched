.class synthetic Lcom/senseonics/util/Utils$3;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

.field static final synthetic $SwitchMap$com$senseonics$model$SIGNAL_STRENGTH:[I

.field static final synthetic $SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 986
    invoke-static {}, Lcom/senseonics/model/BATTERY_LEVEL;->values()[Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    sget-object v2, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v2}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    sget-object v3, Lcom/senseonics/model/BATTERY_LEVEL;->BL_0:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v3}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    sget-object v4, Lcom/senseonics/model/BATTERY_LEVEL;->BL_5:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v4}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    sget-object v5, Lcom/senseonics/model/BATTERY_LEVEL;->BL_10:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v5}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    sget-object v6, Lcom/senseonics/model/BATTERY_LEVEL;->BL_25:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v6}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    sget-object v7, Lcom/senseonics/model/BATTERY_LEVEL;->BL_35:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v7}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    sget-object v8, Lcom/senseonics/model/BATTERY_LEVEL;->BL_45:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v8}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    sget-object v9, Lcom/senseonics/model/BATTERY_LEVEL;->BL_55:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v9}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    sget-object v10, Lcom/senseonics/model/BATTERY_LEVEL;->BL_65:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v10}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v9, 0xa

    :try_start_9
    sget-object v10, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    sget-object v11, Lcom/senseonics/model/BATTERY_LEVEL;->BL_75:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v11}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v10, 0xb

    :try_start_a
    sget-object v11, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    sget-object v12, Lcom/senseonics/model/BATTERY_LEVEL;->BL_85:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v12}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v11, 0xc

    :try_start_b
    sget-object v12, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    sget-object v13, Lcom/senseonics/model/BATTERY_LEVEL;->BL_95:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v13}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v12, 0xd

    :try_start_c
    sget-object v13, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    sget-object v14, Lcom/senseonics/model/BATTERY_LEVEL;->BL_100:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v14}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 964
    :catch_c
    invoke-static {}, Lcom/senseonics/model/SIGNAL_STRENGTH;->values()[Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v13

    array-length v13, v13

    new-array v13, v13, [I

    sput-object v13, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$SIGNAL_STRENGTH:[I

    :try_start_d
    sget-object v13, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$SIGNAL_STRENGTH:[I

    sget-object v14, Lcom/senseonics/model/SIGNAL_STRENGTH;->EXCELLENT:Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v14}, Lcom/senseonics/model/SIGNAL_STRENGTH;->ordinal()I

    move-result v14

    aput v0, v13, v14
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v13, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$SIGNAL_STRENGTH:[I

    sget-object v14, Lcom/senseonics/model/SIGNAL_STRENGTH;->GOOD:Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v14}, Lcom/senseonics/model/SIGNAL_STRENGTH;->ordinal()I

    move-result v14

    aput v1, v13, v14
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v13, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$SIGNAL_STRENGTH:[I

    sget-object v14, Lcom/senseonics/model/SIGNAL_STRENGTH;->LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v14}, Lcom/senseonics/model/SIGNAL_STRENGTH;->ordinal()I

    move-result v14

    aput v2, v13, v14
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v13, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$SIGNAL_STRENGTH:[I

    sget-object v14, Lcom/senseonics/model/SIGNAL_STRENGTH;->VERY_LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v14}, Lcom/senseonics/model/SIGNAL_STRENGTH;->ordinal()I

    move-result v14

    aput v3, v13, v14
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v13, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$SIGNAL_STRENGTH:[I

    sget-object v14, Lcom/senseonics/model/SIGNAL_STRENGTH;->POOR:Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v14}, Lcom/senseonics/model/SIGNAL_STRENGTH;->ordinal()I

    move-result v14

    aput v4, v13, v14
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v13, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$model$SIGNAL_STRENGTH:[I

    sget-object v14, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v14}, Lcom/senseonics/model/SIGNAL_STRENGTH;->ordinal()I

    move-result v14

    aput v5, v13, v14
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 785
    :catch_12
    invoke-static {}, Lcom/senseonics/util/Utils$EVENT_TYPE;->values()[Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v13

    array-length v13, v13

    new-array v13, v13, [I

    sput-object v13, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    :try_start_13
    sget-object v13, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v14, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v14}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v14

    aput v0, v13, v14
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v13, Lcom/senseonics/util/Utils$EVENT_TYPE;->GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v13}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v13

    aput v1, v0, v13
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->MEAL_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->INSULIN_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->HEALTH_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->EXERCISE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lcom/senseonics/util/Utils$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method
