.class public Lcom/senseonics/bluetoothle/BleHealthMonitor;
.super Ljava/lang/Object;
.source "BleHealthMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final NADA_TEXT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private aTxName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private aveDuration:[J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private aveKeepAlive:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private currentStateIndex:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private keepAliveCount:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private keepAliveTimeTicker:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private maxDuration:[J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private maxKeepAlive:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private minDuration:[J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private minKeepAlive:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mobileId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private startTime:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stateChangeCount:[J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stateTimeTicker:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private txSerialNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Landroid/content/Context;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "1A"

    .line 32
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->VERSION:Ljava/lang/String;

    .line 33
    const-class p1, Lcom/senseonics/bluetoothle/BleHealthMonitor;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->TAG:Ljava/lang/String;

    const-string p1, "nada"

    .line 34
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->NADA_TEXT:Ljava/lang/String;

    return-void
.end method

.method private init(Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    .line 97
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateIndex:I

    .line 98
    iput-object p2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->mobileId:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aTxName:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->txSerialNo:Ljava/lang/String;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->startTime:J

    .line 103
    iget-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->startTime:J

    iput-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->stateTimeTicker:J

    .line 104
    iget-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->startTime:J

    iput-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->keepAliveTimeTicker:J

    const/4 p1, 0x6

    .line 106
    new-array p2, p1, [J

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->stateChangeCount:[J

    .line 107
    new-array p2, p1, [J

    fill-array-data p2, :array_1

    iput-object p2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->minDuration:[J

    .line 108
    new-array p2, p1, [J

    fill-array-data p2, :array_2

    iput-object p2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aveDuration:[J

    .line 109
    new-array p1, p1, [J

    fill-array-data p1, :array_3

    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->maxDuration:[J

    const-wide/16 p1, 0x0

    .line 111
    iput-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->keepAliveCount:J

    .line 112
    iput-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->minKeepAlive:J

    .line 113
    iput-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aveKeepAlive:J

    .line 114
    iput-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->maxKeepAlive:J

    const/4 p1, 0x1

    return p1

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private setTxName(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aTxName:Ljava/lang/String;

    return-void
.end method

.method private setTxSerialNo(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->txSerialNo:Ljava/lang/String;

    return-void
.end method

.method private tallyKeepAlive()Z
    .locals 8

    .line 186
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    if-ne v0, v1, :cond_4

    .line 188
    iget-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->keepAliveTimeTicker:J

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->keepAliveTimeTicker:J

    .line 190
    iget-wide v2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->keepAliveTimeTicker:J

    sub-long/2addr v2, v0

    .line 192
    iget-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->minKeepAlive:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->minKeepAlive:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 193
    :cond_0
    iput-wide v2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->minKeepAlive:J

    .line 196
    :cond_1
    iget-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->maxKeepAlive:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 197
    iput-wide v2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->maxKeepAlive:J

    .line 200
    :cond_2
    iget-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->keepAliveCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->keepAliveCount:J

    .line 202
    iget-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->keepAliveCount:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 204
    iget-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aveKeepAlive:J

    iget-wide v6, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->keepAliveCount:J

    sub-long/2addr v6, v4

    mul-long v0, v0, v6

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->keepAliveCount:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aveKeepAlive:J

    goto :goto_0

    .line 206
    :cond_3
    iput-wide v2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aveKeepAlive:J

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private toBleState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;
    .locals 1

    .line 233
    sget-object v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$1;->$SwitchMap$com$senseonics$bluetoothle$Transmitter$CONNECTION_STATE:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 248
    sget-object p1, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    return-object p1

    .line 245
    :pswitch_0
    sget-object p1, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    return-object p1

    .line 243
    :pswitch_1
    sget-object p1, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->SEARCHING:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    return-object p1

    .line 241
    :pswitch_2
    sget-object p1, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->NEGOTIATING:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    return-object p1

    .line 239
    :pswitch_3
    sget-object p1, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->CONNECTING:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    return-object p1

    .line 237
    :pswitch_4
    sget-object p1, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    return-object p1

    .line 235
    :pswitch_5
    sget-object p1, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toJson()Ljava/lang/String;
    .locals 1

    .line 292
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 293
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toTransmitterState(Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;)Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;
    .locals 1

    .line 253
    sget-object v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$1;->$SwitchMap$com$senseonics$bluetoothle$BleHealthMonitor$BLE_CONNECTION_STATE:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 268
    sget-object p1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object p1

    .line 265
    :pswitch_0
    sget-object p1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object p1

    .line 263
    :pswitch_1
    sget-object p1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object p1

    .line 261
    :pswitch_2
    sget-object p1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->NEGOTIATING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object p1

    .line 259
    :pswitch_3
    sget-object p1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object p1

    .line 257
    :pswitch_4
    sget-object p1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->SEARCHING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object p1

    .line 255
    :pswitch_5
    sget-object p1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transitionState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)Z
    .locals 12

    .line 150
    iget-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->stateTimeTicker:J

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->stateTimeTicker:J

    .line 152
    iget-wide v2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->stateTimeTicker:J

    sub-long/2addr v2, v0

    .line 154
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->minDuration:[J

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v1

    aget-wide v4, v0, v1

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->minDuration:[J

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v1

    aget-wide v4, v0, v1

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->minDuration:[J

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v1

    aput-wide v2, v0, v1

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->maxDuration:[J

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v1

    aget-wide v4, v0, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->maxDuration:[J

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v1

    aput-wide v2, v0, v1

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->stateChangeCount:[J

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v1

    aget-wide v4, v0, v1

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    aput-wide v4, v0, v1

    .line 164
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->stateChangeCount:[J

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v1

    aget-wide v4, v0, v1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aveDuration:[J

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v1

    iget-object v4, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aveDuration:[J

    iget-object v5, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-virtual {v5}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v5

    aget-wide v8, v4, v5

    iget-object v4, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->stateChangeCount:[J

    iget-object v5, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-virtual {v5}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v5

    aget-wide v10, v4, v5

    sub-long/2addr v10, v6

    mul-long v8, v8, v10

    add-long/2addr v8, v2

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->stateChangeCount:[J

    iget-object v3, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    .line 167
    invoke-virtual {v3}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v3

    aget-wide v3, v2, v3

    div-long/2addr v8, v3

    aput-wide v8, v0, v1

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aveDuration:[J

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v1

    aput-wide v2, v0, v1

    .line 172
    :goto_0
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/BleHealthMonitor;->toBleState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    .line 173
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateIndex:I

    .line 175
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    sget-object v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    if-ne p1, v0, :cond_4

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->keepAliveTimeTicker:J

    :cond_4
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 3

    .line 120
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/BleHealthMonitor;->transitionState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)Z

    .line 122
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " BLE health connection state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " recognized."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/KeepAliveReceivedEvent;)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLE health KeepAliveReceivedEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BleHealthMonitor;->tallyKeepAlive()Z

    return-void
.end method

.method setTxIdentifiers()Ljava/lang/Boolean;
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->fetchTxNameFromModel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/BleHealthMonitor;->setTxName(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->fetchTxSerialNoFromModel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/BleHealthMonitor;->setTxSerialNo(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLE health TX name, ID ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v2}, Lcom/senseonics/util/AccountConstants;->fetchTxNameFromModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v2}, Lcom/senseonics/util/AccountConstants;->fetchTxSerialNoFromModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aTxName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aTxName:Ljava/lang/String;

    const-string v1, "nada"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 136
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 135
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method snapshot()Ljava/lang/String;
    .locals 5

    .line 221
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BleHealthMonitor;->setTxIdentifiers()Ljava/lang/Boolean;

    .line 223
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/BleHealthMonitor;->toTransmitterState(Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;)Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/BleHealthMonitor;->transitionState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)Z

    .line 225
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BleHealthMonitor;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->mobileId:Ljava/lang/String;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aTxName:Ljava/lang/String;

    iget-object v4, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->txSerialNo:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/senseonics/bluetoothle/BleHealthMonitor;->init(Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\nBLE health->\ncurrent state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateEnum:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    .line 276
    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->currentStateIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")\nmobile id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->mobileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ntx name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aTxName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ntx serial # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->txSerialNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nstart time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", current duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->stateTimeTicker:J

    iget-wide v3, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nkeep alive count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->keepAliveCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", min "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->minKeepAlive:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ave "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aveKeepAlive:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", max "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->maxKeepAlive:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->values()[Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v4}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " count "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->stateChangeCount:[J

    invoke-virtual {v4}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v6

    aget-wide v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", min "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->minDuration:[J

    .line 284
    invoke-virtual {v4}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v6

    aget-wide v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", ave "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->aveDuration:[J

    invoke-virtual {v4}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v6

    aget-wide v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", max "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthMonitor;->maxDuration:[J

    invoke-virtual {v4}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->ordinal()I

    move-result v4

    aget-wide v6, v0, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
