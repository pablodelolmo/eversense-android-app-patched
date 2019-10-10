.class public Lcom/senseonics/model/ReadCurrentTransmitterDateAndTimeParsedResponse;
.super Ljava/lang/Object;
.source "ReadCurrentTransmitterDateAndTimeParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# instance fields
.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/senseonics/model/ReadCurrentTransmitterDateAndTimeParsedResponse;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    return-void
.end method

.method private getTimeZoneOffset()[I
    .locals 4

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 128
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 132
    div-int/lit8 v1, v0, 0x3c

    .line 133
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x3c

    const/4 v2, 0x2

    .line 135
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2
.end method

.method private getTimeZoneOffsetSign(I)I
    .locals 0

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    :goto_0
    return p1
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 10

    .line 38
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getLastReadTransmitterDatetimeTimestamp()J

    move-result-wide v0

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v4, 0x0

    .line 43
    invoke-virtual {p2, v4, v5}, Lcom/senseonics/model/TransmitterStateModel;->setLastReadTransmitterDatetimeTimestamp(J)V

    .line 45
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v6

    .line 47
    sget-object v7, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v6, v7, :cond_0

    sget-object v7, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v6, v7, :cond_0

    return-void

    :cond_0
    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    return-void

    .line 59
    :cond_1
    sget v4, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    const/4 v5, 0x5

    mul-int/lit8 v4, v4, 0x5

    int-to-long v6, v4

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x2

    .line 68
    new-array v1, v0, [I

    const/4 v4, 0x1

    aget v6, p1, v4

    const/4 v7, 0x0

    aput v6, v1, v7

    aget v6, p1, v0

    aput v6, v1, v4

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v1

    .line 69
    new-array v6, v0, [I

    const/4 v8, 0x3

    aget v8, p1, v8

    aput v8, v6, v7

    const/4 v8, 0x4

    aget v8, p1, v8

    aput v8, v6, v4

    invoke-static {v6}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v6

    .line 70
    new-array v0, v0, [I

    aget v5, p1, v5

    aput v5, v0, v7

    const/4 v5, 0x6

    aget v5, p1, v5

    aput v5, v0, v4

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v0

    const/4 v5, 0x7

    .line 71
    aget p1, p1, v5

    .line 72
    invoke-static {v1, v6}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v2, v5

    .line 78
    invoke-virtual {p2, v5, v6}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterTime(J)V

    .line 81
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->noCalEventInSpecificTimeRange()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    .line 89
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v5, 0x2

    sget-wide v8, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long v8, v8, v5

    cmp-long p2, v1, v8

    if-lez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/model/ReadCurrentTransmitterDateAndTimeParsedResponse;->getTimeZoneOffset()[I

    move-result-object v1

    .line 98
    aget v2, v0, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    aget v3, v1, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-eq v2, v3, :cond_5

    const/4 p2, 0x1

    .line 103
    :cond_5
    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    aget v2, v1, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-eq v0, v2, :cond_6

    const/4 p2, 0x1

    .line 109
    :cond_6
    aget v0, v1, v7

    invoke-direct {p0, v0}, Lcom/senseonics/model/ReadCurrentTransmitterDateAndTimeParsedResponse;->getTimeZoneOffsetSign(I)I

    move-result v0

    if-eq p1, v0, :cond_7

    const/4 p2, 0x1

    :cond_7
    if-eqz p2, :cond_8

    .line 118
    iget-object p1, p0, Lcom/senseonics/model/ReadCurrentTransmitterDateAndTimeParsedResponse;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postSendCurrentDateAndTimeToTransmitter()V

    :cond_8
    return-void
.end method

.method public check([I)Z
    .locals 0

    .line 33
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadCurrentTrasmitterDateAndTimeResponseCorrect([I)Z

    move-result p1

    return p1
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/16 v0, 0x99

    return v0
.end method
