.class synthetic Lcom/senseonics/db/DatabaseManager$1;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/db/DatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

.field static final synthetic $SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$TimeRange:[I

.field static final synthetic $SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1338
    invoke-static {}, Lcom/senseonics/util/Utils$EVENT_TYPE;->values()[Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v2}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v3}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->MEAL_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v4}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->INSULIN_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v5}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v6, Lcom/senseonics/util/Utils$EVENT_TYPE;->HEALTH_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v6}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->EXERCISE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v6, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v7

    const/16 v8, 0x8

    aput v8, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v7

    const/16 v8, 0x9

    aput v8, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v7

    const/16 v8, 0xa

    aput v8, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v7

    const/16 v8, 0xb

    aput v8, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v7

    const/16 v8, 0xc

    aput v8, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v7

    const/16 v8, 0xd

    aput v8, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v7

    const/16 v8, 0xe

    aput v8, v6, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v7

    const/16 v8, 0xf

    aput v8, v6, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v7

    const/16 v8, 0x10

    aput v8, v6, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v7

    const/16 v8, 0x11

    aput v8, v6, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v7

    const/16 v8, 0x12

    aput v8, v6, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->GROUP_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v7

    const/16 v8, 0x13

    aput v8, v6, v7
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 423
    :catch_12
    invoke-static {}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->values()[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    :try_start_13
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    sget-object v7, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v7}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    sget-object v7, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->LUNCH:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v7}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    sget-object v7, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SNACK:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v7}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    sget-object v7, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->DINNER:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v7}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    sget-object v7, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SLEEP:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v7}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v6, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    sget-object v7, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v7}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    .line 349
    :catch_18
    invoke-static {}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->values()[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$TimeRange:[I

    :try_start_19
    sget-object v5, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$TimeRange:[I

    sget-object v6, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour0_6:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-virtual {v6}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$TimeRange:[I

    sget-object v5, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour6_12:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-virtual {v5}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$TimeRange:[I

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour12_18:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$TimeRange:[I

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour18_24:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$TimeRange:[I

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
