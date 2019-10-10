.class synthetic Lcom/senseonics/model/TransmitterStateModel$2;
.super Ljava/lang/Object;
.source "TransmitterStateModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/model/TransmitterStateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

.field static final synthetic $SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1909
    invoke-static {}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->values()[Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_1:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

    sget-object v3, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_2:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v3}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

    sget-object v4, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_3:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v4}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

    sget-object v5, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_4:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v5}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

    sget-object v6, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_5:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v6}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

    sget-object v7, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_6:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v7}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

    sget-object v8, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_7:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v8}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

    sget-object v9, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_8:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {v9}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 1229
    :catch_7
    invoke-static {}, Lcom/senseonics/util/Utils$CAL_PHASE;->values()[Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    :try_start_8
    sget-object v8, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    sget-object v9, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v9}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    sget-object v8, Lcom/senseonics/util/Utils$CAL_PHASE;->DAILY_CALIBRATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v8}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v8

    aput v1, v0, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->SUSPICIOUS:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->UNKNOWN:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->DEBUG:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->DROPOUT:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method
