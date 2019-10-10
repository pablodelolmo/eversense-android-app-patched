.class synthetic Lcom/senseonics/events/EventUtils$3;
.super Ljava/lang/Object;
.source "EventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/events/EventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$senseonics$events$EventUtils$EXERCISE_INTENSITY:[I

.field static final synthetic $SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

.field static final synthetic $SwitchMap$com$senseonics$events$EventUtils$HEALTH_SEVERITY:[I

.field static final synthetic $SwitchMap$com$senseonics$events$EventUtils$INSULIN_TYPE:[I

.field static final synthetic $SwitchMap$com$senseonics$events$EventUtils$MEAL_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 286
    invoke-static {}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->values()[Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$EXERCISE_INTENSITY:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$EXERCISE_INTENSITY:[I

    sget-object v2, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->HIGH:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    invoke-virtual {v2}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$EXERCISE_INTENSITY:[I

    sget-object v3, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->LOW:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    invoke-virtual {v3}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$EXERCISE_INTENSITY:[I

    sget-object v4, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->MEDIUM:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    invoke-virtual {v4}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 270
    :catch_2
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->values()[Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_SEVERITY:[I

    :try_start_3
    sget-object v3, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_SEVERITY:[I

    sget-object v4, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->HIGH:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    invoke-virtual {v4}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_SEVERITY:[I

    sget-object v4, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->LOW:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    invoke-virtual {v4}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_SEVERITY:[I

    sget-object v4, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->MEDIUM:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    invoke-virtual {v4}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 225
    :catch_5
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->values()[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    :try_start_6
    sget-object v3, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v4, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ALCOHOL:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v4}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v4, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ALLERGY:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v4}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v4, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->COUGH_COLD:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v4}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/4 v3, 0x4

    :try_start_9
    sget-object v4, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v5, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->DIARRHEA:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v5}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/4 v4, 0x5

    :try_start_a
    sget-object v5, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v6, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->DIZZY:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v6}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/4 v5, 0x6

    :try_start_b
    sget-object v6, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v7, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->EARACHE:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v7}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/4 v6, 0x7

    :try_start_c
    sget-object v7, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v8, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->FEVER:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v8}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/16 v7, 0x8

    :try_start_d
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->FLU:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->HIGH_SYMPTOMS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v9

    const/16 v10, 0x9

    aput v10, v8, v9
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->INFECTION:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v9

    const/16 v10, 0xa

    aput v10, v8, v9
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->LOW_SYMPTOMS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v9

    const/16 v10, 0xb

    aput v10, v8, v9
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->MENSTRUAL_PERIOD:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v9

    const/16 v10, 0xc

    aput v10, v8, v9
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->NAUSEA_VOMITING:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v9

    const/16 v10, 0xd

    aput v10, v8, v9
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->NORMAL:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v9

    const/16 v10, 0xe

    aput v10, v8, v9
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->OTHER:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v9

    const/16 v10, 0xf

    aput v10, v8, v9
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->SORE_THROAT:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v9

    const/16 v10, 0x10

    aput v10, v8, v9
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->STRESS:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v9

    const/16 v10, 0x11

    aput v10, v8, v9
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$HEALTH_CONDITION:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->TIRED:Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v9

    const/16 v10, 0x12

    aput v10, v8, v9
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    .line 199
    :catch_17
    invoke-static {}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->values()[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$INSULIN_TYPE:[I

    :try_start_18
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$INSULIN_TYPE:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->INTERMEDIATE_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$INSULIN_TYPE:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->LONG_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$INSULIN_TYPE:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->MIXED_50_50:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$INSULIN_TYPE:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->MIXED_70_30:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v8, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$INSULIN_TYPE:[I

    sget-object v9, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->MIXED_75_25:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    invoke-virtual {v9}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v9

    aput v4, v8, v9
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v4, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$INSULIN_TYPE:[I

    sget-object v8, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->OTHER:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    invoke-virtual {v8}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v8

    aput v5, v4, v8
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v4, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$INSULIN_TYPE:[I

    sget-object v5, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->RAPID_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    invoke-virtual {v5}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v5

    aput v6, v4, v5
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v4, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$INSULIN_TYPE:[I

    sget-object v5, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->SHORT_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    invoke-virtual {v5}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v5

    aput v7, v4, v5
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 182
    :catch_1f
    invoke-static {}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->values()[Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$MEAL_TYPE:[I

    :try_start_20
    sget-object v4, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$MEAL_TYPE:[I

    sget-object v5, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->BREAKFAST:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    invoke-virtual {v5}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$MEAL_TYPE:[I

    sget-object v4, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->DINNER:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    invoke-virtual {v4}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$MEAL_TYPE:[I

    sget-object v1, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->LUNCH:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/senseonics/events/EventUtils$3;->$SwitchMap$com$senseonics$events$EventUtils$MEAL_TYPE:[I

    sget-object v1, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->SNACK:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    return-void
.end method
