.class synthetic Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$1;
.super Ljava/lang/Object;
.source "PrepareSyncingRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$senseonics$bluetoothle$PrepareSyncingRequestTask$SYNC_DATA_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 226
    invoke-static {}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->values()[Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$1;->$SwitchMap$com$senseonics$bluetoothle$PrepareSyncingRequestTask$SYNC_DATA_TYPE:[I

    :try_start_0
    sget-object v0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$1;->$SwitchMap$com$senseonics$bluetoothle$PrepareSyncingRequestTask$SYNC_DATA_TYPE:[I

    sget-object v1, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->READ_SENSOR_GLUCOSE:Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$1;->$SwitchMap$com$senseonics$bluetoothle$PrepareSyncingRequestTask$SYNC_DATA_TYPE:[I

    sget-object v1, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->READ_ALERTS:Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$1;->$SwitchMap$com$senseonics$bluetoothle$PrepareSyncingRequestTask$SYNC_DATA_TYPE:[I

    sget-object v1, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->READ_BLOOD_GLUCOSE:Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
